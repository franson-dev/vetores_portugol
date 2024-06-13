programa {

  inclua biblioteca Matematica --> mat
  inclua biblioteca Util --> U 
  inclua biblioteca Texto --> T
  inclua biblioteca Sons --> S

  funcao inicio() {
    inteiro opc, som = S.carregar_som("teste.mp3")
    S.reproduzir_som(som, falso)
    S.definir_volume(100)
    
   
    
    faca {
    	       
      
	      limpa()

	      escreva("==========================================")
	      escreva("  *********** MENU PRINCIPAL ***********\n")
	      escreva("========================================\n")
	      // Apresenta a lista de opções
	      escreva("*****[1] Consulta Dia e Mês ************\n")
	      escreva("*****[2] Consulte de Siglas e Estados **\n")
	      escreva("*****[3] Extenso de um número de(0-1000)\n")
	      escreva("*****[4] Sorteio de Nomes **************\n")
	      escreva("*****[5] Ordena números ****************\n")
		 escreva("*****[6] FIM ***************************\n")	
	      escreva("========================================\n")
	      // Ler a opção do usuário
	      escreva("\nDigite sua opção: ")
	      leia(opc)
	      // Decidir o que fazer conforme o usuário escolhe
	      escolha(opc) {
	        caso 1: {
	          dia_mes()
	          pare
	        }
	        caso 2: {
	          regioes()
	          pare
	        }
	        caso 3: {
	          milenar()
	          pare
	        }
	        caso 4: {
	          sorteio()
	          pare
	        }
	        caso 5: {
	          ordena()
	          pare
	        }
	        caso 6: {
	        	escreva("Volte sempre!")
	          pare
	        }
	        caso contrario: {
				escreva("Invalido meu consagrado, volte amanhã!")	        	
	        }
	      }
	      limpa()
	      S.interromper_som(som)
	      S.liberar_som(som)
	    }enquanto(opc != 9)
	    escreva("\n\nJá vai? Esta cedo ainda!")
  }
  
	funcao dia_mes()
	{
		inteiro opc=1
		
		faca {
			escreva("FAÇA SUA ESCOLHA")
			escreva("\n==========")
			escreva("\n[1]DIA")
			escreva("\n[2]MÊS")
			escreva("\n[3]FIM")
			escreva("\n==========")
			
			escreva("\nDigite sua opcao: ")
      		leia(opc)

			escolha (opc)
	      	{
		        caso 1:
		          dias()
		          pare
		        caso 2:
		          meses()
		          pare
		        caso 3:
		          escreva("FIM")
		          pare
		        caso contrario:
	        		escreva("\n[ *** opcao invalida *** ]")		
			}			
		}enquanto(opc != 3)	
	}
	
	funcao dias()	
	{
		limpa()
		cadeia dia[8]={" ","domingo", "segunda-feira" ,"terca-feira", "quarta-feira", "quinta-feira", "sexta-feira", "sabado"}, op
		inteiro d 
		faca
		{
			escreva("\nDigite um número: \n")
			leia(d)
		
			se (d < 1 ou d > 7) 
			{
			escreva("\n Dia inválido!")
			
			}
			
			senao
			{
			escreva("\n" + d + " corresponde a " + dia[d]) 
			}
			escreva("\n\nJogar novamente? ")
			leia(op)
		} enquanto(op=="sim")
	}
	funcao meses()
	{
		limpa()
     	cadeia mes[13]={" ","janeiro", "fevereiro" ,"março", "abril", "maio", "junho", "julho", "agosto", "setembro", "outubro","novembro", "dezembro"}, op
     	inteiro m 
		faca
		{
            escreva("\n Você quer saber o mês? \n")  
            leia(m) 

	     	se (m < 1 ou m > 13) 
	     	{
	     		escreva("\n Dia inválido\n")
	     		
	     	}
	     	
	     	senao
	     	{
	     		escreva("\n" + m + " corresponde a " + mes[m]) 
	     	}
	     	    escreva("\n\nJogar novamente? ")
	     	    leia(op)
		} enquanto(op=="sim")
    
     }
	funcao regioes()
	{
		cadeia estado[27][4], texto
		inteiro i
		logico achou
		
		estado[0][0] = "AC" estado[0][1] = "Acre" estado[0][2] = "Rio Branco" estado[0][3] = "Norte"  
		estado[1][0] = "AL" estado[1][1] = "Alagoas" estado[1][2] = "Maceió" estado[1][3] = "Nordeste"
		estado[2][0] = "AP" estado[2][1] = "Amapá" estado[2][2] = "Macapá" estado[2][3] = "Norte"
		estado[3][0] = "AM" estado[3][1] = "Amazonas" estado[3][2] = "Manaus" estado[3][3] = "Norte"
		estado[4][0] = "BA" estado[4][1] = "Bahia" estado[4][2] = "Salvador" estado[4][3] = "Nordeste"
		estado[5][0] = "CE" estado[5][1] = "Ceará" estado[5][2] = "Fortaleza" estado[5][3] = "Nordeste"
		estado[6][0] = "DF" estado[6][1] = "Distrito Federal" estado[6][2] = "Brasília" estado[6][3] = "Centro-Oeste"
		estado[7][0] = "ES" estado[7][1] = "Espírito Santo" estado[7][2] = "Vitória" estado[7][3] = "Sudeste"
		estado[8][0] = "GO" estado[8][1] = "Goiás" estado[8][2] = "Goiânia" estado[8][3] = "Centro-Oeste"
		estado[9][0] = "MA" estado[9][1] = "Maranhão" estado[9][2] = "São Luís" estado[9][3] = "Nordeste"
		estado[10][0] = "MT" estado[10][1] = "Mato Grosso" estado[10][2] = "Cuiabá" estado[10][3] = "Centro-Oeste"
		estado[11][0] = "MS" estado[11][1] = "Mato Grosso do Sul" estado[11][2] = "Campo Grande" estado[11][3] = "Centro-Oeste"
		estado[12][0] = "MG" estado[12][1] = "Minas Gerais" estado[12][2] = "Belo Horizonte" estado[12][3] = "Sudeste"
		estado[13][0] = "PA" estado[13][1] = "Pará" estado[13][2] = "Belém" estado[13][3] = "Norte"
		estado[14][0] = "PB" estado[14][1] = "Paraíba" estado[14][3] = "João Pessoa" estado[14][3] = "Nordeste"
		estado[15][0] = "PR" estado[15][1] = "Paraná" estado[15][2] = "Curitiba" estado[15][3] = "Sul"
		estado[16][0] = "PE" estado[16][1] = "Pernambuco" estado[16][2] = "Recife" estado[16][3] = "Nordeste"
		estado[17][0] = "PI" estado[17][1] = "Piauí" estado[17][2] = "Teresina" estado[17][3] = "Nordeste"
		estado[18][0] = "RJ" estado[18][1] = "Rio de Janeiro" estado[18][2] = "Rio de Janeiro" estado[18][3] = "Sudeste"
		estado[19][0] = "RN" estado[19][1] = "Rio Grande do Norte" estado[19][2] = "Natal" estado[19][3] = "Nordeste"
		estado[20][0] = "RS" estado[20][1] = "Rio Grande do Sul" estado[20][2] = "Porto Alegre" estado[20][3] = "Sul"
		estado[21][0] = "RO" estado[21][1] = "Rondônia" estado[21][2] = "Porto Velho" estado[21][3] = "Norte"
		estado[22][0] = "RR" estado[22][1] = "Roraima" estado[22][2] = "Boa Vista" estado[22][3] = "Norte"
		estado[23][0] = "SC" estado[23][1] = "Santa Catarina" estado[23][2] = "Florianópolis" estado[23][3] = "Sul"
		estado[24][0] = "SP" estado[24][1] = "São Paulo" estado[24][2] = "São Paulo" estado[24][3] = "Sudeste"
		estado[25][0] = "SE" estado[25][1] = "Sergipe" estado[25][2] = "Aracaju" estado[25][3] = "Nordeste"
		estado[26][0] = "TO" estado[26][1] = "Tocantins" estado[26][2] = "Palmas" estado[26][3] = "Norte"
		limpa()

		escreva("Digite uma sigla, estado ou capital que conheça do Brasil: ")
		leia(texto)

		texto = T.caixa_alta(texto)

		achou = falso
		para(i=0;i<27;i++)
		{
			se (texto == estado[i][0])
			{
				escreva("\n \nRESULTADO SOBRE A PESQUISA: \n\nEstado: ", estado[i][1], "\nCapital: ", estado[i][2], "\nRegião: ", estado[i][3])
				achou = verdadeiro
				pare
			}
			senao se (texto == estado[i][1])
			{
				escreva("\n\nCapital: ", estado[i][2], "\nRegião: ", estado[i][3], "\nSigla: ", estado[i][0])
				achou = verdadeiro
				pare
			}
			senao se (texto == estado[i][2])
			{
				escreva("\n \nRESULTADO SOBRE A PESQUISA: \n\nEstado: ", estado[i][1], "\nRegião: ", estado[i][3], "\nSigla: ", estado[i][0])
				achou = verdadeiro
				pare
			}
			
		}
		se(nao achou)
		{
			escreva("\n\n Sigla ou Estado não cadastrado!")
		}
	}
	funcao milenar()
	{
		cadeia unidade[]={"ZERO","UM","DOIS","TRÊS","QUATRO","CINCO", "SEIS", "SETE", "OITO", "NOVE", "DEZ", "ONZE", "DOZE", "TREZE", "QUATORZE", "QUINZE", "DEZESSEIS", "DEZESSETE","DEZOITO", "DEZENOVE"}
		cadeia dezena[]={" ","DEZ","VINTE","TRINTA","QUARENTA","CINQUENTA","SESSENTA","SETENTA","OITENTA","NOVENTA",""}
		cadeia centena[]={" ","CENTO","DUZENTOS","TREZENTOS","QUATROCENTOS","QUINHENTOS","SEISCENTOS","SETECENTOS","OITOCENTOS","NOVECENTOS"}
		inteiro n, dez, unid ,cent
		
		limpa()
		escreva("digite um numero: ")
		leia(n)
		se(n < 0 ou n > 1000)
		{ 
			escreva("\n*Número fora da faixa*")
		}
		senao se(n < 20) // 0 - 19
		{
			escreva(unidade[n])
		}
		senao se(n < 100) // 20 - 99
		{
			dezena_ext(n)
		}
		senao se(n == 100)
		{
			escreva("CEM") 
		}
		senao se (n < 1000) 
		{
			centena_ext (n)
		}
	}
	funcao dezena_ext (inteiro n)
	{
		cadeia unidade[]={"ZERO","UM","DOIS","TRÊS","QUATRO","CINCO", "SEIS", "SETE", "OITO", "NOVE", "DEZ", "ONZE", "DOZE", "TREZE", "QUATORZE", "QUINZE", "DEZESSEIS", "DEZESSETE","DEZOITO", "DEZENOVE"}
		cadeia dezena[]={" ","DEZ","VINTE","TRINTA","QUARENTA","CINQUENTA","SESSENTA","SETENTA","OITENTA","NOVENTA",""}
		cadeia centena[]={" ","CENTO","DUZENTOS","TREZENTOS","QUATROCENTOS","QUINHENTOS","SEISCENTOS","SETECENTOS","OITOCENTOS","NOVECENTOS"}
		inteiro dez, unid ,cent
		
		dez = n / 10
		unid = n % 10
		escreva(dezena[dez])
		
		se(unid > 0)
		{
			escreva(" E "+ unidade[unid])
		}
	}
	funcao centena_ext (inteiro n)
	{
		cadeia unidade[]={"ZERO","UM","DOIS","TRÊS","QUATRO","CINCO", "SEIS", "SETE", "OITO", "NOVE", "DEZ", "ONZE", "DOZE", "TREZE", "QUATORZE", "QUINZE", "DEZESSEIS", "DEZESSETE","DEZOITO", "DEZENOVE"}
		cadeia dezena[]={" ","DEZ","VINTE","TRINTA","QUARENTA","CINQUENTA","SESSENTA","SETENTA","OITENTA","NOVENTA",""}
		cadeia centena[]={" ","CENTO","DUZENTOS","TREZENTOS","QUATROCENTOS","QUINHENTOS","SEISCENTOS","SETECENTOS","OITOCENTOS","NOVECENTOS"}
		inteiro dez, unid ,cent
		
		cent = n / 100
		escreva(centena[cent])

		unid = n % 10
		
		dez = n % 100 
		se (dez < 20 e dez != 0) 
		{
			escreva(" E ", unidade[dez])
		}
		senao se (dez != 0)
		{
			dez = dez / 10 
			escreva(" E ", dezena[dez])

			se (unid != 0)
			{
				escreva(" E ", unidade[unid])
			}
		}
	}
	funcao sorteio()
	{
		
		cadeia nome[5]
		cadeia sorteado[5]
		inteiro i, nome_sorteado, j, contadora = 0

		limpa()

		para (i = 0; i < 5; i++)
		{
			escreva((i+1) + "º nome: ")
			leia(nome[i])
		}
		para (i = 0; i < 5; i++) 
		{
			i=i
			nome_sorteado = U.sorteia(0, 4)
			
			para (j = 0; j < 5; j++)
			{
				j=j
				se (nome[nome_sorteado] == sorteado[j])
				{
					contadora++
				}
			}
			
				se (contadora == 0)
				{
					sorteado[i] = nome[nome_sorteado]
				}
				senao
				{
					i--
					contadora = 0
				}
		}
		para (i = 0; i < 5; i++)
		{
			escreva("\n" + (i+1) + "º nome sorteado: " + sorteado[i])
		}
		
	}
	funcao ordena()
	{
		inteiro num[10], i, x, aux
		cadeia arroz
		

		para (i = 0; i < 10; i++)
		{
			escreva("\n" + (i+1) + "º número: ")
			leia(num[i]) 

		}

		para (i = 0; i < 10; i++)
		{
			para (x = 9; x > 0; x--)
			{
				se ( num[x] < num[x - 1])
				{
					aux = num[x]
					num[x] = num[x - 1] 	
					num[x - 1] = aux
				}
			}
		}
		escreva("\nQuer que suba ou desça (C/D)? ")
		leia(arroz)

		se (arroz == "C")
		{
			para (i = 0; i < 10; i++)
			{
			escreva("\n" + (i+1) + "º valor: " + num[i])
			}	
		}
		senao 
		{
			para (i = 9; i >= 0; i--)
			{
				escreva("\n" + (i+1) + "º valor: " + num[i])
			}
		}
	}	
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9681; 
 * @DOBRAMENTO-CODIGO = [70, 102, 126, 151, 219, 250, 266];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */