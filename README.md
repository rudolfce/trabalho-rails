# Trabalho 5 de Programação web (Professor Bruno Muller)

O trabalho desenvolvido foi um blog simples.

## Modelos

O blog é composto pelos seguintes modelos:

* Article: um artigo do blog
* Author: um autor de artigos
* Tag: um marcador para artigos

### Article

O modelo Article possui apenas um título e um corpo, e
pertence a um autor. Ele possui uma ligação muitos para
muitos com as tags.

### Author

O autor possui um nome e uma bio. Ele tem uma ligação de
um para muitos com os artigos.

### Tag

Usada apenas para adicionar marcadores (e filtros) aos
artigos. Possui apenas um nome.

## Rotas definidas

A página inicial é a listagem de artigos.