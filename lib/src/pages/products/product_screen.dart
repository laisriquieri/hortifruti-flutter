import 'package:app_comerce/src/models/item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key, required this.item,}) : super(key: key);

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      
      body: Column(
        children: [
          Expanded(
              child:
              Image.asset(item.imgUrl),
          ),
          
          Expanded(child: Container(
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  offset: const Offset(0, 2),
                ),
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Nome - Quantidade

                Row(
                  children: [
                    Expanded(
                      child: Text(
                        item.itemName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Container(
                      height: 30,
                      width: 70,
                      color: Colors.red,
                    ),

                  ],
                )

                // Preço


                //Descrição


                //Botão
              ],
            ),
          ),
          ),
          
        ],
      ),
    );
  }
}
