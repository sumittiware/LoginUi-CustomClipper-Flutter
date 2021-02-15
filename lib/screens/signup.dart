import 'package:flutter/material.dart';
import 'package:loginForShop/screens/homepage.dart';
import 'package:loginForShop/screens/signin.dart';
import '../clips/signUpClips.dart';
import 'package:loginForShop/config.dart';

class SignUpPage extends StatefulWidget {
  static const routename = '/signup';

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscure = true;
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
                            fontFamily: 'Truculenta',
                            color: Colors.white,
                            fontSize: 45,
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
              Positioned(
                top: totalHeight * 0.4,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  height: totalHeight * 0.3,
                  width: totalWidth,
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
                              hintText: 'Name',
                              hintStyle: TextStyle(
                                  color: bgColor, fontFamily: 'Truculenta'),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: bgColor,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
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
                              hintStyle: TextStyle(
                                  color: bgColor, fontFamily: 'Truculenta'),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: bgColor,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
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
                            obscureText: _obscure,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  (_obscure)
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: bgColor,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscure = !_obscure;
                                  });
                                },
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  color: bgColor, fontFamily: 'Truculenta'),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: bgColor,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: bgColor,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
                      fontSize: 45,
                      fontFamily: 'Truculenta',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                child: SizedBox(
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
                      Navigator.of(context).pushNamed(HomePage.routename);
                    },
                  ),
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
                        fontFamily: 'Truculenta',
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
