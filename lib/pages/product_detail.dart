import 'package:flutter/material.dart';
import 'package:shoppingcart/componenets/ProductsList.dart';

class ProductDetail extends StatefulWidget {
  final String prodDetailName;
  final String prodDetailImage;
  final int prodDetailPrice;
  final int prodDetailOldPrice;

  ProductDetail(
      {this.prodDetailName,
      this.prodDetailImage,
      this.prodDetailPrice,
      this.prodDetailOldPrice});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text("ShopApp"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 250.0,
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(
                    widget.prodDetailImage,
                    fit: BoxFit.cover,
                  ),
                ),
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Text(
                        widget.prodDetailName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          "${widget.prodDetailOldPrice} PKR",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey),
                        )),
                        Expanded(
                            child: Text(
                          "${widget.prodDetailPrice} PKR",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // ========= First Buttons==============
            Row(
              children: <Widget>[
                //==========Size Button============
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Size"),
                              content: Text("Choose the Size"),
                              actions: <Widget>[
                                MaterialButton(
                                  child: Text("Close"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  textColor: Colors.blue,
                                )
                              ],
                            );
                          });
                    },
                    textColor: Colors.grey,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "Size",
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Quantity"),
                              content: Text("Choose Quantity"),
                              actions: <Widget>[
                                MaterialButton(
                                  child: Text("Close"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  textColor: Colors.blue,
                                )
                              ],
                            );
                          });
                    },
                    textColor: Colors.grey,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "Quantity",
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Colors"),
                              content: Text("Choose Color"),
                              actions: <Widget>[
                                MaterialButton(
                                  child: Text("Close"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  textColor: Colors.blue,
                                )
                              ],
                            );
                          });
                    },
                    textColor: Colors.grey,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "Color",
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ),
                        Expanded(
                          child: Icon(Icons.arrow_drop_down),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            //============Second Button==================

            Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    textColor: Colors.white,
                    color: Colors.red,
                    child: Text("Buy now"),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.red,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {})
              ],
            ),
            Divider(),
            ListTile(
              title: Text("Product Detail"),
              subtitle: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
            ),
            Divider(),

            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Product Name:"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("${widget.prodDetailName}"),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Product Model:"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("${widget.prodDetailName} ABC"),
                )
              ],
            ),

            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Product Quality:"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("${widget.prodDetailName} is in bestest quality"),
                )
              ],
            ),
            Divider(
              color: Colors.red,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Recent Products",
                style: TextStyle(
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
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
      ),
    );
  }
}
