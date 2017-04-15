#!/bin/env ruby
# encoding: utf-8

novo_jogo = "s"

while novo_jogo == "s"
	puts "Adivinhe o número que estou pensando entre 1 e 100:"
	seu_numero = gets.to_i
	#puts seu_numero

	pc_numero = Random.rand(99) + 1
	puts pc_numero

	tentativas = 1

	while pc_numero != seu_numero
		if pc_numero > seu_numero
			puts "O número é maior que #{seu_numero}"
		else
			puts "O número é menor que #{seu_numero}"
		end

		tentativas += 1

		puts "Tente novamente: "
		seu_numero = gets.to_i
	end

	puts "Parabéns, o número era #{pc_numero}"

	if tentativas == 1
		puts "Você usou #{tentativas} tentativa!"
	else
		puts "Você usou #{tentativas} tentativas!"	
	end

	puts "Deseja jogar novamente? (s/n)"
	novo_jogo = gets.chomp
end

puts "Obrigado por jogar!"