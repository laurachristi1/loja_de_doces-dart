import 'package:ecommerce_app/paginas/pagina_inicial.dart';
import 'package:ecommerce_app/paginas/pagina_inicialProdutos.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const paginaInicial(),
      routes: {
        '/pagina_inicial': (context) => const paginaInicial(),
        '/pagina_inicialProdutos': (context) => const PaginaInicialProd(),
      },
    );
  }
}
