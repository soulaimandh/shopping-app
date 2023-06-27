import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/icon_button_with_counter.dart';
import 'components/product_cards_search.dart';

import 'homescreen.dart';
import 'categoryscreen.dart';
import 'wishlistscreen.dart';
import 'accountscreen.dart';
import 'yourcartscreen.dart';
import 'filterscreen.dart';


class searchscreen  extends StatefulWidget {
  @override
  _searchscreenState createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {
  Widget buildSearchbar(){
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: (20 / 375.0) * MediaQuery.of(context).size.width,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //searchBar
          Container(
            width: MediaQuery.of(context).size.width * 0.72,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color:Colors.black26 ,
                    blurRadius: 6,
                    offset: Offset(0,2),
                  )
                ]
            ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: (20 / 375.0) * MediaQuery.of(context).size.width,
                vertical: (9 / 375.0) * MediaQuery.of(context).size.height
            ),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search Here....",
            prefixIcon: SvgPicture.asset(
              "assets/icons/Search Icon.svg",
              fit: BoxFit.scaleDown,
              color: Colors.redAccent,
            )
        ),
      ),
    ),
    //IconButton
    IconBtnWithCounter(
      svgSrc: "assets/icons/adjust.svg",
      press: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>filterscreen()));
      }
    ),
    ],
    ),
    );
    }
  Widget buildProduct(){
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: (20 / 375.0) * MediaQuery.of(context).size.width,
      ),
      child: Column(
          children: [
            ProductCardsSearch(
              image: "assets/images/product1.jpg",
              title: "Men's Sports Shoes",
              price: "\$24.0",
              discount: "\$30.0",
              press: () {},
            ),
            ProductCardsSearch(
              image: "assets/images/product2.jpg",
              title: "Women's blue leather bag",
              price: "\$240.0",
              discount: "\$300.0",
              press: () {},
            ),
            ProductCardsSearch(
              image: "assets/images/product3.jpg",
              title: "Unisex Metal Frame Sunglasses",
              price: "\$36.9",
              press: () {},
            ),
          ]
      ),
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
                  'Search ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              buildSearchbar(),
              SizedBox(height: 20),
              buildProduct(),
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
                    color: Colors.redAccent,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>searchscreen()));
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 30,
                    color: Colors.black.withOpacity(0.3),
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

