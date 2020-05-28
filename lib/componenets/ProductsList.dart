import 'package:flutter/material.dart';
import 'package:shoppingcart/pages/product_detail.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list = [
    {
      "prod_name": "Coat",
      "prod_img": "assets/products/coat.jpg",
      "prod_price": 15000,
      "prod_oldprice": 20000,
    },
    {
      "prod_name": "Dress",
      "prod_img": "assets/products/dresslady.jpg",
      "prod_price": 25000,
      "prod_oldprice": 30000,
    },
    {
      "prod_name": "Heels",
      "prod_img": "assets/products/heels.jpg",
      "prod_price": 2500,
      "prod_oldprice": 5000,
    },
    {
      "prod_name": "Shoes",
      "prod_img": "assets/products/menshoes.jpg",
      "prod_price": 3000,
      "prod_oldprice": 5000,
    },
    {
      "prod_name": "Men Watch",
      "prod_img": "assets/products/digital.jpg",
      "prod_price": 200,
      "prod_oldprice": 500,
    },
    {
      "prod_name": "Lady Watch",
      "prod_img": "assets/products/rosegold.jpg",
      "prod_price": 150,
      "prod_oldprice": 300,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            prodName: product_list[index]["prod_name"],
            prodImage: product_list[index]["prod_img"],
            prodPrice: product_list[index]["prod_price"],
            prodOldPrice: product_list[index]["prod_oldprice"],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final String prodName;
  final String prodImage;
  final int prodPrice;
  final int prodOldPrice;

  SingleProduct(
      {this.prodName, this.prodImage, this.prodPrice, this.prodOldPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prodName,
        child: Material(
          child: InkWell(
            onTap: () {
              return Navigator.of(context)
                  .push(new MaterialPageRoute(builder: (context) {
                return ProductDetail(
                  prodDetailName: prodName,
                  prodDetailImage: prodImage,
                  prodDetailPrice: prodPrice,
                  prodDetailOldPrice: prodOldPrice,
                );
              }));
            },
            child: GridTile(
              child: Image.asset(
                prodImage,
                fit: BoxFit.cover,
              ),
              footer: Container(
                color: Colors.white54,
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      prodName,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  title: Text(
                    "$prodPrice PKR",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "$prodOldPrice PKR",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
