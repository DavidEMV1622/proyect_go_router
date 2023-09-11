import 'package:go_router/go_router.dart';
import 'package:proyect_go_router/segundaPantall.dart';
import 'package:proyect_go_router/terceraPantalla.dart';

import '../primeraPantalla.dart';

// Creacion de la clase para manejar las rutas
final routes = GoRouter(
  initialLocation: '/primeraPantalla', /* Al iniciar la aplicacion, se 
                                      ejecuta primero esta ruta */
  /* "routes" manejo de cada subruta para que salga en el abbar un 
  boton para regresar a la anterior pantalla */
  
  routes: [ 
    GoRoute( // "GoRoute" permite crear cada ruta
      path: '/primeraPantalla', // Plantilla para llamar las pantallas
      builder: (context, state) => PantallaMain(), // Llamada de las pantallas a cambiar
    ),
    
    GoRoute(
      path: '/segundaPantalla',
      builder: (context, state) => SegundaPantlla(),
    ),

    GoRoute(
      path: '/terceraPantalla',
      builder: (context, state) => TerceraPantalla(),
    ),
  ],
);