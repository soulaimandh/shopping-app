import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'homescreen.dart';
import 'searchscreen.dart';
import 'wishlistscreen.dart';
import 'accountscreen.dart';

class categoryscreen  extends StatefulWidget {
  @override
  _categoryscreenState createState() => _categoryscreenState();
}

class _categoryscreenState extends State<categoryscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /////////////////////////////////////////////////////////////////////////////////////////////////////////////
              SizedBox(height: 15),
              Center(
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
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
                    color: Colors.redAccent,
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

