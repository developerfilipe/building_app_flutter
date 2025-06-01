// ignore: dangling_library_doc_comments
/// @title app_widget Page
/// 
/// @description Pagina focada em personalização do app, 
/// com animação de construção.
/// 
/// @author Filipe Souza Santos
/// @date 2025-05-31
/// @version 1.0.0
/// @license MIT License
///

/// @description importa o material de design.
import 'package:flutter/material.dart';
/// @description Importa a página de construção temporária.
import 'package:building_app/modules/dev_construction/ui/pages/construction_page.dart';
///
/// @description Configuração raiz do aplicativo.
///
class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    /// @description Retorna o MaterialApp com tema e página inicial
    /// @description O MaterialApp é o widget raiz do aplicativo Flutter.
    /// @description Ele define o tema, título e a página inicial do aplicativo.  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Building App',
      // Define o tema global do aplicativo 
      theme: ThemeData.dark(), // Defina o tema global aqui
      home: const ConstructionPage(), // Troque isso depois pela Home real
    );
  }
}
