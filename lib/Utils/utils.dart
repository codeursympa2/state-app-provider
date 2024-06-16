import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/Models/cart_model.dart';

//Acceder à mon modèle de donnée
dynamic getMyCartModel(BuildContext context) {
  return Provider.of<CartModel>(context);
}

//Affichage d'un message
void showSnackBar(BuildContext context,String message){
  final snackBar = SnackBar(
    content: Text(message),
  );

  final scaffoldMessenger = ScaffoldMessenger.of(context);
  scaffoldMessenger.removeCurrentSnackBar(); // Supprime le SnackBar actuel
  scaffoldMessenger.showSnackBar(snackBar); // Affiche le nouveau SnackBar
}