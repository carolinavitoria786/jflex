
/* Definição: seção para código do usuário. */


%%

/* Opções e Declarações: seção para diretivas e macros. */

// Diretiva:
%standalone // Execução independente do analisador sintático.

// Macros:
letra = [a-zA-Z]
digito = [0-9]
palavra = {letra}+
numero = {digito}+

%%

/* Regras e Ações Associadas: seção de instruções para 
 * o analisador léxico. 
 */

{numero} {System.out.println(" -> Encontrei um {número}");}
{palavra} {System.out.println(" -> Encontrei uma {palavra}");}

