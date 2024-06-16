import 'package:flutter/material.dart';
import 'package:state_app/Consts/consts.dart';
import 'package:state_app/Utils/utils.dart';

class MyCart extends StatelessWidget{
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {

    dynamic productsCartModel = getMyCartModel(context);

    return SafeArea(child: Scaffold(
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
                  title: Text(productsCartModel.items[i].name),
                ),
          );
        }): const Center(child: Expanded(child: Text("Oups! pas de produit dans le panier")),),
      ),
    ));
  }


}