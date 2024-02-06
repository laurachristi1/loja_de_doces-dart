import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem( icon: Icon(Icons.production_quantity_limits), label: "Produtos"),
          BottomNavigationBarItem( icon: Icon(Icons.search), label: "Busca"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil")
        ],
        onTap: (valor) {
          print(valor);
        },
      ),
    );
  }
}
