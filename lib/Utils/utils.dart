import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/Models/cart_model.dart';

//Acceder à mon modèle de donnée
getMyCartModel(BuildContext context) {
  return Provider.of<CartModel>(context);
}