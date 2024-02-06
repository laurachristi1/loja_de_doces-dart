import 'package:ecommerce_app/btn.dart';
import 'package:flutter/material.dart';

class paginaInicial extends StatelessWidget {
  const paginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 228, 225, 1),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(width: 450),
        Icon(
          Icons.food_bank_outlined,
          size: 75,
        ),
        const SizedBox(height: 25),
        const Text('Christis Sweets',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            )),
        const SizedBox(height: 10),
        Text('Produtos de ótima qualidade',
            style: TextStyle(color: Colors.black, fontSize: 22)),
        const SizedBox(height: 25),
        MeuBtn(
            onTap: () =>
                Navigator.pushNamed(context, '/pagina_inicialProdutos'),
            child: const Icon(Icons.arrow_forward))
      ]),
    );
  }
}
