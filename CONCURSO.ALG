Algoritmo "CONCURSO"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Nelio Alves 
// Descrição   : desafio final modulo 06
// Autor(a)    : Davi Mendes
// Data atual  : 25/01/2024
Var

 //declaracao de vetores

 vetNome : vetor[0..9] de caractere
 vetNotaUm : vetor [0..9] de real
 vetNotaDois : vetor [0..9] de real
 vetMedia : vetor [0..9] de real

 //declaracao de variaveis
 
 i, contA, qtdP  : inteiro
 nome, maior : caractere
 nota, porc , media, trocaMedia : real

Inicio


      // zerando as variaveis
      
      i <- 0
      qtdP <- 0
      contA <- 0
      
      //_____________I_N_I_C_I_O____C_O_D_I_G_O________________\\

      escreva("Digite a quantidade de pessoas? ")
      leia(qtdP)
      escreval("")
      
      //funcao que vai armazenar os dados
      
               para i de 0 ate qtdP -1 faca
                  escreval("")
                  escreval("Digite os dados dados da ", i + 1, "a pessoa: ")
                  escreva("Nome: ")
                  leia(nome)
                  vetNome[i] <- nome
                  escreva("Nota etapa 1 : ")
                  leia(nota)
                  
      //verificacao de notas validas
                            enquanto (nota < 0 ) ou (nota > 100) faca
                                     escreval("")
                                     escreval("Nota invalida!")
                                     escreva("Nota etapa 1 : ")
                                     leia(nota)
                                     escreval("")
                            
                            fimenquanto
                            
                vetNotaUm[i] <- nota
                
                nota <-0
                
                escreva("Nota etapa 2 : ")
                  leia(nota)

      //verificacao de notas validas
                            enquanto (nota < 0 ) ou (nota > 100) faca
                                     escreval("")
                                     escreval("Nota invalida!")
                                     escreva("Nota etapa 1 : ")
                                     leia(nota)
                                     escreval("")

                            fimenquanto

               vetNotaDois[i] <- nota
               vetMedia[i] <- ((vetNotaUm [i] + vetNotaDois[i]) / 2)
               
               
                nota <-0


               fimpara
               
               i <- 0
               
               //impressao TABELA NOTAS
               
               escreval("")
               escreval("TABELA")
               escreval("")
               
                           para i de 0 ate qtdP - 1 faca
                                escreval(vetNome[i], vetNotaUm[i], vetNotaDois[i], vetMedia[i])
                           fimpara
                           
               i <- 0
               trocaMedia <- 0
               //impressao pessoas aprovadas

               escreval("")
               escreval("PESSOAS APROVADAS")
               escreval("")

                           para i de 0 ate qtdP - 1 faca
                           
                                se vetMedia[i] >= 70 entao
                                
                                   escreval(vetNome[i])
                                   contA <- contA + 1
                                   media <- media + vetMedia[i]
                                   
                                fimse
                                
             //maior media
             
                          se vetMedia[i] > trocaMedia entao
                             trocaMedia  <- vetMedia[i]
                             maior <- vetNome[i]
                             
                                
                          fimse
                    fimpara

      // PORCENTAGEM APROVACAO
      
                     porc <- ((contA * 100 ) / qtdP)

      escreval("Porcentagem de aprovação: ", porc:3:2 , "%")
      escreval("Maior média: ", maior)
      escreval("Nota média dos aprovados: ", media / contA:2:2)
      
                           


Fimalgoritmo