print "Informe seu Whats: "
telefone = gets.chomp
primeiro_parenteses = /[^0-9]/.match(telefone)
segundo_parenteses = /[^0-9]/.match(primeiro_parenteses.post_match)
if segundo_parenteses.pre_match.length == 2
    tem_nove_a_mais = /\S/.match(segundo_parenteses.post_match)
    tem_nove_a_mais_espaco = /\s/.match(tem_nove_a_mais.post_match)
    if tem_nove_a_mais_espaco.length == 1
        primeiros_numeros = /\D/.match(tem_nove_a_mais_espaco.post_match)
        if primeiros_numeros.pre_match.length == 4 && primeiros_numeros.post_match.length == 4
            puts "WHATSAPP VALIDO"
        else
            puts "VERIFIQUE OS NUMEROS ANTES E DEPOIS DO -"
        end
    else
     puts "FALTA O 9 A MAIS"   
    else
        puts "Numero invalido"
    end
else
    puts "FALTA O DDD"
end
# (67) 9 9124-3938