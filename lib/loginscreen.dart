import 'package:eco/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'signupscreen.dart';
import 'forgetscreen.dart';

class loginscreen  extends StatefulWidget {
  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  bool isRemmemberMe=false;
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
  Widget buildForgotPassBtn() {
    return Container(
        alignment: Alignment.centerRight,
        height: 40,
        child: GestureDetector(
          child: Text(
            "Forget password",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap:  (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>forgetscreen()));
          },
        ),
    );
  }
  Widget buildRemmemberCb() {
    return Container(
      height: 20,

      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.grey),
            child: Checkbox(

                value: isRemmemberMe,
                checkColor: Colors.white,
                activeColor: Color(0xffFF5353),
                onChanged: (value) {
                  setState(() => isRemmemberMe = value!);
                }
            ),
          ),
          Text(
            'Remmember Me',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),

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
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>homescreen()));
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
        )
    );
  }
  Widget buildFBGoogle(){
    return Column(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
          children: [
            RawMaterialButton(
              onPressed: () {},
              elevation: 2.0,
              fillColor: Colors.white,
              child: Image.asset(
                'assets/images/google.png',
                height: 25, width: 25,
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            ),
            RawMaterialButton(
              onPressed: () {},
              elevation: 2.0,
              fillColor: Colors.white,
              child: Image.asset(
                'assets/images/facebook.png',
                height: 25, width: 25,
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            ),
          ],
        ),
        ],
    );
  }
  Widget buildSignUp(){
    return Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
            children: [
              Text(
                "Don't have an account? ",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              GestureDetector(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
                onTap:  (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>signupscreen()));
                },
              ),
            ],
          ),
        ]
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
                    vertical: 120,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign In',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                      SizedBox(height: 50),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildPassword(),
                      buildForgotPassBtn(),
                      buildRemmemberCb(),
                      buildLoginBtn(),
                      buildFBGoogle(),
                      SizedBox(height: 20),
                      buildSignUp(),
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