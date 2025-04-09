/* Definição: seção para código do usuário. */

%%

/* Opções e Declarações: seção para diretivas e macros. */

// Diretiva:
%standalone // Execução independente do analisador sintático.

%%

/* Regras e Ações Associadas: seção de instruções para o analisador léxico. */

\t {System.out.print("TAB ");} //Isso é uma regra.