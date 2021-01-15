import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loginForShop/config.dart';
import 'package:loginForShop/screens/homepage.dart';
import 'package:loginForShop/screens/signup.dart';
import '../clips/signInClips.dart';

class SignInPage extends StatelessWidget {
  static const routename = '/signin';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(color: bgColor),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                ClipPath(
                    clipper: RightClip(),
                    child: Container(
                      height: height * 0.4,
                      width: width,
                      decoration: BoxDecoration(color: blue),
                    )),
                ClipPath(
                    clipper: LeftLargeClip(),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      height: height * 0.5,
                      width: width,
                      decoration: BoxDecoration(color: black),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: width * 0.5),
                            child: Text(
                              'Welcome Back',
                              style: TextStyle(
                                  color: bgColor,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                              maxLines: 2,
                            ),
                          ),
                        ),
                      ),
                    )),
                ClipPath(
                  clipper: LastTopClip(),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: orange),
                    height: height * 0.15,
                    width: width * 0.8,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  height: height,
                  width: width,
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
                              hintText: 'Username',
                              hintStyle: TextStyle(
                                  color: blue, fontFamily: 'NotoSansJp'),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: blue,
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
                              hintStyle: TextStyle(color: blue),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: blue,
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
                  bottom: height * 0.15,
                  left: width * 0.1,
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: blue, fontSize: 40, fontWeight: FontWeight.bold),
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
                  right: width * 0.1,
                  bottom: height * 0.15,
                ),
                Positioned(
                  bottom: height * 0.05,
                  left: width * 0.05,
                  child: FlatButton(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: blue,
                          fontSize: 18,
                          decoration: TextDecoration.underline),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(SignUpPage.routename);
                    },
                  ),
                ),
                Positioned(
                  bottom: height * 0.05,
                  right: width * 0.05,
                  child: FlatButton(
                    child: Text(
                      'Forget Password',
                      style: TextStyle(
                          color: blue,
                          fontSize: 18,
                          decoration: TextDecoration.underline),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )),
    );
  }
}
