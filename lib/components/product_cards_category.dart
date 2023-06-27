import 'dart:ffi';

import 'package:flutter/material.dart';

class ProductCardsCategory extends StatelessWidget {
  const ProductCardsCategory({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    this.discount = '',
    required this.press,
  }) : super(key: key);

  final String title, image, price, discount;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ),
        child: Column(
          children: [
            //Stack(
              //children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          image,
                        ),
                        fit: BoxFit.cover,
                      )
                  ),
                  height: 130,
                ),
              //]
            //),
            SizedBox(height: 4),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "$title",
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$price",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.lightBlueAccent,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis
                        ),
                      ),
                      Text(
                        "$discount",
                        style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.black38,
                            overflow: TextOverflow.ellipsis
                        )
                      ),
                      Icon(
                        Icons.add_shopping_cart,
                        size: 25,
                        color: Colors.redAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}