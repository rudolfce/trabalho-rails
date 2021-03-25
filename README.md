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

A página inicial é a listagem de artigos. Além da
listagem de artigos, há uma listagem de autores. Essas
páginas permitem criar artigos e autores normalmente.

Um artigo recém criado deve ter um autor correspondente.

A visualização de um artigo mostra seu autor e suas tags.
Ao clicar no autor, o usuário é conduzido à página de
detalhe desse autor. Ao clicar em uma tag, é exibida
uma listagem filtrada de artigos que contém a mesma tag.

No detalhe do autor é possível listar os artigos escritos
por ele.

Para adicionar tags a um artigo, a lista de tags deve ser
fornecida no campo correspondente na tela de edição de
artigos. As tags devem ser separadas por vírgulas. Tags
existentes são vinculadas ao artigo, e tags ainda
inexistentes são criadas.

## Testes

Os testes podem ser rodados usando o comando rake
correspondente

```bash
$ rake test
```