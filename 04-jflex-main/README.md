# 04-jflex

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

</pre>

## Arquivo: entrada01.txt:
<pre>
abcde
abc

abc123
123abcd
456abc
7890
</pre>

## Arquivo: entrada02.txt:

<pre>
1
a

2
b
1a
a2
b1
aba
121
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