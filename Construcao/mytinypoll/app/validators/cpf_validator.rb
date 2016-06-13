class CpfValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        unless check_cpf(value)
            record.errors[attribute] << (options[:message] || "Inválido")
        end
    end
  
    def check_cpf(cpf)
        puts "#{cpf}"
        return false if cpf.nil?
        if cpf.length == 11
            s_cpf = String.try_convert(cpf)
            sum = 10*s_cpf[0].to_i+9*s_cpf[1].to_i+8*s_cpf[2].to_i+7*s_cpf[3].to_i+
                    6*s_cpf[4].to_i+5*s_cpf[5].to_i+4*s_cpf[6].to_i+3*s_cpf[7].to_i+2*s_cpf[8].to_i
            result = (10*sum)%11
            if result == s_cpf[9].to_i
                sum = s_cpf[0].to_i*11+s_cpf[1].to_i*10+s_cpf[2].to_i*9+s_cpf[3].to_i*8+s_cpf[4].to_i*7+
                        s_cpf[5].to_i*6+s_cpf[6].to_i*5+s_cpf[7].to_i*4+s_cpf[8].to_i*3+s_cpf[9].to_i*2
                result = (10*sum)%11
                if result == s_cpf[10].to_i # CPF validado
                    puts "#{cpf}"
                    return true 
                end
            end
        end
        return false # CPF invalidado
    end
  
end

