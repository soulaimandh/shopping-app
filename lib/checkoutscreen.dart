import 'package:eco/components/yourcart.dart';
import 'package:flutter/material.dart';
import 'yourcartscreen.dart';
class checkoutscreen extends StatefulWidget {
  @override
  State<checkoutscreen> createState() => _checkoutscreenState();
}

class _checkoutscreenState extends State<checkoutscreen> {
  @override
  Widget buildreturn(){
    return Container(
      alignment: Alignment.topLeft,
      height: 30,
      child: GestureDetector(
        child: Icon(Icons.arrow_back),
        onTap:  (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>yourcartscreen()));
        },
      ),
    );
  }
  Widget buildAdress(){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: (20 / 375.0) * MediaQuery.of(context).size.width),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Your Adress",
                style: TextStyle(
                  fontSize: (18 / 375.0) * MediaQuery.of(context).size.width,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>categoryscreen()));
                },
                child: Text(
                  "Change Adress",
                  style: TextStyle(color: Color(0xFFBBBBBB)),
                ),
              ),
            ],
          )
        ),
      ],
    );
  }
  Widget buildtextAdress(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: (20 / 375.0) * MediaQuery.of(context).size.width,),
      child: Container(
        padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color:Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0,2),
                )
              ]
          ),
          child: Text(
              "John Doe, +961-123456789\nSchools Street, Behind the Official School, Maghdouche, Saida, Lebanon, 1600",
              style: TextStyle(
                fontSize: 18, color:Colors.grey,
              )
          )
      ),
    );
  }
  Widget buildShippingMode(){
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: (20 / 375.0) * MediaQuery.of(context).size.width),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shipping Mode",
                  style: TextStyle(
                    fontSize: (18 / 375.0) * MediaQuery.of(context).size.width,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>categoryscreen()));
                  },
                  child: Text(
                    "Change Mode",
                    style: TextStyle(color: Color(0xFFBBBBBB)),
                  ),
                ),
              ],
            )
        ),
      ],
    );
  }
  Widget buildtypeshipping(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: (20 / 375.0) * MediaQuery.of(context).size.width,),
      child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color:Colors.black26 ,
                  blurRadius: 6,
                  offset: Offset(0,2),
                )
              ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  "Flat Rate",
                  style: TextStyle(
                    fontSize: 18, color:Colors.grey,
                  )
              ),
              Text(
                  "\$ 20.0",
                  style: TextStyle(
                    fontSize: 18, color:Colors.grey,
                  )
              )
            ],
          )
      )
    );
  }
  Widget buildyourcart(){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: (20 / 375.0) * MediaQuery.of(context).size.width),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Your Cart",
                style: TextStyle(
                  fontSize: (18 / 375.0) * MediaQuery.of(context).size.width,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>categoryscreen()));
                },
                child: Text(
                  "View All",
                  style: TextStyle(color: Color(0xFFBBBBBB)),
                ),
              ),
            ],
          )
        ),
        SizedBox(height:10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              /////////////////////////add product card design here/////////////////////
              Padding(
                 padding: EdgeInsets.only(left: (20 / 375.0) * MediaQuery.of(context).size.width),
              ),
              YourCart(
                image: "assets/images/product1.jpg",
              ),
              YourCart(
                image: "assets/images/product2.jpg",
              ),
              YourCart(
                image: "assets/images/product3.jpg",
              ),
            ],
          ),
        )
      ],
    );
  }

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
                          "Check Out",
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
              buildAdress(),
              SizedBox(height: 20),
              buildtextAdress(),
              SizedBox(height: 20),
              buildShippingMode(),
              SizedBox(height:20),
              buildtypeshipping(),
              SizedBox(height: 20),
              buildyourcart(),


            ],
          ),
        ),
      ),

    );
  }
}
