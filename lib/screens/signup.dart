import 'package:flutter/material.dart';
import 'package:loginForShop/screens/homepage.dart';
import 'package:loginForShop/screens/signin.dart';
import '../clips/signUpClips.dart';
import 'package:loginForShop/config.dart';

class SignUpPage extends StatelessWidget {
  static const routename = '/signup';
  @override
  Widget build(BuildContext context) {
    final totalHeight = MediaQuery.of(context).size.height;
    final totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: bgColor,
        height: totalHeight,
        width: totalWidth,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              ClipPath(
                  clipper: LargeClipper(),
                  child: Container(
                    height: totalHeight,
                    width: totalWidth,
                    decoration: BoxDecoration(color: blue),
                  )),
              ClipPath(
                child: Container(
                  padding: EdgeInsets.all(20),
                  height: totalHeight * 0.5,
                  width: totalWidth,
                  color: black,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: totalWidth * 0.4),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                            fontFamily: 'NotoSansJP',
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                clipper: HalfClip(),
              ),
              ClipPath(
                clipper: SmallClipper(),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: orange),
                  height: totalHeight * 0.15,
                  width: totalWidth * 0.8,
                  child: Align(
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: totalHeight,
                width: totalWidth,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: TextStyle(
                                color: bgColor, fontFamily: 'NotoSansJp'),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: bgColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(color: bgColor),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: bgColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: bgColor),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: bgColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: totalHeight * 0.15,
                left: totalWidth * 0.1,
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: bgColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                child: RaisedButton.icon(
                  padding: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  label: Text(
                    '',
                    style: TextStyle(color: bgColor, fontSize: 18),
                  ),
                  icon: Icon(
                    Icons.arrow_forward,
                    color: bgColor,
                    size: 30,
                  ),
                  color: black,
                  onPressed: () {
                    Navigator.of(context).pushNamed(HomePage.routename);
                  },
                ),
                right: totalWidth * 0.1,
                bottom: totalHeight * 0.15,
              ),
              Positioned(
                bottom: totalHeight * 0.05,
                left: totalWidth * 0.1,
                child: FlatButton(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: bgColor,
                        fontSize: 20,
                        decoration: TextDecoration.underline),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(SignInPage.routename);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
