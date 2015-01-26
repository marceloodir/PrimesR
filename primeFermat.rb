
def fermat(intNumber)
	contador = 1
	return 2,contador if intNumber % 2 == 0
	
	# Teorema de Fermat; intNumber = (a + b) (a - b)
	a = (intNumber ** 0.5).ceil
	b2 = a**2 - intNumber
	while (b2**0.5) != (b2**0.5).ceil
		a = a + 1
		b2 = a**2 - intNumber
		contador = contador + 1
	end
	return (a - (b2**0.5)).to_i, contador
end

def primos(intNumber)
	entrada = intNumber
	divisor = []
	fator,contadorGeral = fermat(intNumber)
	while fator != 1
		divisor << fator
		while intNumber % fator == 0
			intNumber = intNumber / fator
		end
		fator,contador = fermat(intNumber)
		contadorGeral = contadorGeral + contador
	end
	divisor << intNumber if intNumber != 1 and intNumber != entrada
	return divisor, contadorGeral
end

a, contador = primos(1738213219836219)

puts "#{a} com #{contador} interações"

