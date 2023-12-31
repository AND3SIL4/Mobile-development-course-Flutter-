import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Hola mundo con Flutter',
    home: SafeArea(child: MyHelloWorldApp()),
  ));
}

///Creacion de clase principal para introduccion
class MyHelloWorldApp extends StatelessWidget {
  const MyHelloWorldApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            height: 60,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(color: Colors.cyan),
            child: const Row(
              children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.menu_sharp),
                  tooltip: 'Bottom de navegacion',
                ),
                Expanded(child: Text('App Hola Mundo')),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.search),
                  tooltip: 'Boton de busqueda',
                )
              ],
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Noble, pero ningun traido...',
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
