import 'package:flutter/material.dart';

class MeuBtn extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  
  
  const MeuBtn({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(247,191,190, 8),
          borderRadius:BorderRadius.circular(12)
          ),
          padding: const EdgeInsets.all(25),
          child: child,
        ),
       );  
  }
}

// Cria um botão que pode fazer algo quando clicado 
//e mostrar o que você quiser dentro dele.
