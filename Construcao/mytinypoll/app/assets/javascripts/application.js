// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require materialize-sprockets
//= require materialize/extras/nouislider

(function($){
  $(function(){

    $('.button-collapse').sideNav();
    
    // Make the page always start in top, even with renders inside
    $("html,body").animate({ scrollTop: 0 }, "quick");
    
    // Modal settings of unauthhome
  	$(document).on('page:change', function() {
      // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
      	$('.modal-trigger').leanModal();
      	
      	// Activate dropdown
      	$(".dropdown-button").dropdown();
      	
      	// Materialize Tabs
      	$('ul.tabs').tabs();
      	
      	$('.datepicker').pickadate({
          selectMonths: true,
          selectYears: 15,
          format: 'dd/mm/yyyy',
          labelMonthNext: 'Próximo mês',
          labelMonthPrev: 'Mês anterior',
          labelMonthSelect: 'Selecione um mês',
          labelYearSelect: 'Selecione um ano',
          monthsFull: [ 'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro' ],
          monthsShort: [ 'Jan', 'Fev', 'Mar', 'Abr', 'Maio', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez' ],
          weekdaysFull: [ 'Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado' ],
          weekdaysShort: [ 'Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab' ],
          weekdaysLetter: [ 'D', 'S', 'T', 'Q', 'Q', 'S', 'S' ],
          today: 'Hoje',
          clear: 'Limpar',
          close: 'Fechar'
        });
    });
  }); // end of document ready
})(jQuery); // end of jQuery name space