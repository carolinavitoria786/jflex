# 02-jflex

## Instalação:
`sudo apt update`

`sudo apt install jflex`

# Exemplo: 

## Arquivo: exemplo.flex

<pre>
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

</pre>

## Arquivo: entrada01.txt:
<pre>
aaaaababa
ababababa
babababab
baaaaaaaa
cabababab
</pre>

## Arquivo: entrada02.txt:

<pre>
11a00a11a00a11a00b11a00b11a
bbbbba
aaababababbb
</pre>

## Execução:
`jflex exemplo.flex`

`javac Yylex.java`

`java Yylex entrada01.txt`

`java Yylex entrada02.txt`

## Jogando a saída num arquivo:
`java Yylex entrada01.txt > saida01.txt`

`java Yylex entrada02.txt > saida02.txt`

# Git
`git add .`

`git commit -m "Exemplo"`

`git push`