import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const PantallaMain());
}

class PantallaMain extends StatefulWidget {
  const PantallaMain({super.key});

  @override
  State<PantallaMain> createState() => _PantallaMainState();
}

class _PantallaMainState extends State<PantallaMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Pantalla principal"),
      ),

      body: Row(
        children: [
          ElevatedButton(onPressed: () {
            context.push("/segundaPantalla"); // "push" Metodo para pasar de pantalla con boton de regresar
          }, child: Text("Segunda pantalla con boton regresar")),

          ElevatedButton(onPressed: () {
            context.go("/segundaPantalla"); // "go" Metodo para pasar de pantalla sin boton de regresar
          }, child: Text("Segunda pantalla sin boton regresar")),
        ],
      ),
      
    );
  }
}