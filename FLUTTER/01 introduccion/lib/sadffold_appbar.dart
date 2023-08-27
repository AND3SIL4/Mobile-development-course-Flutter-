import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    Icon corazon = _like
        ? const Icon(Icons.favorite, color: Colors.white)
        : const Icon(Icons.favorite_border, color: Colors.white);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
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
    );
  }
}
