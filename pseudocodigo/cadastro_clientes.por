//autor: danley alves
//data: 16/06/2022

programa
{
	inclua biblioteca Util
	
	cadeia clientes[15], nome // vetor que armazena nome dos clientes
	inteiro opcao // variavel do escolha caso
	cadeia destino[15], destinoNome // vetor que armazena o destino
	logico continuar = verdadeiro // funcao logica de decisao
	funcao inicio()
	{
		// menu de escolha do usuario

		faca{
			escreva("== | MENU DE CADASTROS, HOTEL RECODE | ==\n\n")
			escreva("Escolha um opção :\n")
			escreva("1) Cadastrar Cliente")
			escreva("\t2) Cadastrar Destino")
			escreva("\t3) Pesquisar Clientes")
			escreva("\t4) Pesquisar Destino")
			escreva("\t0) Sair\n")
			leia(opcao)

			escolha(opcao) {
				caso 1:
					cadastrar()
					pare
				caso 2:
					nomeDestino()
					pare
					
				caso 3:
					pesquisar()
					pare
					
				caso 4:
					pesquisarDestino()
					pare
				
				caso contrario:
				continuar = falso
			}
		}enquanto(opcao != 0)
	}


	funcao cadastrar() // funcao para cadastar o nome do cliente
	{	limpa()
		escreva("Digite o nome do hospede para cadastrar: ")
		leia(nome)
		para(inteiro i = 0; i < 15; i++){ // laço de repetição para armazenar os nomes dos clientes no vetor
			
			
			se(clientes[i] == ""){ // se a posicao no vetor for vazio, cadastra cliente na posicao
				clientes[i] = nome // cadastra nome do cliente na posicao
				escreva("+++ NOME CADASTRADO! +++") // aviso na tela de cadastro bem sucedido
				Util.aguarde(2000)
				limpa()

				
				pare
				
			}senao se(i == 14){ // se o vetor estiver cheio, mensagem de maximo de cadastro atingido
				escreva("+++ DESCULPE, MÁXIMO DE CADASTROS ATINGIDO! +++")
				Util.aguarde(2000)
				limpa()

			}
		 
		}
		

		
	}

	funcao nomeDestino()
	{	limpa()
		escreva("Digite o nome do destino para cadastrar: ")
		leia(destinoNome)
		para(inteiro i = 0; i < 15; i++){
			se(destino[i] == ""){
				destino[i] = destinoNome
				escreva("+++ Destino cadastrado! +++")
				Util.aguarde(2000)
				limpa()

				
				pare
				
			}senao se(i == 14){
				escreva("+++ DESCULPE, MÁXIMO DE CADASTROS ATINGIDO! +++")
				Util.aguarde(2000)
				limpa()

			}
		 
		}
		

		
	}

	funcao pesquisar()
	{
		
		logico achou = falso
		escreva ("Digite o nome que deseja? ")
		leia (nome)
		

		para (inteiro posicao = 0; posicao < 15; posicao++)
		{
			se (clientes[posicao] == nome)
			{	limpa()
				escreva ("O Hospede, ",nome," foi encontrado na indice: ", posicao, "\n")
				achou = verdadeiro  
					
			}
			
		}se (nao achou){
				limpa()
				escreva("Hospede não encontrado\n")
				escreva("\n\n[  ◀  Voltando para o menu de cadastros...]")
			}

		Util.aguarde(3000)
		limpa()
	}



	funcao pesquisarDestino()
	{
		
		logico achou = falso
		escreva ("Digite o nome que deseja? ")
		leia (destinoNome)
		

		para (inteiro posicao = 0; posicao < 15; posicao++)
		{
			se (destino[posicao] == destinoNome)
			{	limpa()
				escreva ("O Destino, ",destinoNome," foi encontrado na indice: ", posicao, "\n")
				achou = verdadeiro  
					
			}
			
		}se (nao achou){
				limpa()
				escreva("Destino não encontrado\n")
				escreva("\n\n[  ◀  Voltando para o menu de cadastros...]")
			}

		Util.aguarde(3000)
		limpa()
	}
	
}



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 41; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {clientes, 8, 8, 8}-{destino, 10, 8, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */