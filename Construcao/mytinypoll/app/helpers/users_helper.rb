module UsersHelper
    
    def check_cpf(cpf=nil)
        return false if cpf.nil?
        winvalid= %w{12345678909 11111111111 22222222222 33333333333 44444444444 55555555555 66666666666 77777777777 88888888888 99999999999 00000000000}
        wcpf = cpf.scan #/[0-9]/
        if cpf.length == 11
            unless winvalid.member?(wcpf.join)
                wcpf = wcpf.collect{|x| x.to_i}
                wsum = 10*wcpf[0]+9*wcpf[1]+8*wcpf[2]+7*wcpf[3]+6*wcpf[4]+5*wcpf[5]+4*wcpf[6]+3*wcpf[7]+2*wcpf[8]
                wsum = wsum - (11 * (wsum/11))
                wresult = (wsum == 0 or wsum == 1) ? 0 : 11 - wsum
                if wresult == wcpf[9]
                    wsum = wcpf[0]*11+wcpf[1]*10+wcpf[2]*9+wcpf[3]*8+wcpf[4]*7+wcpf[5]*6+wcpf[6]*5+wcpf[7]*4+wcpf[8]*3+wcpf[9]*2
                    wsum = wsum - (11 * (wsum/11))
                    wnewresult = (wsum == 0 or wsum == 1) ? 0 : 11 - wsum
                    if wnewresult == wcpf[10] # CPF validado
                        return true 
                    else
                        return false # CPF invalidado 
                    end
                end
            end
        end
        return false # CPF invalidado
    end
    
end
