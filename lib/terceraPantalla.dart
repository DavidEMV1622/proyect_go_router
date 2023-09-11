import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TerceraPantalla extends StatefulWidget {
  const TerceraPantalla({super.key});

  @override
  State<TerceraPantalla> createState() => _TerceraPantallaState();
}

class _TerceraPantallaState extends State<TerceraPantalla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Tercera pantalla"),
      ),

      
    );
  }
}