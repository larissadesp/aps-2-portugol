Algoritmo "Imposto de Renda"

// Veja abaixo o informe da Receita Federal quanto �s al�quotas para reten��o do
// imposto de renda do trabalho assalariado. Fa�a um programa que leia o sal�rio
// bruto mensal de um trabalhador, calcule e escreva:
// - O imposto que dever� ser retido na fonte, em 1 ano de sal�rio (desconsiderar
// 13o sal�rio, considerar que foram recebidos 12 sal�rios, 1 em cada m�s);
// - O rendimento l�quido, tamb�m em 1 ano de sal�rio (desconsiderar 13o sal, etc.),
// considerando que o desconto ser� apenas o imposto de renda;

// Consultar tabela em: https://impostoderenda2020.com.br/aliquotas-imposto-de-renda-2020/

Var

   brutoM : real
   liquidoA, liquidoM : real
   impostoA, impostoM : real

Inicio

   escreval("----------------------------------------")
   escreva(" Informe seu sal�rio bruto: R$ ")
   leia(brutoM)
   escreval("----------------------------------------")
   escreval("")

   se brutoM <= 1903.98 entao
      escreval(" Imposto anual: Isento")
      liquidoA <- brutoM * 12
      escreval(" Rendimento l�quido anual: R$ ", liquidoA:7:2)
   senao
      se ((brutoM >= 1903.99) e (brutoM <= 2826.65)) entao
         impostoA <- ((brutoM * 0.075) - 142.80)*12
         escreval(" Imposto retido na fonte, em 1 ano: R$ ", impostoA:7:2)
         impostoM <- ((brutoM * 0.075) - 142.80)
         escreval(" Imposto retido na fonte, em 1 m�s: R$ ", impostoM:7:2)
         escreval("")
         liquidoA <- ((brutoM * 12) - impostoA)
         escreval(" Rendimento l�quido anual: R$ ", liquidoA:7:2)
         liquidoM <- brutoM - impostoM
         escreval(" Rendimento l�quido mensal: R$ ", liquidoM:7:2)
      senao
         se ((brutoM >= 2826.66) e (brutoM <= 3751.05)) entao
            impostoA <- ((brutoM * 0.15) - 354.80)*12
            escreval(" Imposto retido na fonte, em 1 ano: R$ ", impostoA:7:2)
            impostoM <- ((brutoM * 0.15) - 354.80)
            escreval(" Imposto retido na fonte, em 1 m�s: R$ ", impostoM:7:2)
            escreval("")
            liquidoA <- ((brutoM * 12) - impostoA)
            escreval(" Rendimento l�quido anual: R$ ", liquidoA:7:2)
            liquidoM <- brutoM - impostoM
            escreval(" Rendimento l�quido mensal: R$ ", liquidoM:7:2)
         senao
            se ((brutoM >= 3751.06) e (brutoM <= 4664.68)) entao
               impostoA <- ((brutoM * 0.225) - 636.13)*12
               escreval(" Imposto retido na fonte, em 1 ano: R$ ", impostoA:7:2)
               impostoM <- ((brutoM * 0.225) - 636.13)
               escreval(" Imposto retido na fonte, em 1 m�s: R$ ", impostoM:7:2)
               escreval("")
               liquidoA <- ((brutoM * 12) - impostoA)
               escreval(" Rendimento l�quido anual: R$ ", liquidoA:7:2)
               liquidoM <- brutoM - impostoM
               escreval(" Rendimento l�quido mensal: R$ ", liquidoM:7:2)
            senao
               se (brutoM >= 4664.68) entao
                  impostoA <- ((brutoM * 0.275) - 869.36)*12
                  escreval(" Imposto retido na fonte, em 1 ano: R$ ", impostoA:7:2)
                  impostoM <- ((brutoM * 0.275) - 869.36)
                  escreval(" Imposto retido na fonte, em 1 m�s: R$ ", impostoM:7:2)
                  escreval("")
                  liquidoA <- ((brutoM * 12) - impostoA)
                  escreval(" Rendimento l�quido anual: R$ ", liquidoA:7:2)
                  liquidoM <- brutoM - impostoM
                  escreval(" Rendimento l�quido mensal: R$ ", liquidoM:7:2)
               fimse
            fimse
         fimse
      fimse
   fimse

Fimalgoritmo