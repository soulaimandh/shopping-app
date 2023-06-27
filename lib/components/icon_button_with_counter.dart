import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconBtnWithCounter extends StatelessWidget {

  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    this.numOfitem = 0,
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all((12 / 375.0) * MediaQuery.of(context).size.width),
            height: (46 / 375.0) * MediaQuery.of(context).size.width,
            width: (46 / 375.0) * MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color:Colors.black26 ,
                    blurRadius: 6,
                    offset: Offset(0,2),
                  )
                ]
            ),
            child: SvgPicture.asset(
              svgSrc,
              color: Colors.redAccent,
            ),
          ),
          if (numOfitem != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: (16 / 375.0) * MediaQuery.of(context).size.width,
                width: (16 / 375.0) * MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    '$numOfitem',
                    style: TextStyle(
                      fontSize: (10 / 375.0) * MediaQuery.of(context).size.width,
                      height: 1,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
