Algoritmo "C�lculo do Consumo de Energia"

// Calcular o consumo total de energia de 10 usu�rios nos meses de Agosto e de
// Setembro, cada m�s com 10 dias e cada usu�rio com 10 equipamentos distintos,
// consumindo um equipamento por dia (pot�ncias diferentes) por uma quantidade
// de horas fixas. Informando ao final, se o consumo de energia aumentou ou diminuiu.

Var

   equipamento : vetor [0..9] de inteiro
   consumoD : vetor [0..999] de real
   i : inteiro
   consumoMA, consumoMS: real
   pagar, economia: real

Inicio

   equipamento[i] <- 0
   consumoD[i] <- 0

   escreval("")
   para i de 0 ate 9 faca
      escreval("      * USU�RIO ", i+1, " *")
      escreval("")
      escreval("      --- AGOSTO ---")
      escreval("")
      escreval(" Informe a pot�ncia (W) do:")
      escreval("")
      para i de 0 ate 9 faca
         escreva( i + 1 ,"� equipamento: ")
         leia(equipamento[i])
         consumoD[i] <- (equipamento[i]/1000)*3
         escreval(" Consumo di�rio: ", consumoD[i], " kWh")
         consumoMA <- consumoMA + consumoD[i]
         escreval("")
      fimpara
      escreval("")
      escreval(" Consumo mensal: ", consumoMA, " kWh")
      pagar <- consumoMA * 0.45
      escreval(" Total a pagar = R$ ", pagar:7:2)
      escreval("")
      escreval("")
      escreval("      --- SETEMBRO ---")
      escreval("")
      escreval(" Informe a pot�ncia (W) do:")
      escreval("")
      para i de 0 ate 9 faca
         escreva( i+1, "� equipamento: ")
         leia(equipamento[i])
         consumoD[i] <- (equipamento[i]/1000)*3
         escreval(" Consumo di�rio: ", consumoD[i], " kWh")
         consumoMS <- consumoMS + consumoD[i]
         escreval("")
      fimpara
      escreval("")
      escreval(" Consumo mensal: ", consumoMS, " kWh")
      pagar <- consumoMS * 0.45
      escreval(" Total a pagar = R$ ", pagar:7:2)
      escreval("")
      escreval("")
      economia <- consumoMA - consumoMS
      escreval(" De Agosto para Setembro a diferen�a de consumo foi de: ", economia:7:2, " kWh")
      se economia < 0 entao
         escreval(" O consumo aumentou")
      senao
         escreval(" O consumo diminuiu")
      fimse

      timer 4000
      timer 0
      limpatela

   fimpara

Fimalgoritmo