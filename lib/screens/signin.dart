import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loginForShop/config.dart';
import 'package:loginForShop/screens/homepage.dart';
import 'package:loginForShop/screens/signup.dart';
import '../clips/signInClips.dart';

class SignInPage extends StatefulWidget {
  static const routename = '/signin';

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          height: height,
          width: width,
          color: bgColor,
          child: Column(
            children: [
              Container(
                height: height * 0.5,
                width: width,
                child: Stack(children: [
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
                              constraints:
                                  BoxConstraints(maxWidth: width * 0.5),
                              child: Text(
                                'Welcome Back',
                                style: TextStyle(
                                    color: bgColor,
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Truculenta'),
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
                ]),
              ),
              Container(
                height: height * 0.5,
                width: width,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Username',
                              hintStyle: TextStyle(
                                  color: blue, fontFamily: 'Truculenta'),
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
                            obscureText: _obscure,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  (_obscure)
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: blue,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscure = !_obscure;
                                  });
                                },
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  color: blue, fontFamily: 'Truculenta'),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Sign In',
                                style: TextStyle(
                                    color: black,
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Truculenta'),
                              ),
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: FloatingActionButton(
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: bgColor,
                                    size: 30,
                                  ),
                                  backgroundColor: black,
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed(HomePage.routename);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlatButton(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 20,
                                      fontFamily: 'Truculenta',
                                      decoration: TextDecoration.underline),
                                ),
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(SignUpPage.routename);
                                },
                              ),
                              FlatButton(
                                child: Text(
                                  'Forget Password',
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 20,
                                      fontFamily: 'Truculenta',
                                      decoration: TextDecoration.underline),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    ));
  }
}
