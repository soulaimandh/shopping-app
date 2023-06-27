import 'dart:ffi';

import 'package:flutter/material.dart';

class YourCart extends StatelessWidget {
  const YourCart({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: (10 / 375.0) * MediaQuery.of(context).size.width, bottom: 15),
      child: Container(
        width: 125,
        height: 125,
        child: Stack(
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
                    offset: Offset(0,6),
                  )
                ],
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                )
              ),
            ),
          ]
        ),
      ),
    );
  }
}