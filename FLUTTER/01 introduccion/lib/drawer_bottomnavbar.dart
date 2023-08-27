// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Quitar el icono de debugg
      debugShowCheckedModeBanner: false,
      title: 'Scaffold',
      home: MyHomePage(title: 'Scaffold Home'),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  // ignore: must_be_immutable
  final Icon _corazon = Icon(Icons.favorite_border, color: Colors.white);
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _like = false;
  int _elementoSeleccionado = 0;
  String textoActualizado = '0: Home';

  @override
  Widget build(BuildContext context) {
    String _text = _like ? "Doesn't like" : 'Like';
    Icon corazon = _like
        ? const Icon(Icons.favorite, color: Colors.white)
        : const Icon(Icons.favorite_border, color: Colors.white);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _like = !_like;
              });
            },
            icon: corazon,
          ),
        ],
      ),
      drawer: Drawer(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DrawerHeader(
                  child: Text(
                'Menu Drawer',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
              Text('Enlace uno'),
              Text('Enlace dos'),
              Text('Enlace tres'),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            _like = !_like;
          });
        },
        backgroundColor: Colors.black,
        icon: corazon,
        label: Text(_text),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 40,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.white,
                size: 40,
              ),
              label: 'Supervised'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.assessment,
                color: Colors.white,
                size: 40,
              ),
              label: 'Assessment'),
        ],
        currentIndex: _elementoSeleccionado,
        onTap: _itemPulsado,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textoActualizado,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  void _itemPulsado(int index) {
    setState(() {
      _elementoSeleccionado = index;
      switch (_elementoSeleccionado) {
        case 0:
          textoActualizado = '$_elementoSeleccionado: Home';
          break;
        case 1:
          textoActualizado = '$_elementoSeleccionado: Supervised';
          break;
        case 2:
          textoActualizado = '$_elementoSeleccionado: Assessment';
          break;
      }
    });
  }
}
