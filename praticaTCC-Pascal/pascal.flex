/* 
 * Definição: seção para código do usuário. 
 */
import token.Token;

%%

/* 
 * Opções e Declarações
 */
%standalone
%line
%column
%class ScannerPascal

%{
  Token token;
%}

// Macros
BRANCO = [\n|\t|\r| ]
ID = [_a-zA-Z][_a-zA-Z0-9]*
NUM = [0-9]+
SOMA = \+
SUB = -
MULT = \*
DIV = \/
ATRIBUICAO = :=
MENOR = <
ABREPAR = \(
FECHAPAR = \)
PONTOEVIRGULA = ";"
DOIS_PONTOS = ":"

/* 
 * Regras Léxicas
 */
%%

{BRANCO}           { /* ignora espaços em branco */ }
"if"               { token = new Token(yyline, yycolumn, yytext(), "Palavra-chave 'if'"); token.imprimir(); }
"then"             { token = new Token(yyline, yycolumn, yytext(), "Palavra-chave 'then'"); token.imprimir(); }
"else"             { token = new Token(yyline, yycolumn, yytext(), "Palavra-chave 'else'"); token.imprimir(); }
"begin"            { token = new Token(yyline, yycolumn, yytext(), "Palavra-chave 'begin'"); token.imprimir(); }
"end"              { token = new Token(yyline, yycolumn, yytext(), "Palavra-chave 'end'"); token.imprimir(); }
"writeln"          { token = new Token(yyline, yycolumn, yytext(), "Função 'writeln'"); token.imprimir(); }
"sqrt"             { token = new Token(yyline, yycolumn, yytext(), "Função 'sqrt'"); token.imprimir(); }
{ID}               { token = new Token(yyline, yycolumn, yytext(), "Identificador"); token.imprimir(); }
{NUM}              { token = new Token(yyline, yycolumn, yytext(), "Número inteiro"); token.imprimir(); }
{SOMA}             { token = new Token(yyline, yycolumn, yytext(), "Operador '+'"); token.imprimir(); }
{SUB}              { token = new Token(yyline, yycolumn, yytext(), "Operador '-'"); token.imprimir(); }
{MULT}             { token = new Token(yyline, yycolumn, yytext(), "Operador '*'"); token.imprimir(); }
{DIV}              { token = new Token(yyline, yycolumn, yytext(), "Operador '/'"); token.imprimir(); }
{ATRIBUICAO}       { token = new Token(yyline, yycolumn, yytext(), "Atribuição ':='"); token.imprimir(); }
{MENOR}            { token = new Token(yyline, yycolumn, yytext(), "Operador '<'"); token.imprimir(); }
{ABREPAR}          { token = new Token(yyline, yycolumn, yytext(), "Abre parêntese"); token.imprimir(); }
{FECHAPAR}         { token = new Token(yyline, yycolumn, yytext(), "Fecha parêntese"); token.imprimir(); }
{PONTOEVIRGULA}    { token = new Token(yyline, yycolumn, yytext(), "Ponto e vírgula"); token.imprimir(); }
.                  { token = new Token(yyline, yycolumn, yytext(), "Caractere inválido"); token.dispararExcecao(); }
