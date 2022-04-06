class Calculadora
    def initialize(value1, value2) 
        @value1 = value1
        @value2 = value2
    end
  
    def soma 
        @value1 + @value2
    end
  
    def subtracao
        @value1 - @value2
    end
  
    def divisao
        @value1 / @value2
    end
  
    def multiplicacao
        @value1 * @value2
    end
    
    def porcentagem
        (@value1 * @value2) / 100
    end
end
  
print "Qual operação matemática você deseja realizar? Digite: \n '1' para soma \n '2' para subtração \n '3' para divisão\n '4' para multiplicação \n '5' para porcentagem. Primeiro valor porcentagem e segundo o valor do número. \n Por exemplo: 6% (6 = primeiro valor) de 100 (segundo valor): "
operacao = gets.chomp.to_i

print "Insira o primeiro número: "
value1 = gets.chomp()

if value1 =~ /^-?[0-9]+$/
    puts "Informação válida."
else  
    puts "ERRO: você não forneceu um número. Calculadora desligando."
    exit(1)   
end

print "Insira o segundo número: "
value2 = gets.chomp()

if value2 =~ /^-?[0-9]+$/
    puts "Informação válida."
else  
    puts "ERRO: você não forneceu um número. Calculadora desligando."
    exit(1)   
end

case operacao
    when 1
        operacao = :soma
    when 2
        operacao = :subtracao
    when 3
        operacao = :divisao
    when 4
        operacao = :multiplicacao
    when 5
        operacao = :porcentagem
    else
        puts "ERRO: Você não forneceu a operação possível a ser realizada."
        exit(1)
end
  
calculadora = Calculadora.new(value1.to_f, value2.to_f)
resultado = calculadora.public_send(operacao)
  
puts "Resultado da #{operacao} é: #{resultado}"