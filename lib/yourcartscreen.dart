import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'components/mycartprod.dart';
import 'homescreen.dart';
import 'package:eco/checkoutscreen.dart';

class yourcartscreen  extends StatefulWidget {
  @override
  _yourcartscreenState createState() => _yourcartscreenState();
}

class _yourcartscreenState extends State<yourcartscreen> {
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
  Widget buildmycart(){
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: (20 / 375.0) * MediaQuery.of(context).size.width
      ),
      child: Column(
          children: [
            /*SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: [
                    ProductMycard(
                      image: "assets/images/product1.jpg",
                      title: "Men's Sports Shoes",
                      price: "\$24.0",
                      discount: "\$30.0",
                      press: () {},
                    ),
                  ]
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: [
                    ProductMycard(
                      image: "assets/images/product2.jpg",
                      title: "Women's blue leather bag",
                      price: "\$240.0",
                      discount: "\$300.0",
                      press: () {},
                    ),
                  ]
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: [
                    ProductMycard(
                      image: "assets/images/product3.jpg",
                      title: "Unisex Metal Frame Sunglasses",
                      price: "\$36.9",
                      press: () {},
                    ),
                  ]
              ),
            ),*/
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
                        "Your Cart",
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
               buildmycart(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding:EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        height: 120,
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color:Colors.grey.withOpacity(0.15),
              ),
            ],
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .45,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text(
                            "Sub Total",
                            style:TextStyle(
                              fontSize: 16,color:Colors.grey,
                            ),
                          ),
                          Text(
                            "\$150.0",
                            style:TextStyle(
                              fontSize: 16,color:Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text(
                            "Shipping",
                            style:TextStyle(
                              fontSize: 16,color:Colors.grey,
                            ),
                          ),
                          Text(
                            "\$20.0",
                            style:TextStyle(
                              fontSize: 16,color:Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                          children:[
                            Text(
                              "________________________________________",
                              style:TextStyle(
                                fontSize: 10,color:Colors.grey,
                              ),
                            ),
                          ]
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text(
                            "Total",
                            style:TextStyle(
                              fontSize: 16,color:Colors.grey,
                            ),
                          ),

                          Text(
                            "\$170.0",
                            style:TextStyle(
                              fontSize: 16,color:Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ]
                ),
              ),

              Builder(
                builder: (context) =>
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(
                        Color(0xffFF5353)
                      ),
                      backgroundColor: MaterialStateProperty.all(Color(0xffFF5353)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                          )
                        )
                      )
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>checkoutscreen()));
                    },
                    child: Text(
                      'Check Out',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18, fontWeight: FontWeight.bold
                      ),
                    ),
                ),
              )
            ],
          ),
      ),
    );
  }
}