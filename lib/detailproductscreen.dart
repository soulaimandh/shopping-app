import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'homescreen.dart';

class detailproductscreen extends StatefulWidget {

  String image, title, description, price, discount, percentage;
  detailproductscreen({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    this.discount = "",
    this.percentage = "",
  }) : super(key: key);
  @override
  State<detailproductscreen> createState() => _detailproductscreenState(image, title, description, price, discount, percentage);
}

class _detailproductscreenState extends State<detailproductscreen> {
  String image, title, description, price, discount, percentage;

  _detailproductscreenState(this.image, this.title, this.description, this.price, this.discount, this.percentage);

  int count = 1;
  double rating = 4.5;
  String filterSize = "";

  Widget buildPrice(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price + "  ",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                    discount + "  ",
                    style: TextStyle(
                        fontSize: 17,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.black38,
                        overflow: TextOverflow.ellipsis
                    )
                ),
                if(percentage != "")
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.redAccent)
                  ),
                  child: Text(
                    percentage + "% off",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis
                    ),
                  ),
                ),
              ],
            ),
            Icon(
              Icons.favorite_border_outlined,
              color: Colors.redAccent,
              size: 30,
            )
          ],
        ),
      ],
    );
  }
  Widget buildDescription(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 5),
        Text(
          description,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(.6),
          ),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
  Widget buildSize(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Size",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(right: 7),
                    child: FilterChip(
                        showCheckmark: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            width: 1.7,
                            color: filterSize.contains("35")
                                ? Colors.redAccent : Colors.grey,
                          ),
                        ),
                        backgroundColor: Colors.white,
                        selectedColor: Colors.white,
                        shadowColor: Colors.grey,
                        label: const Text(
                          "35",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black38,
                          ),
                        ),
                        selected: (filterSize == "35") ? true : false,
                        onSelected: (bool value) {
                          setState(() {
                            filterSize = "35";
                          });
                        }
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(right: 7),
                    child: FilterChip(
                        showCheckmark: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            width: 1.7,
                            color: filterSize.contains("36")
                                ? Colors.redAccent : Colors.grey,
                          ),
                        ),
                        backgroundColor: Colors.white,
                        selectedColor: Colors.white,
                        shadowColor: Colors.grey,
                        label: const Text(
                          "36",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black38,
                          ),
                        ),
                        selected: (filterSize == "36") ? true : false,
                        onSelected: (bool value) {
                          setState(() {
                            filterSize = "36";
                          });
                        }
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(right: 7),
                    child: FilterChip(
                        showCheckmark: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            width: 1.7,
                            color: filterSize.contains("37")
                                ? Colors.redAccent : Colors.grey,
                          ),
                        ),
                        backgroundColor: Colors.white,
                        selectedColor: Colors.white,
                        shadowColor: Colors.grey,
                        label: const Text(
                          "37",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black38,
                          ),
                        ),
                        selected: (filterSize == "37") ? true : false,
                        onSelected: (bool value) {
                          setState(() {
                            filterSize = "37";
                          });
                        }
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(right: 7),
                    child: FilterChip(
                        showCheckmark: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            width: 1.7,
                            color: filterSize.contains("38")
                                ? Colors.redAccent : Colors.grey,
                          ),
                        ),
                        backgroundColor: Colors.white,
                        selectedColor: Colors.white,
                        shadowColor: Colors.grey,
                        label: const Text(
                          "38",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black38,
                          ),
                        ),
                        selected: (filterSize == "38") ? true : false,
                        onSelected: (bool value) {
                          setState(() {
                            filterSize = "38";
                          });
                        }
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(right: 7),
                    child: FilterChip(
                        showCheckmark: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            width: 1.7,
                            color: filterSize.contains("39")
                                ? Colors.redAccent : Colors.grey,
                          ),
                        ),
                        backgroundColor: Colors.white,
                        selectedColor: Colors.white,
                        shadowColor: Colors.grey,
                        label: const Text(
                          "39",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black38,
                          ),
                        ),
                        selected: (filterSize == "39") ? true : false,
                        onSelected: (bool value) {
                          setState(() {
                            filterSize = "39";
                          });
                        }
                    )
                ),
              ],
            )
        )
      ],
    );
  }
  Widget buildQuantity(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Quantity",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(.07),
                  shape: BoxShape.circle,
                ),
                child: GestureDetector(
                    onTap: (){
                      if(count != 1)
                        setState(()=>count--);
                    },
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.remove,
                        size: 23,
                      ),
                    )
                )
            ),
            Text(
              "     " + count.toString() + "     ",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(.07),
                  shape: BoxShape.circle,
                ),
                child: GestureDetector(
                    onTap: ()=>setState(()=>count++),
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.add,
                        size: 23,
                      ),
                    )
                )
            ),
          ],
        ),
      ],
    );
  }
  Widget buildReviewstars(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Reviews",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "write a review",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.redAccent,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              rating.toString() + " ",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            RatingBar.builder(
              initialRating: rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              unratedColor: Colors.black12,
              itemSize: 27,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                setState((){this.rating = rating;});
              },
            )
          ],
        )
      ],
    );
  }
  Widget buildReview(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "John Doe   ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "22 May 2020",
              style: TextStyle(
                fontSize: 12,
                color: Colors.black45,
              ),
            )
          ],
        ),
        SizedBox(height: 5),
        Text(
          "4.5",
          style: TextStyle(
            fontSize: 15,
            color: Colors.amber,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black38,
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
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 330,
              decoration: BoxDecoration(
                image : DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 20,
              child: ClipOval(
                child: Container(
                  height: 42, width: 42,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.25),
                        offset: Offset(0, 4),
                        blurRadius: 8,
                      )
                    ]
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => homescreen()));
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new
                    ),
                  ),
                ),
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 300),
              padding: EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.2),
                    offset: Offset(0, -4),
                    blurRadius: 8
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildPrice(),
                  SizedBox(height: 10),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  buildDescription(),
                  SizedBox(height: 10),
                  buildSize(),
                  SizedBox(height: 10),
                  buildQuantity(),
                  SizedBox(height: 10),
                  buildReviewstars(),
                  SizedBox(height: 15),
                  buildReview(),
                  SizedBox(height: 15),
                  buildReview(),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
      bottomNavigationBar: Container(
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
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: (20 / 375.0) * MediaQuery.of(context).size.width),
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    height: 67.0,
                    width: double.infinity,
                    child: Builder(
                      builder: (context) =>
                          ElevatedButton(
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(
                                    Color(0xffFF5353)),
                                backgroundColor: MaterialStateProperty.all(Color(0xffFF5353)),
                                // overlayColor: getColor(Colors.white,Colors.teal),
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

                            onPressed: () {},
                            child: Text(
                              'Add to cart',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                    )
                )
            )
        ),
      ),
    );
  }
}
