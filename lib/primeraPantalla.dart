import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:proyect_go_router/widget/pop_up.dart';

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

      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            context.push("/segundaPantalla"); // "push" Metodo para pasar de pantalla con boton de regresar
          }, child: Text("Segunda pantalla con boton regresar")),

          ElevatedButton(onPressed: () {
            context.go("/segundaPantalla"); // "go" Metodo para pasar de pantalla sin boton de regresar
          }, child: Text("Segunda pantalla sin boton regresar")),
        

          ElevatedButton(
            //onPressed:() => usuarioExisteModal(context),
            onPressed:() {
              DialogUtils.showMyGeneralDialog(context: context, );
            },
          child: Text("Segunda pantalla sin boton regresar")),
        ],
      ),
      
    );
  }
  void usuarioExisteModal(BuildContext context) {
    final size = MediaQuery.of(context).size;
    showGeneralDialog(
      context: context,
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: const Color.fromRGBO(0, 175, 170, 0.8),
      
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (_, __, ___) {
        return Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: MediaQuery.of(context).size.width,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("hola"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,

                        child: ElevatedButton(onPressed: () {
                          
                        }, child: Text("Hola")),
                      )
                    ],
                  ),
                ),
              ) 
            ),
          ),
        );
      }
    );
  }
}