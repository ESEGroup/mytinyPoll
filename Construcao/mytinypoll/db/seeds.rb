# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create!(name: "Administrador",
                email: "admin@admin.com",
                password: "admin123",
                password_confirmation: "admin123",
                cpf: "21750859378",
                fb_token: '0'
            )
            
admin.add_role :creator
admin.add_role :manager

hguimaraes = User.create!(name: "Heitor Rodrigues Guimarães",
                email: "hguimaraes@poli.ufrj.br",
                password: "123456",
                password_confirmation: "123456",
                cpf: "15434904761",
                fb_token: '1'
            )
            
hguimaraes.add_role :creator

testUser = User.create!(name: "John Tester",
                email: "john@test.com",
                password: "abc123",
                password_confirmation: "abc123",
                cpf: "69967423587",
                fb_token: '0'
           )
           
=begin
poll = ::Poll::Poll.new({"title" => "Hello TinyPoll 02", "privacy" => "0"})
poll.save
=end