import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: PaginaInicialProd()));
}

class PaginaInicialProd extends StatelessWidget {
  const PaginaInicialProd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Compras'),
        backgroundColor: Color.fromRGBO(255,228,225, 1),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 150,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    itemContainer('assets/smoothie.png', 'Smoothie'),
                    itemContainer('assets/rosquinha.png', 'Donuts'),
                    itemContainer('assets/panqueca.png', 'Panquecas'),
                    itemContainer('assets/bisc.png', 'Biscoitos'),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 25,
                children: [
                  productPriceContainer('Bolo de Cenoura', 'R\$20,00', 'assets/bolo_cenoura.png'),
                  productPriceContainer('Smoothie', 'R\$15,00', 'assets/smoothieFruta.png'),
                  productPriceContainer('Panquecas', 'R\$40,00', 'assets/panquecaBoa.png'),
                  productPriceContainer('Cookies', 'R\$15,00', 'assets/biscoito.png'),
                  productPriceContainer('Bolacha', 'R\$10,00', 'assets/bolacha.png'),
                  productPriceContainer('Donuts Chocolate', 'R\$30,00', 'assets/real.png'),
                  productPriceContainer('Bolo de Chocolate', 'R\$60,00', 'assets/boloChoco.png'),
                  productPriceContainer('Donuts Chocolate Confete', 'R\$30,00', 'assets/donutsChoco.png'),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(),
    );
  }

  Widget itemContainer(String imagePath, String itemName) {
    return Container(
      width: 130,
      height: 110,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 192, 203, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 45, height: 45),
          SizedBox(height: 9),
          Text(itemName),
        ],
      ),
    );
  }

  Widget productPriceContainer(
      String productName, String productPrice, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 228, 225, 4),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(247, 191, 190, 8).withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 80),
          Text(productName),
          Text(productPrice),
        ],
      ),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Produtos"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Busca"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.pinkAccent[100],
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}