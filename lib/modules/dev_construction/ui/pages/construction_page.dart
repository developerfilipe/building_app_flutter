// ignore: dangling_library_doc_comments
/// @title Construction Page
/// 
/// @description Pagina focada em personalização do app, 
/// com animação de construção.
/// 
/// @author Filipe Souza Santos
/// @date 2025-05-31
/// @version 1.0.0
/// @license MIT License
///

/// @description importa o material de design,
/// e a biblioteca lottie de animações
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

///
/// @description Tela temporária exibida enquanto o app está sendo desenvolvido.
///
class ConstructionPage extends StatelessWidget {
  const ConstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    /// @description Retorna um Scaffold com fundo roxo e uma animação de desenvolvimento.
    return Scaffold(
      /// @description AppBar com título e cor personalizada.
      appBar: AppBar(
        title: const Text('Em desenvolvimento'),    
        backgroundColor: const Color.fromARGB(221, 24, 0, 30),
      ),
      /// @description Cor de fundo do Scaffold.
      backgroundColor: const Color.fromARGB(221, 19, 0, 25),
      
      /// @description Corpo do Scaffold com animação e texto centralizados.
      body: Center(
        child: Column(
          /// @description Centraliza o conteúdo vertical e horizontalmente.
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          /// @description Alinha os filhos no centro do eixo principal.  
          mainAxisAlignment: MainAxisAlignment.center,
          /// @description Lista de widgets filhos.
          children: [
            /// @description Animação Lottie de construção.
            Lottie.asset(
              'assets/animations/my_animation.json',
              /// @description Define a largura e altura da animação.
              width: 400,
              /// @description Define a altura da animação.
              height: 240,
            ),

            /// @description Espaçamento entre a animação e o texto.
            const SizedBox(height: 48),
            /// @description Texto exibido abaixo da animação.
            const Text(
              'Aguarde...',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w200,
                color: Color.fromARGB(179, 215, 215, 215),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
