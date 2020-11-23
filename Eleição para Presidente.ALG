Algoritmo "Eleição para Presidente"

// Em uma eleição para presidente existem quatro candidatos e 2000 eleitores. Os
// votos são informados através de códigos (mesma forma de uma Urna Eletrônica).
// Os dados utilizados para a contagem dos votos obedecem a seguinte codificação:
// • 1, 2, 3 e 4: voto para os respectivos candidatos;
// • 5: voto em branco;
// • Qualquer valor diferente de 1,2,3,4 e 5 é considerado voto nulo.
// Elabore um programa que leia o voto de cada eleitor (código do candidato) e
// calcule a porcentagem de votos para cada candidato, a quantidade de votos nulos
// e a quantidade de votos em branco e o candidato que obteve mais votos.

Var

   c1, c2, c3, c4, cb, cn : inteiro
   confirma : caractere
   votos, encerrar, total : inteiro

Inicio

   votos <- 0
   c1 <- 0
   c2 <- 0
   c3 <- 0
   c4 <- 0
   cb <- 0
   cn <- 0

   repita
      limpatela
      escreval("")
      escreval("  ==== CANDIDATOS ====")
      escreval("   (1) Candidato 1")
      escreval("   (2) Candidato 2")
      escreval("   (3) Candidato 3")
      escreval("   (4) Candidato 4")
      escreval("   (5) Voto em Branco")
      escreval("   (6) Voto Nulo")
      escreval("  =====================")
      escreval("")
      repita
         escreva("  Número correspondente ao seu voto: ")
         leia(votos)
         escreval("")
         escreval("  [Digite S para SIM e N para NÃO]")
         escreva("  Confirmar voto? ")
         leia(confirma)
         escreval("")
      ate confirma = "S"
      escreva("  Encerrar votação? [Digite N]: ")
      leia(encerrar)
      total <- total + 1

      escolha (votos)
      caso 1
         c1 <- c1 + 1
      caso 2
         c2 <- c2 + 1
      caso 3
         c3 <- c3 + 1
      caso 4
         c4 <- c4 + 1
      caso 5
         cb <- cb + 1
      caso 6
         cn <- cn + 1
      fimescolha
   ate encerrar = 123

   limpatela

   escreval(" N° total de votos = ", total)
   escreval("=================================")
   escreval( ((c1/total)*100):3:2, "% de votos para Candidato 1")
   escreval("")
   escreval( ((c2/total)*100):3:2, "% de votos para Candidato 2")
   escreval("")
   escreval( ((c3/total)*100):3:2, "% de votos para Candidato 3")
   escreval("")
   escreval( ((c4/total)*100):3:2, "% de votos para Candidato 4")
   escreval("")
   escreval( ((cb/total)*100):3:2, "% de votos para Voto em Branco")
   escreval("")
   escreval( ((cn/total)*100):3:2, "% de votos para Nulo")
   escreval("=================================")

   escreva(" Vencedor = ")
   se (c1 > c2) e (c1 > c3) e (c1 > c4) e (c1 > cb) e (c1 > cn) entao
      escreval("Candidato 1")
   senao
      se (c2 > c1) e (c2 > c3) e (c2 > c4) e (c2 > cb) e (c2 > cn) entao
         escreval("Candidato 2")
      senao
         se (c3 > c1) e (c3 > c2) e (c3 > c4) e (c3 > cb) e (c3 > cn) entao
            escreval("Candidato 3")
         senao
            se (c4 > c1) e (c4 > c2) e (c4 > c3) e (c4 > cb) e (c4 > cn) entao
               escreval("Candidato 4")
            senao
               se (cb > c1) e (cb > c2) e (cb > c3) e (cb > c4) e (cb > cn) entao
                  escreval("Em Branco")
               senao
                  se (cn > c1) e (cn > c2) e (cn > c3) e (cn > c4) e (cn > cb) entao
                     escreval("Nulo")
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse

Fimalgoritmo