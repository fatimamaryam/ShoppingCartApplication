import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
         Categories(
           itemImage: "assets/categories/dress.png",
           itemName: "Dress",
         ),
          Categories(
            itemImage: "assets/categories/suit.png",
            itemName: "Suites",
          ),
          Categories(
            itemImage: "assets/categories/shoes.png",
            itemName: "Shoes",
          ),
          Categories(
            itemImage: "assets/categories/perfume.png",
            itemName: "Perfume",
          ),
          Categories(
            itemImage: "assets/categories/watch.png",
            itemName: "Watch",
          ),


        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
final String itemImage;
final String itemName;

Categories({this.itemImage,this.itemName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){},
            child: Container(

              width: 100.0,

              child: ListTile(
                title: Image.asset(itemImage,width: 50.0,height: 50.0,),
                subtitle: Text(itemName,textAlign: TextAlign.center ,),


          ),
            ),

      ),
    );
  }
}

