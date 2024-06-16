import 'package:flutter/material.dart';
import 'package:state_app/Consts/consts.dart';
import 'package:state_app/Utils/common_widgets.dart';
import 'package:state_app/Utils/utils.dart';

class MyCart extends StatelessWidget{
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {

    dynamic productsCartModel = getMyCartModel(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon panier'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(padding),
        child: productsCartModel.items.length > 0 ? ListView.builder(
            itemCount: productsCartModel.items.length,
            itemBuilder:(BuildContext context,int i){
              return Card(
                child: ListTile(
                  title: Text('${productsCartModel.items[i].name} x ${productsCartModel.items[i].qt}'),
                  trailing: buttonIconFiled(Icons.remove_shopping_cart_rounded, Colors.red, (){
                    final deletedProductName=productsCartModel.items[i].name; //On s'auvegrade le nom avant suppression
                    productsCartModel.removeItem(productsCartModel.items[i]); //Suppression
                    showSnackBar(context, "$deletedProductName supprimé(e) du panier."); //message
                  }),
                ),
          );
        }): const Center(child: Expanded(child: Text("Oups! pas de produit dans le panier")),),
      ),
    );
  }


}