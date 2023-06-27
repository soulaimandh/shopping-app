import 'dart:ffi';

import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    this.discount = "",
    required this.press,
  }) : super(key: key);

  final String title, image, price, discount;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: (10 / 375.0) * MediaQuery.of(context).size.width),
      child: Container(
        width: 125,
        height: 220,
        child: Column(
          children: [
            Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0,2),
                          )
                        ],
                      image: DecorationImage(
                        image: AssetImage(
                          image,
                        ),
                        fit: BoxFit.cover,
                      )
                    ),
                    height: 120,
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.redAccent,
                              size: 30,
                            ),
                          )
                        )
                    )
                  ),
                ]
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: press,
                    child: Text(
                        "$title",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black.withOpacity(0.6),
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        price + " ",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis
                      ),
                      Text(
                        discount,
                        style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.black38,
                        ),
                        overflow: TextOverflow.ellipsis
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}