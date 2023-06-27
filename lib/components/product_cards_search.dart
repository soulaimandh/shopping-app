import 'dart:ffi';

import 'package:flutter/material.dart';

class ProductCardsSearch extends StatelessWidget {
  const ProductCardsSearch({
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
      width: MediaQuery.of(context).size.width,
      height: 110,
      margin: EdgeInsets.only(bottom: 15),
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
      child: Row(
        children: [
          Container(
            width: 140,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Container(
              width: MediaQuery.of(context).size.width - 210,
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
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 15),
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
          ),
        ],
      ),
    );
  }
}