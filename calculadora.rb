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
        if @value2 != 0
            @value1 / @value2
        else
            puts "ERRO: divisão por zero não permitida. Calculadora desligando."
            exit
        end
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
    if operacao != 1 && operacao != 2 && operacao != 3 && operacao != 4 && operacao != 5
        puts "ERRO: operação inválida. Calculadora desligando."
        exit
    end

print "Insira o primeiro número: "
value1 = gets.chomp()

unless value1 =~ /^-?[0-9]+$/
    puts "ERRO: você não forneceu um número válido. Calculadora desligando."
    exit
end

print "Insira o segundo número: "
value2 = gets.chomp()

unless value2 =~ /^-?[0-9]+$/
    puts "ERRO: você não forneceu um número válido. Calculadora desligando."
    exit 
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
end

calculadora = Calculadora.new(value1.to_f, value2.to_f)

resultado = calculadora.public_send(operacao)
    if operacao != :porcentagem
        puts "Resultado da #{operacao} é: #{resultado}."
    else 
        puts "#{value1}% de #{value2} é: #{resultado}."
    end