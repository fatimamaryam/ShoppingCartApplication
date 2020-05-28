import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:shoppingcart/componenets/horizontal_listview.dart';
import 'package:shoppingcart/componenets/ProductsList.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
    home:Home()
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {


    Widget ImageCarosel=new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/shoe.jpg"),
          AssetImage("assets/clothing.jpg"),
          AssetImage("assets/perfume.jpg"),
          AssetImage("assets/watch.jpg"),

          AssetImage("assets/laptop.jpg"),
        ],
        animationCurve: Curves.fastOutSlowIn,
        autoplay: true,
        animationDuration: Duration(milliseconds: 1000),
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text("ShopApp"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white,), onPressed: null,),
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,),
            onPressed: null,),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text("Fatima Maryam"),
              accountEmail: Text("fatima@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.account_circle, color: Colors.white, size: 50.0,),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.red
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Acount"),
                leading: Icon(Icons.account_circle, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(Icons.category, color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favorites"),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),
            Divider(
              height: 40,
              color: Colors.grey,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.question_answer, color: Colors.blue,),
              ),
            ),



          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          //image carosel
          ImageCarosel
          //Text Categories
          ,Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Categories",style: TextStyle(letterSpacing: 1.0,fontWeight: FontWeight.bold,fontSize: 16.0),),
          ),
          //horizontal listView
          HorizontalListView(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Recent Products",style: TextStyle(letterSpacing: 1.0,fontWeight: FontWeight.bold,fontSize: 16.0),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300.0,
              child: Product(),
            ),
          )
        ],
      ),
    );

  }
}