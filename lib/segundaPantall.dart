import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SegundaPantlla extends StatefulWidget {
  const SegundaPantlla({super.key});

  @override
  State<SegundaPantlla> createState() => _SegundaPantllaState();
}

class _SegundaPantllaState extends State<SegundaPantlla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Segunda pantalla"),
      ),

      body: ElevatedButton(onPressed: () {
        context.push("/terceraPantalla");
      }, child: Text("Tercera pantalla a estar")),
    );
  }
}