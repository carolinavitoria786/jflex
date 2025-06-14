/* 
 * Definição: código do usuário 
 */
import token.Token;

%%

/* 
 * Opções e Declarações 
 */
%standalone
%line
%column
%class ScannerC

%{
  Token token;
%}

// Macros
BRANCO = [\n|\t|\r| ]
ID = [_a-zA-Z][_a-zA-Z0-9]*
NUM = [0-9]+
SOMA = \+
INCREMENTO = \+\+
ATRIBUICAO = =
ABREPAR = \(
FECHAPAR = \)
ABRECHAV = \{
FECHACHAV = \}
PONTOEVIRGULA = ";"
MENORIGUAL = <=
OPERADORADITIVO = \+=

%%

{BRANCO}           { /* ignora */ }
"int"              { token = new Token(yyline, yycolumn, yytext(), "Tipo int"); token.imprimir(); }
"main"             { token = new Token(yyline, yycolumn, yytext(), "Função principal"); token.imprimir(); }
"while"            { token = new Token(yyline, yycolumn, yytext(), "Laço while"); token.imprimir(); }
"return"           { token = new Token(yyline, yycolumn, yytext(), "Palavra-chave return"); token.imprimir(); }
"printf"           { token = new Token(yyline, yycolumn, yytext(), "Função printf"); token.imprimir(); }

{ID}               { token = new Token(yyline, yycolumn, yytext(), "Identificador"); token.imprimir(); }
{NUM}              { token = new Token(yyline, yycolumn, yytext(), "Número inteiro"); token.imprimir(); }
{SOMA}             { token = new Token(yyline, yycolumn, yytext(), "Operador '+'"); token.imprimir(); }
{OPERADORADITIVO}  { token = new Token(yyline, yycolumn, yytext(), "Operador '+='"); token.imprimir(); }
{INCREMENTO}       { token = new Token(yyline, yycolumn, yytext(), "Operador '++'"); token.imprimir(); }
{ATRIBUICAO}       { token = new Token(yyline, yycolumn, yytext(), "Atribuição '='"); token.imprimir(); }
{MENORIGUAL}       { token = new Token(yyline, yycolumn, yytext(), "Operador '<='"); token.imprimir(); }
{ABREPAR}          { token = new Token(yyline, yycolumn, yytext(), "Abre parêntese"); token.imprimir(); }
{FECHAPAR}         { token = new Token(yyline, yycolumn, yytext(), "Fecha parêntese"); token.imprimir(); }
{ABRECHAV}         { token = new Token(yyline, yycolumn, yytext(), "Abre chave"); token.imprimir(); }
{FECHACHAV}        { token = new Token(yyline, yycolumn, yytext(), "Fecha chave"); token.imprimir(); }
{PONTOEVIRGULA}    { token = new Token(yyline, yycolumn, yytext(), "Ponto e vírgula"); token.imprimir(); }
.                  { token = new Token(yyline, yycolumn, yytext(), "Caractere inválido"); token.dispararExcecao(); }
