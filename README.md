# uol-beer-app

Aplicativo para o processo de seleção da UOL PagSeguro.

Desenvolvido por Paulo Henrique Lima Lourenço.


## Screenshots

<img src="https://i.imgur.com/00ldNk6.png" height="400"> <img src="https://i.imgur.com/aUgIcle.png" height="400">

## Ferramentas e tecnologias utilizadas

- Xcode 10.2
- Swift 4.2
- CocoaPods

## Arquitetura utilizada

Clean Swift (VIP)

https://hackernoon.com/introducing-clean-swift-architecture-vip-770a639ad7bf

## Pods utilizados

#### SDWebImage (https://github.com/rs/SDWebImage)
Para carregar imagens pela URL e gerenciamento de cache.

#### PromiseKit (https://github.com/mxcl/PromiseKit)
Para trabalhar melhor com métodos assíncronos.

#### Cuckoo (https://github.com/Brightify/Cuckoo)
Para mockar e stubar classes no teste unitário.

## Instruções

Dê `pod install` e abra o projeto pelo .xcworkspace.

## Extras

Apesar de não pedido, adicionei mais algumas coisas básicas ao projeto:

### Testes unitários

Testei as camadas de regras de negócio e de apresentação (Interactor e Presenter) das duas telas.

### Scroll infinito

Paginação para carregar de 20 em 20 cervejas.
