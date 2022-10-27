Algoritmo "FUNÇÃO_SE"
// 
//  
// Descrição   : Praticando com os comandos SE , REPITA, PARA
// Autor(a)    : THIAGO GOMES ZIOLKOWSKI
// Data atual  : 26/10/2022


Var

     SALDO_INICIAL: REAL
       SALDO_FINAL: REAL
          TOT_CRED: REAL
           TOT_DEB: REAL
             VALOR: VETOR [1..1000] DE REAL

              DATA: VETOR [1..1000] DE CARACTERE
FORNECEDOR_CLIENTE: VETOR [1..1000] DE CARACTERE
               D_C: VETOR [1..1000] DE CARACTERE
              RESP: CARACTERE

       CONT1, CONT: INTEIRO


Inicio

         CONT <- 1

         ESCREVAL("-------------------------------------------------------------")
         ESCREVAL ("                   CONTROLE DE CAIXA")
         ESCREVAL("-------------------------------------------------------------")
         ESCREVAL()


         ESCREVA ("INFORME O SALDO INICIAL: ")
         LEIA (SALDO_INICIAL)
         LIMPATELA

REPITA

         ESCREVAL("-------------------------------------------------------------")
         ESCREVAL ("              INCLUSÃO DE LANÇAMENTOS")
         ESCREVAL("-------------------------------------------------------------")
         ESCREVAL()
         
         ESCREVAL  ("                  SALDO INICIAL: R$ ",SALDO_INICIAL:8:2)
         ESCREVAL  ("              TOTAL DE CRÉDITOS: R$ ",TOT_CRED:8:2)
         ESCREVAL  ("               TOTAL DE DÉBITOS: R$ ",TOT_DEB:8:2)
         ESCREVAL  ("                    SALDO FINAL: R$ ",SALDO_FINAL:8:2)
         ESCREVAL()


         ESCREVA("INFORME A DATA [00/00/00]: ")
         LEIA(DATA[CONT])

         ESCREVA("INFORME O NOME DO CLIENTE OU FORNECEDOR: ")
         LEIA (FORNECEDOR_CLIENTE[CONT])

         ESCREVA("DÉBITO [D] CRÉDITO [C]: ")
         LEIA (D_C[CONT])
         
         ESCREVA("INFORME O VALOR: R$ ")
         LEIA (VALOR[CONT])

               //---------------------------------------
               SE (D_C[CONT]) = "D"     ENTAO
                 TOT_DEB <- TOT_DEB - (VALOR[CONT])

               SENAO
                 TOT_CRED <- TOT_CRED + (VALOR[CONT])
                 
               FIMSE
               //---------------------------------------


         CONT <- CONT + 1 // NÚMERO DE LANÇAMENTOS

         ESCREVAL()
         ESCREVA("DESEJA INCLUIR OUTRO LANÇAMENTO? ")
         LEIA (RESP)

         SALDO_FINAL <- SALDO_INICIAL + TOT_CRED + TOT_DEB

         LIMPATELA





ATE RESP = "N"


//------------------------------------------------------------------------------
//TELA FINAL

         ESCREVAL("-------------------------------------------------------------")
         ESCREVAL("                INCLUSÃO DE LANÇAMENTOS")
         ESCREVAL("-------------------------------------------------------------")
         ESCREVAL()

         ESCREVAL  ("                  SALDO INICIAL: R$ ",SALDO_INICIAL:8:2)
         ESCREVAL  ("              TOTAL DE CRÉDITOS: R$ ",TOT_CRED:8:2)
         ESCREVAL  ("               TOTAL DE DÉBITOS: R$ ",TOT_DEB:8:2)
         ESCREVAL  ("                    SALDO FINAL: R$ ",SALDO_FINAL:8:2)
         ESCREVAL()


         SE SALDO_FINAL < 2000 ENTAO
         
            ESCREVAL()
            ESCREVAL("---------------------------------------------------------")
            ESCREVAL("ALERTA!! SEU SALDO ESTA ABAIXO DA MARGEM DE SEGURANÇA!!")
            ESCREVAL("---------------------------------------------------------")
            ESCREVAL()
            
         FIMSE

//------------------------------------------------------------------------------
//TELA FINAL + LANÇAMENTOS

 ESCREVAL()
 ESCREVAL("------------------------------------------------------------------")
 ESCREVAL("                  DEMONSTRATIVO DE LANÇAMENTOS")
 ESCREVAL("------------------------------------------------------------------")
 ESCREVAL()

PARA CONT1 <- 1 ATE CONT-1 FACA


     ESCREVA((DATA[CONT1]):14)
     ESCREVA((FORNECEDOR_CLIENTE[CONT1]):30)
     ESCREVA((D_C[CONT1]):4)
     ESCREVA((VALOR[CONT1]):10:2)
     ESCREVAL()


FIMPARA



Fimalgoritmo




