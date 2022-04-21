import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Pagina 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Pagina 2'),
      ),
    );
  }
}
