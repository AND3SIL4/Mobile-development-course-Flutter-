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

  @override
  Widget build(BuildContext context) {
    String _text = _like 
        ? "Doesn't like" 
        : 'Like';
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
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        shape: CircularNotchedRectangle(),
        // ignore: avoid_unnecessary_containers
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  iconSize: 40,
                  onPressed: null,
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
              IconButton(
                  iconSize: 40,
                  onPressed: null,
                  icon: Icon(
                    Icons.alarm,
                    color: Colors.white,
                  )),
              IconButton(
                  iconSize: 40,
                  onPressed: null,
                  icon: Icon(
                    Icons.task,
                    color: Colors.white,
                  )),
              IconButton(
                  iconSize: 40,
                  onPressed: null,
                  icon: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
