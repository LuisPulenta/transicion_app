import 'package:flutter/material.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Pagina 1'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.next_plan_outlined),
        onPressed: () {},
      ),
    );
  }
}
