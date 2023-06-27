import 'package:flutter/material.dart';
import 'package:eco/homescreen.dart';
class editprofilescreen extends StatefulWidget {
  const editprofilescreen({Key? key}) : super(key: key);

  @override
  State<editprofilescreen> createState() => _editprofilescreenState();
}

class _editprofilescreenState extends State<editprofilescreen> {
  Widget buildreturn() {
    return Container(
      alignment: Alignment.topLeft,
      height: 30,
      child: GestureDetector(
        child: Icon(Icons.arrow_back),
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => homescreen()));
        },
      ),
    );
  }
    Widget buildprofile() {
    return Column(
      children: [
        Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/Profile Image.png",
                  ),
                  fit: BoxFit.cover,
                )
            ),
            child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      shape: BoxShape.circle,
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.black,
                          size: 23,
                        ),
                      )
                    )
                )
            )
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
                          "Edit Profil",
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
              buildprofile(),
              SizedBox(height: 10),
              Text(
                "MESBAHI Houda",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
