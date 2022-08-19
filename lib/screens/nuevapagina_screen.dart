import 'package:flutter/material.dart';

class NuevapaginaScreen extends StatelessWidget {
  const NuevapaginaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text('Nueva página'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Nueva página'),
      ),
    );
  }
}
