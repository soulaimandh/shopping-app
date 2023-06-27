import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/icon_button_with_counter.dart';

import 'components/product_cards_category.dart';
import 'homescreen.dart';

class categorydetailscreen  extends StatefulWidget {
  @override
  _categorydetailscreenState createState() => _categorydetailscreenState();
}

class _categorydetailscreenState extends State<categorydetailscreen> {

  bool isRemmemberMe=false;
  Widget buildreturn(){
    return Container(
      alignment: Alignment.topLeft,
      height: 30,
      child: GestureDetector(
        child: Icon(Icons.arrow_back),
        onTap:  (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>homescreen()));
        },
      ),
    );
  }
  Widget buildSearchbar(){
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: (20 / 375.0) * MediaQuery.of(context).size.width,
      ),
      child: Container(
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
    );
  }
  Widget buildProducts(){
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: (20 / 375.0) * MediaQuery.of(context).size.width,
        ),
        height: MediaQuery.of(context).size.height - 30.0,
        child: GridView.count(
            crossAxisSpacing: 20,
            mainAxisSpacing: 15,
            crossAxisCount: 2,
            childAspectRatio: 0.85,
            children: [
              ProductCardsCategory(
                image: "assets/images/product1.jpg",
                title: "Men's Sports Shoes",
                price: "\$24.0",
                discount: "\$30.0",
                press: () {},
              ),
              ProductCardsCategory(
                image: "assets/images/product2.jpg",
                title: "Women's blue leather bag",
                price: "\$240.0",
                discount: "\$300.0",
                press: () {},
              ),
              ProductCardsCategory(
                image: "assets/images/product3.jpg",
                title: "Unisex Metal Frame Sunglasses",
                price: "\$36.9",
                press: () {},
              ),

            ],
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
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: (20 / 375.0) * MediaQuery.of(context).size.width,
                ),
                child: Row(
                    children: [
                      buildreturn(),
                      Expanded(
                        child: Text(
                          "Men's Clothing",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ]
                ),
              ),
              SizedBox(height: 20),
              buildSearchbar(),
              SizedBox(height: 25),
              buildProducts(),
            ],
          ),
        ),
      ),
    );
  }
}