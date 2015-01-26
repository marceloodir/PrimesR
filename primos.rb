def isPrime(intNumber)
	divisores = []
	aux = intNumber
	i = 2
	while i<=aux/i 
		if aux % i == 0
			while aux % i == 0
				aux = aux / i
			end
			divisores << i
		end
		i=i+1
	end
	divisores << aux if aux!=1 and aux!=intNumber
	return divisores , i
end

while true
	print "Entre com um valor inteiro: "
	entrada = gets().to_i
	break if entrada == 0
	
	fatores, interacoes = isPrime(entrada)
	puts "Divisores #{fatores} com #{interacoes} interações."
end
