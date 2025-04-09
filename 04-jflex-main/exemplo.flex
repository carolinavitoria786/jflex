/* Definição: seção para código do usuário. */


%%

/* Opções e Declarações: seção para diretivas e macros. */

// Diretiva:
%standalone // Execução independente do analisador sintático.

// Macros:
letra = [a-zA-Z]
numero = [0-9]
digito = {numero}+
identificador = {letra}({letra}|{numero})*

%%

/* Regras e Ações Associadas: seção de instruções para 
 * o analisador léxico. 
 */

{digito} {System.out.println(" -> Encontrei um <DIGITO>");}
{identificador} {System.out.println(" -> Encontrei um <IDENTIFICADOR>");}
