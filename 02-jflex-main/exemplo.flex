/* Definição: seção para código do usuário. */


%%

/* Opções e Declarações: seção para diretivas e macros. */

// Diretiva:
%standalone // Execução independente do analisador sintático.

%%

/* Regras e Ações Associadas: seção de instruções para 
 * o analisador léxico. 
 */

a(a|b)* {System.out.println("começa com a");} //Isso é uma regra.
b(a|b)* {System.out.println("começa com b");} //Isso é uma outra regra.
