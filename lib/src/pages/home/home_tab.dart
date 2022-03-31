import 'package:app_comerce/src/config/custom_colors.dart';
import 'package:app_comerce/src/pages/home/components/item_tile.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:app_comerce/src/config/app_data.dart' as app_data;
import 'components/category_tile.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<String> categories = [
    'Frutas',
    'Grãos',
    'Verduras',
    'Temperos',
    'Cereais',
  ];

  String selectedCategory = 'Frutas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      // App bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text.rich(
            TextSpan(
              style: const TextStyle(
                fontSize: 30,
              ),
              children: [
                TextSpan(text: 'Vare', style: TextStyle(
                  color: CustomColors.customSwatchColor,
                )),
                const TextSpan(text: 'jão', style: TextStyle(
                  color: Colors.orange,
                ) ),
              ]

        )),

        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              right: 15,
            ),
            child: GestureDetector(
              onTap: () {

              },
              child: Badge(
                badgeColor: Colors.red,
                badgeContent: const Text('2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),),
                child: Icon(Icons.shopping_cart,
                  color: CustomColors.customSwatchColor,),
              ),
            ),
          )
        ],

      ),

      //Compo pesquisa

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: 'Pesquise aqui...',
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 14,
                ),
                prefixIcon: Icon(Icons.search, color: CustomColors.customSwatchColor,
                size: 21,),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  )
                )
              ),
            ),
          ),

          //Categorias

          Container(
            padding: const EdgeInsets.only(left: 25,),
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,index) {
                return CategoryTile(
                  onPressed: () {
                    setState(() {
                      selectedCategory = app_data.categories[index];
                    });
                  },
                  category: app_data.categories[index],
                  isSelected: app_data.categories[index] == selectedCategory,
                );
              },
              separatorBuilder: (_,index) {
                return const SizedBox(width: 10,);
              },
              itemCount: app_data.categories.length,
            ),
          ),

          //Grid

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 9 / 11.5,
                ),
                itemCount: app_data.items.length,
                itemBuilder: (_, index) {
                  return ItemTile(
                    item: app_data.items[index],
                  );
                },
            ),
          )
          
        ],
      ),
    );
  }
}
