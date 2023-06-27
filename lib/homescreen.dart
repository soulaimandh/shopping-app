import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';


import 'components/icon_button_with_counter.dart';
import 'components/special_offer_card.dart';
import 'components/product_cards.dart';

import 'searchscreen.dart';
import 'categoryscreen.dart';
import 'wishlistscreen.dart';
import 'accountscreen.dart';
import 'yourcartscreen.dart';
import 'categorydetailscreen.dart';
import 'editprofilescreen.dart';
import 'detailproductscreen.dart';



class homescreen  extends StatefulWidget {
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
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
            width: MediaQuery.of(context).size.width * 0.6,
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
                  hintText: "Search Product",
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
            svgSrc: "assets/icons/Cart Icon.svg",
            numOfitem: 3,
            press: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>yourcartscreen()));
            },
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
  Widget buildCarousel(){
    return Container(
        height: 180,
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            autoPlay: true,
          ),
          items: [
            Image.asset("assets/images/slider3.jpg"),
            Image.asset("assets/images/slider1.jpg"),
            Image.asset("assets/images/slider2.jpg"),
          ],
        )
    );
  }
  Widget buildCategories(){
    return Column(
      children: [
        Padding(
            padding:
            EdgeInsets.symmetric(horizontal: (20 / 375.0) * MediaQuery.of(context).size.width),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Special for you",
                  style: TextStyle(
                    fontSize: (18 / 375.0) * MediaQuery.of(context).size.width,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>categoryscreen()));
                  },
                  child: Text(
                    "See More",
                    style: TextStyle(color: Color(0xFFBBBBBB)),
                  ),
                ),
              ],
            )
        ),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/Image Banner 3.png",
                category: "Fashion",
                numOfBrands: 24,
                press: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>categorydetailscreen()));
                },
              ),
              SpecialOfferCard(
                image: "assets/images/Image Banner 2.png",
                category: "Smartphone",
                numOfBrands: 18,
                press: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>categorydetailscreen()));
                },
              ),
              SizedBox(width: (20 / 375.0) * MediaQuery.of(context).size.width),
            ],
          ),
        ),
      ],
    );
  }
  Widget buildProducts(){
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: (20 / 375.0) * MediaQuery.of(context).size.width),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Featured Products",
                  style: TextStyle(
                    fontSize: (18 / 375.0) * MediaQuery.of(context).size.width,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "See More",
                    style: TextStyle(color: Color(0xFFBBBBBB)),
                  ),
                ),
              ],
            )
        ),
        SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                /////////////////////////add product card design here/////////////////////
                Padding(
                  padding: EdgeInsets.only(left: (20 / 375.0) * MediaQuery.of(context).size.width),
                ),
                ProductCard(
                  image: "assets/images/product1.jpg",
                  title: "Men's Sports Shoes",
                  price: "\$24.75",
                  discount: "\$30.5",
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => detailproductscreen(
                      image : "assets/images/product1.jpg",
                      title: "Men's Sports Shoes",
                      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      price: "\$24.75",
                      discount: "\$30.5",
                      percentage: "-32",
                    )));
                  },
                ),
                ProductCard(
                  image: "assets/images/product2.jpg",
                  title: "Women's blue leather bag",
                  price: "\$240.5",
                  discount: "\$300.0",
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => detailproductscreen(
                      image: "assets/images/product2.jpg",
                      title: "Women's blue leather bag",
                      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      price: "\$240.5",
                      discount: "\$300.0",
                      percentage: "-28",
                    )));
                  },
                ),
                ProductCard(
                  image: "assets/images/product3.jpg",
                  title: "Unisex Metal Frame Sunglasses",
                  price: "\$36.0",
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => detailproductscreen(
                      image: "assets/images/product3.jpg",
                      title: "Unisex Metal Frame Sunglasses",
                      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      price: "\$36.0",
                    )));
                  },
                ),
              ],
            ),
          ),
      ],
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
              buildSearchbar(),
              /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              SizedBox(height: 3),
              buildCarousel(),
              /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              SizedBox(height: 5),
              /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              buildCategories(),
              /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              SizedBox(height: 20),
              /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              buildProducts(),
              /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              SizedBox(height: 5),
              /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
                    color: Colors.redAccent,
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

