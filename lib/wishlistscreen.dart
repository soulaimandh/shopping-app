import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/product_cards_search.dart';

import 'homescreen.dart';
import 'searchscreen.dart';
import 'categoryscreen.dart';
import 'accountscreen.dart';



class whishlistscreen  extends StatefulWidget {
  @override
  _whishlistscreenState createState() => _whishlistscreenState();
}

class _whishlistscreenState extends State<whishlistscreen> {
  Widget buildSearchCat(){
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: (20 / 375.0) * MediaQuery.of(context).size.width,
      ),

      child :Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          //searchBar
          children: <Widget>[
            SizedBox(height: 10),
            Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color:Colors.black26 ,
                        blurRadius: 6,
                        offset: Offset(0,2),
                      )
                    ]
                ),
                height: 60,
                child:TextField(
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xffFF5353),
                        ),
                        hintText: 'Search Product',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )
                    )
                )

            )
          ]
      ),

    );

  }
  Widget buildProductWish(){
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: (20 / 375.0) * MediaQuery.of(context).size.width
      ),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ProductCardsSearch(
                  image: "assets/images/product1.jpg",
                  title: "Men's Sports Shoes",
                  price: "\$24.0",
                  discount: "\$30.0",
                  press: () {},
                ),
                buildpositionedRemove(),
              ]
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: [
                  ProductCardsSearch(
                    image: "assets/images/product2.jpg",
                    title: "Women's blue leather bag",
                    price: "\$240.0",
                    discount: "\$300.0",
                    press: () {},
                  ),
                  buildpositionedRemove(),
                ]
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ProductCardsSearch(
                  image: "assets/images/product3.jpg",
                  title: "Unisex Metal Frame Sunglasses",
                  price: "\$36.9",
                  press: () {},
                ),
                buildpositionedRemove(),
              ]
            ),
          ),
        ]
      ),
    );
  }
  Widget buildpositionedRemove(){
    return Positioned(
      top:20,
      right:15,
      child: Container(
        height: 50,
        width: 30,
        child: MaterialButton(
          shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          padding: EdgeInsets.all(0.0),
          color: Colors.white,
          child: Icon(
            Icons.delete,
            color: Colors.redAccent,
          ),
          onPressed: (){},
        ),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15),
              Center(
                child: Text(
                  'Wish List',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height:20),
              buildSearchCat(),
             SizedBox(height: 20),
              buildProductWish(),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 7),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15),
            ),
          ],
        ),
        child: SafeArea(
            top: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.storefront_outlined,
                    size: 30,
                    color: Colors.black.withOpacity(0.3),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>homescreen()));
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.interests_outlined,
                    size: 30,
                    color: Colors.black.withOpacity(0.3),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>categoryscreen()));
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black.withOpacity(0.3),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>searchscreen()));
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 30,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>whishlistscreen()));
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.account_circle_outlined,
                    size: 30,
                    color: Colors.black.withOpacity(0.3),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>accountscreen()));
                  },
                ),
              ],
            )
        ),
      ),
    );
  }
}

