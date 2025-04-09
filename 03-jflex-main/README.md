# 03-jflex

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
digito = [0-9]
palavra = {letra}+
numero = {digito}+

%%

/* Regras e Ações Associadas: seção de instruções para 
 * o analisador léxico. 
 */

{numero} {System.out.println(" -> Encontrei um {número}");}
{palavra} {System.out.println(" -> Encontrei uma {palavra}");}

</pre>

## Arquivo: entrada01.txt:
<pre>
abcde
abc
abc123
123abcd
123abc
123
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