import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DialogUtils {
  static Future<void> showMyGeneralDialog({required BuildContext context, String? texto}) async{
    await showGeneralDialog(
      context: context,
      barrierLabel: "Barrier",
      barrierDismissible: false,
      barrierColor: const Color.fromRGBO(0, 175, 170, 0.8),
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (_, __, ___) {
        return Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: MediaQuery.of(context).size.width,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      if (texto != null)
                        Text(texto),

                      SizedBox(
                        width: MediaQuery.of(context).size.width,

                        child: ElevatedButton(onPressed: () {
                          context.pop();
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