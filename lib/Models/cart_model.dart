
import 'package:flutter/material.dart';
import 'package:state_app/Models/product_model.dart';

/*
  En héritant de ChangeNotifier, CartModel peut informer
  les widgets dépendants chaque fois que son état change,
  ce qui permet une mise à jour réactive de l'interface utilisateur.
*/
class CartModel extends ChangeNotifier{
  // Liste des produits dans le panier.
  final List<ProductModel> _items = [];

  List<ProductModel> get items => _items;

  void addItem(ProductModel p){
    items.insert(0, p);
    notifyListeners(); // Notifie les auditeurs que l'état a changé.
  }

  void removeItem(ProductModel p){
    items.remove(p);
    notifyListeners(); // Notifie les auditeurs que l'état a changé.

  }
}