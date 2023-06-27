import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'loginscreen.dart';
import 'homescreen.dart';
import 'verificationscreen.dart';
class signupscreen extends StatefulWidget {
  @override
  _signupscreenState createState() => _signupscreenState();

}

class _signupscreenState extends State<signupscreen> {
  bool isRemmemberMe=false;
  Widget builName(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Name',
          style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color:Colors.black26 ,
                    blurRadius: 6,
                    offset: Offset(0,2),
                  )
                ]
            ),
            height: 60,
            child:TextField(
                keyboardType: TextInputType.name,
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xffFF5353),
                     ),
                    hintText: 'Name',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )
                )
            )
        )
      ],
    );
  }
  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color:Colors.black26 ,
                    blurRadius: 6,
                    offset: Offset(0,2),
                  )
                ]
            ),
            height: 60,
            child:TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xffFF5353),
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )
                )
            )
        )
      ],
    );
  }
  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color:Colors.black26 ,
                    blurRadius: 6,
                    offset: Offset(0,2),
                  )
                ]
            ),
            height: 60,
            child:TextField(
                obscureText: true,
                style: TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xffFF5353),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )
                )
            )
        )
      ],
    );
  }
  Widget buildLoginBtn() {
    return Container(
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

                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>verificationscreen()));
                  },
                child: Text(
                  'Sign up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
        )
    );
  }
  Widget buildSignIN(){
    return Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
            children: [
              Text(
                "Already have an account? ",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              GestureDetector(
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
                onTap:  (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>loginscreen()));
                },
              ),
            ],
          ),
        ]
    );
  }
  Widget buildreturn(){
    return Container(
      alignment: Alignment.centerLeft,
      height: 40,
      child: GestureDetector(
        child: Icon(Icons.arrow_back),
        onTap:  (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>loginscreen()));
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xffFFFFFF),
                              Color(0xffFFFFFF),
                              Color(0xffFFFFFF),
                              Color(0xffFFFFFF),

                            ]
                        )
                    ),
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      padding:EdgeInsets.symmetric (
                        horizontal: 25,
                        vertical: 60,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          buildreturn(),
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Please enter your information below to sign up',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 20),
                          builName(),
                          SizedBox(height:20 ),
                          buildEmail(),
                          SizedBox(height: 20),
                          buildPassword(),
                          SizedBox(height:20),
                          buildLoginBtn(),
                          buildSignIN(),

                        ],
                      ),
                    ),

                  )
                ],
              )
          )
      ),
    );
  }
}
