/* Código do usuário */
import token.Token;

%%

/* Opções e diretivas */
%standalone
%line
%column
%class ScannerJava

%{
  Token token;
%}

// Macros
BRANCO = [\n|\t|\r| ]
ID = [_a-zA-Z][_a-zA-Z0-9]*
NUM = [0-9]+
SOMA = \+
DPONTOS = ":"
PONTOEVIRGULA = ";"
ABREPAR = \(
FECHAPAR = \)
ABRECHAV = \{
FECHACHAV = \}
ABREVET = \[
FECHAVET = \]

%%

{BRANCO}           { /* ignora */ }
"public"           { token = new Token(yyline, yycolumn, yytext(), "Modificador de acesso"); token.imprimir(); }
"class"            { token = new Token(yyline, yycolumn, yytext(), "Declaração de classe"); token.imprimir(); }
"static"           { token = new Token(yyline, yycolumn, yytext(), "Modificador static"); token.imprimir(); }
"void"             { token = new Token(yyline, yycolumn, yytext(), "Tipo void"); token.imprimir(); }
"main"             { token = new Token(yyline, yycolumn, yytext(), "Método main"); token.imprimir(); }
"int"              { token = new Token(yyline, yycolumn, yytext(), "Tipo int"); token.imprimir(); }
"for"              { token = new Token(yyline, yycolumn, yytext(), "Laço for"); token.imprimir(); }
"System.out.println" { token = new Token(yyline, yycolumn, yytext(), "Comando de saída"); token.imprimir(); }

{ID}               { token = new Token(yyline, yycolumn, yytext(), "Identificador"); token.imprimir(); }
{NUM}              { token = new Token(yyline, yycolumn, yytext(), "Número inteiro"); token.imprimir(); }
{SOMA}             { token = new Token(yyline, yycolumn, yytext(), "Operador '+'"); token.imprimir(); }
{DPONTOS}          { token = new Token(yyline, yycolumn, yytext(), "Dois pontos ':'"); token.imprimir(); }
{PONTOEVIRGULA}    { token = new Token(yyline, yycolumn, yytext(), "Ponto e vírgula"); token.imprimir(); }
{ABREPAR}          { token = new Token(yyline, yycolumn, yytext(), "Abre parêntese"); token.imprimir(); }
{FECHAPAR}         { token = new Token(yyline, yycolumn, yytext(), "Fecha parêntese"); token.imprimir(); }
{ABRECHAV}         { token = new Token(yyline, yycolumn, yytext(), "Abre chave"); token.imprimir(); }
{FECHACHAV}        { token = new Token(yyline, yycolumn, yytext(), "Fecha chave"); token.imprimir(); }
{ABREVET}          { token = new Token(yyline, yycolumn, yytext(), "Abre colchete"); token.imprimir(); }
{FECHAVET}         { token = new Token(yyline, yycolumn, yytext(), "Fecha colchete"); token.imprimir(); }
.                  { token = new Token(yyline, yycolumn, yytext(), "Caractere inválido"); token.dispararExcecao(); }
