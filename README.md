# app_em_construcao

Tela temporária criada com Flutter e animação Lottie, utilizando Clean Architecture. Serve como placeholder visual durante o desenvolvimento dos módulos reais do aplicativo de finanças pessoais.

## Visão Geral

A aplicação exibe uma animação centralizada representando um desenvolvedor em construção, com o texto "Aguarde..." enquanto os módulos principais do sistema são implementados. Toda a arquitetura está organizada com base em DDD e Clean Architecture.

## Estrutura Base do Projeto
```
lib/
├── app/
│   └── app_widget.dart
├── core/
│   ├── constants/
│   ├── services/
│   └── errors/
├── shared/
│   └── widgets/
└── modules/
    └── construction/
        ├── domain/
        ├── application/
        ├── infrastructure/
        └── ui/
            ├── pages/
            │   └── construction_page.dart
            └── widgets/
```
## Instalação e Execução

### 1. Clonar o Repositório

git clone https://github.com/developerfilipe/building_app_flutter.git
cd building_app_flutter

### 2. Instalar as Dependências

flutter pub get

### 3. Executar o Aplicativo

flutter run

Para iOS, é necessário ter o Xcode instalado e o dispositivo confiável.
Para Android, utilize um emulador ou dispositivo real com depuração ativada.

## Animação com Lottie

### 1. Dependência no pubspec.yaml

dependencies:
  lottie: ^2.7.0

### 2. Adição do Arquivo .json

- Criar a pasta:

mkdir -p assets/animations

- Baixar a animação em: https://lottiefiles.com/
- Salvar como: assets/animations/my_animation.json

### 3. Registrar os Assets

flutter:
  uses-material-design: true
  assets:
    - assets/animations/my_animation.json

## Ícone do Aplicativo

### 1. Configuração no pubspec.yaml

dev_dependencies:
  flutter_launcher_icons: ^0.13.1

flutter_icons:
  android: true
  ios: true
  image_path: "assets/icon/app_icon.png"

O ícone deve estar em: assets/icon/app_icon.png com tamanho 1200x1200x.

### 2. Gerar os Ícones

flutter pub get
flutter pub run flutter_launcher_icons:main

## Próximas Etapas

Este projeto atua como base visual e arquitetural. Os módulos reais serão integrados a partir desta estrutura.


## Licença

Este projeto está licenciado sob os termos da licença MIT.
