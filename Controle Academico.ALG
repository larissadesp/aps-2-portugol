Algoritmo "Controle Acad�mico"

// Fa�a um algoritmo para ler 8 valores para as notas de prova e trabalho respec-
// tivamente dos 15 alunos de uma disciplina. Deve-se calcular a m�dia de cada
// aluno, verificar se o aluno foi ou n�o aprovado, escrever a m�dia e �aprovado�
// ou �reprovado� para cada aluno. Ao final, deve-se escrever a m�dia geral dos
// alunos ou da turma, e o percentual de alunos aprovados e reprovados.

// Os crit�rios de aprova��o e de c�lculo da m�dia s�o dados abaixo.

// Crit�rio de Avalia��o:
// APROVADOS
// M�dia Final >= 6,0
// Presen�a nas Aulas >= 75%.

// C�lculo da M�dia Final
// M�dia de Provas >= 6
// Media Final = 0,8*(Media de Provas) + 0,2*(m�dia dos Trabalhos)

Var

   notasProvas : vetor [0..7] de real
   notasTrabalhos : vetor [0..7] de real
   mediaProvas, mediaTrabalhos, mediaFinal, mediaTurma : real
   aprovados, reprovados : real
   nomeAluno : caracter
   i, n : inteiro
   faltas, numAlunos, totAlunos : inteiro

Inicio

   mediaTurma <- 0
   aprovados <- 0
   reprovados <- 0

   escreva("")
   escreva(" N�mero de alunos: ")
   leia(numAlunos)
   limpatela
   
   para n de 0 ate numAlunos - 1 faca
      escreval("")
      escreva(" Nome do(a) aluno(a): ")
      leia(nomeAluno)
      escreval("")
      escreval(" --- PROVAS --- ")
      para i de 0 ate 7 faca
         escreva(  i+1, "� nota: ")
         leia(notasProvas[i])
      fimpara

      escreval(" ------------ ")
      escreval("")
      escreval(" -- TRABALHOS -- ")
      para i de 0 ate 7 faca
         escreva(  i+1, "� nota: ")
         leia(notasTrabalhos[i])
      fimpara

      escreval(" --------------- ")
      escreval("")
      escreva(" Faltas = ")
      leia(faltas)
      escreval("")

      para i de 0 ate 7 faca
         mediaProvas <- mediaProvas + notasProvas[i]
         mediaTrabalhos <- mediaTrabalhos + notasTrabalhos[i]
      fimpara

      mediaProvas <- mediaProvas/8
      mediaTrabalhos <- mediaTrabalhos/8
      escreval(" M�dia Provas = ", mediaProvas:2:2)
      escreval(" M�dia Trabalhos = ", mediaTrabalhos:2:2)
      mediaFinal <- ((0.8 * (mediaProvas)) + (0.2 * (mediaTrabalhos)))
      escreval("")
      escreval(" M�dia Final = ", mediaFinal:2:2)
      escreval("")
      mediaProvas <- 0
      mediaTrabalhos <- 0
      mediaTurma <- mediaTurma + mediaFinal
      escreval(" ------------- ")

      se (mediaFinal >= 6.0) e (faltas <= 50) entao
         escreval("  APROVADO(A)")
         aprovados <- aprovados + 1
      senao
         se (mediaFinal < 6.0) ou (faltas > 50) entao
            escreval("  REPROVADO(A)")
            reprovados <- reprovados + 1
         fimse
      fimse
      escreval(" ------------- ")

      timer (4000)
      limpatela
      timer (0)
   fimpara

   totAlunos <- numAlunos
   escreval(" -------------------------")
   mediaTurma <- (mediaTurma / totAlunos)
   escreva("   M�DIA TURMA = ", mediaTurma:2:2)
   escreval("")
   aprovados <- (aprovados/totAlunos)*100
   reprovados <- (reprovados/totAlunos)*100
   escreval("")
   escreval("   APROVA��O = ", aprovados:3:2, "%")
   escreval("   REPROVA��O = ", reprovados:3:2, "%")
   escreval(" -------------------------")

Fimalgoritmo