import 'package:flutter/material.dart';
import 'package:transicion_app/screens/nuevapagina_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: const Center(
        // ignore: unnecessary_const
        child: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.pages),
          onPressed: () {
            Navigator.push(context, _crearRuta());
          }),
    );
  }

//------------------------ _crearRuta ------------------------
  Route _crearRuta() {
    //Navegación normal
    //-----------------
    // return PageRouteBuilder(
    //     pageBuilder: (BuildContext context, Animation<double> animation,
    //             Animation<double> secondaryAnimation) =>
    //         NuevapaginaScreen());

    //Navegación con transición
    //-------------------------
    return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            NuevapaginaScreen(),
        transitionDuration: Duration(milliseconds: 2000),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final curvedAnimation =
              CurvedAnimation(parent: animation, curve: Curves.easeInOut);
          //----------- Slide -----------
          // return SlideTransition(
          //   position: Tween<Offset>(begin: Offset(-0.5, 1.0), end: Offset.zero)
          //       .animate(curvedAnimation),
          //   child: child,
          // );
          //----------- Scale -----------
          // return ScaleTransition(
          //     child: child,
          //     scale:
          //         Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation));
          //----------- RotationTransition -----------
          // return RotationTransition(
          //     child: child,
          //     turns:
          //         Tween<double>(begin: 0, end: 1.0).animate(curvedAnimation));
          // return FadeTransition(
          //     child: child,
          //     opacity:
          //         Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation));
          //----------- Mezclar dos transiciones -----------
          return RotationTransition(
              child: FadeTransition(
                  child: child,
                  opacity: Tween<double>(begin: 0.0, end: 1.0)
                      .animate(curvedAnimation)),
              turns:
                  Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation));
        });
  }
}
