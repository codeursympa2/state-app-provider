import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/Consts/consts.dart';
import 'package:state_app/Models/cart_model.dart';
import 'package:state_app/Pages/MyCatalog/my_catalog.dart';

void main() {
  runApp(
      /* Gestion de l'état centralisée
      Plutôt que de passer manuellement des instances de
      CartModel à travers les constructeurs de widgets,
      Provider les rend disponibles automatiquement via le contexte.
      */
      ChangeNotifierProvider(
          create: (context) => CartModel(),
          child: const MyApp() ,
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyCatalog(),
      debugShowCheckedModeBanner: false,
    );
  }
}




