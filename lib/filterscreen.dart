import 'package:flutter/material.dart';

import 'homescreen.dart';

class filterscreen extends StatefulWidget {

  @override
  State<filterscreen> createState() => _filterscreenState();
}

class _filterscreenState extends State<filterscreen> {

  String filter = "";
  String filterSize = "";
  RangeValues values = const RangeValues(200, 500);

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
  Widget buildCategory() {
    return Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: (20 / 375.0) * MediaQuery.of(context).size.width),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Category",
                  style: TextStyle(
                    fontSize: (18 / 375.0) * MediaQuery.of(context).size.width,
                    color: Colors.black,
                  ),
                )
              ],
            )
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: (20 / 375.0) * MediaQuery.of(context).size.width),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 7),
                  child: FilterChip(
                    showCheckmark: false,
                    avatar: filter.contains("Men")
                        ? Icon(Icons.check, color: Colors.redAccent)
                        : Icon(Icons.add, color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        width: 1.7,
                        color: filter.contains("Men")
                            ? Colors.redAccent : Colors.grey,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    selectedColor: Colors.white,
                    shadowColor: Colors.grey,
                    label: const Text(
                      "Men",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black38,
                      ),
                    ),
                    selected: (filter == "Men") ? true : false,
                    onSelected: (bool value) {
                      setState(() {
                        filter = "Men";
                      });
                    }
                  )
                ),
                Padding(
                    padding: EdgeInsets.only(right: 7),
                    child: FilterChip(
                        showCheckmark: false,
                        avatar: filter.contains("Women")
                            ? Icon(Icons.check, color: Colors.redAccent)
                            : Icon(Icons.add, color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            width: 1.7,
                            color: filter.contains("Women")
                                ? Colors.redAccent : Colors.grey,
                          ),
                        ),
                        backgroundColor: Colors.white,
                        selectedColor: Colors.white,
                        shadowColor: Colors.grey,
                        label: const Text(
                          "Women",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black38,
                          ),
                        ),
                        selected: (filter == "Women") ? true : false,
                        onSelected: (bool value) {
                          setState(() {
                            filter = "Women";
                          });
                        }
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(right: 7),
                    child: FilterChip(
                        showCheckmark: false,
                        avatar: filter.contains("Mixte")
                            ? Icon(Icons.check, color: Colors.redAccent)
                            : Icon(Icons.add, color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            width: 1.7,
                            color: filter.contains("Mixte")
                                ? Colors.redAccent : Colors.grey,
                          ),
                        ),
                        backgroundColor: Colors.white,
                        selectedColor: Colors.white,
                        shadowColor: Colors.grey,
                        label: const Text(
                          "Mixte",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black38,
                          ),
                        ),
                        selected: (filter == "Mixte") ? true : false,
                        onSelected: (bool value) {
                          setState(() {
                            filter = "Mixte";
                          });
                        }
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(right: 7),
                    child: FilterChip(
                        showCheckmark: false,
                        avatar: filter.contains("Kids")
                            ? Icon(Icons.check, color: Colors.redAccent)
                            : Icon(Icons.add, color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            width: 1.7,
                            color: filter.contains("Kids")
                                ? Colors.redAccent : Colors.grey,
                          ),
                        ),
                        backgroundColor: Colors.white,
                        selectedColor: Colors.white,
                        shadowColor: Colors.grey,
                        label: const Text(
                          "Kids",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black38,
                          ),
                        ),
                        selected: (filter == "Kids") ? true : false,
                        onSelected: (bool value) {
                          setState(() {
                            filter = "Kids";
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
  Widget buildSize() {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: (20 / 375.0) * MediaQuery.of(context).size.width),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Size",
                  style: TextStyle(
                    fontSize: (18 / 375.0) * MediaQuery.of(context).size.width,
                    color: Colors.black,
                  ),
                )
              ],
            )
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: (20 / 375.0) * MediaQuery.of(context).size.width),
                ),
                Padding(
                    padding: EdgeInsets.only(right: 7),
                    child: FilterChip(
                        showCheckmark: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            width: 1.7,
                            color: filterSize.contains("31")
                                ? Colors.redAccent : Colors.grey,
                          ),
                        ),
                        backgroundColor: Colors.white,
                        selectedColor: Colors.white,
                        shadowColor: Colors.grey,
                        label: const Text(
                          "31",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black38,
                          ),
                        ),
                        selected: (filterSize == "31") ? true : false,
                        onSelected: (bool value) {
                          setState(() {
                            filterSize = "31";
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
                            color: filterSize.contains("32")
                                ? Colors.redAccent : Colors.grey,
                          ),
                        ),
                        backgroundColor: Colors.white,
                        selectedColor: Colors.white,
                        shadowColor: Colors.grey,
                        label: const Text(
                          "32",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black38,
                          ),
                        ),
                        selected: (filterSize == "32") ? true : false,
                        onSelected: (bool value) {
                          setState(() {
                            filterSize = "32";
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
                            color: filterSize.contains("33")
                                ? Colors.redAccent : Colors.grey,
                          ),
                        ),
                        backgroundColor: Colors.white,
                        selectedColor: Colors.white,
                        shadowColor: Colors.grey,
                        label: const Text(
                          "33",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black38,
                          ),
                        ),
                        selected: (filterSize == "33") ? true : false,
                        onSelected: (bool value) {
                          setState(() {
                            filterSize = "33";
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
                            color: filterSize.contains("34")
                                ? Colors.redAccent : Colors.grey,
                          ),
                        ),
                        backgroundColor: Colors.white,
                        selectedColor: Colors.white,
                        shadowColor: Colors.grey,
                        label: const Text(
                          "34",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black38,
                          ),
                        ),
                        selected: (filterSize == "34") ? true : false,
                        onSelected: (bool value) {
                          setState(() {
                            filterSize = "34";
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
  Widget buildPrice() {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: (20 / 375.0) * MediaQuery.of(context).size.width),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                    fontSize: (18 / 375.0) * MediaQuery.of(context).size.width,
                    color: Colors.black,
                  ),
                ),
              ],
            )
        ),
        SizedBox(height: 10),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: (25 / 375.0) * MediaQuery.of(context).size.width),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  values.start.round().toString() + " \$ ",
                  style: TextStyle(
                    fontSize: (18 / 375.0) * MediaQuery.of(context).size.width,
                    color: Colors.redAccent,
                  ),
                ),
                Text(
                  values.end.round().toString() + " \$ ",
                  style: TextStyle(
                    fontSize: (18 / 375.0) * MediaQuery.of(context).size.width,
                    color: Colors.redAccent,
                  ),
                )
              ],
            )
        ),
        RangeSlider(
          activeColor: Colors.redAccent,
          inactiveColor: Colors.redAccent.withOpacity(0.2),
          values: values,
          min: 0,
          max: 1000,
          onChanged: (values) {
            setState(() {
              this.values = values;
            });
          },
        )
      ],
    );
  }
  Widget buildApplyBtn() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: (20 / 375.0) * MediaQuery.of(context).size.width),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        height: 100.0,
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
                  'Apply',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
        )
      )
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
                          "Filter",
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
              buildCategory(),

              SizedBox(height: 15),
              buildSize(),


              SizedBox(height: 15),
              buildPrice(),

              SizedBox(height: 150),
              buildApplyBtn(),

            ],
          ),
        ),
      ),
    );
  }
}
