
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/Consts/consts.dart';
import 'package:state_app/Data/data.dart';
import 'package:state_app/Models/cart_model.dart';
import 'package:state_app/Pages/MyCart/my_cart.dart';
import 'package:state_app/Utils/utils.dart';

class MyCatalog extends StatelessWidget{
  const MyCatalog({super.key});

  @override
  Widget build(BuildContext context) {

    // Je recupère mon modèle de données via le Provider.
    var cart = getMyCartModel(context);
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("State App with provider"),
            actions: [
              IconButton(
                tooltip: "Voir mon panier",
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(
                        builder: (BuildContext context){
                          return const MyCart();
                        }
                    ));
                  },
                  icon: const Icon(Icons.shopping_cart)
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(padding),
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int i) {
                return Card(
                  child: ListTile(
                    title: Text('${products[i].name} | ${products[i].qt}'),
                    trailing: IconButton(onPressed: (){
                      //Quand on choisit un produit on l'ajoute au panier
                      cart.addItem(products[i]);
                    },
                      icon: const Icon(Icons.shopping_cart_checkout_outlined),),
                    leading: Text('${i+1}') ,
                  ),
                );
              },

            )
          ),
        )
    );
  }
}