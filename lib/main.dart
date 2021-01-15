import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginForShop/config.dart';
import 'package:loginForShop/screens/homepage.dart';
import './screens/signin.dart';
import './screens/signup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyShop',
      theme: ThemeData(
          primaryColor: blue, accentColor: bgColor, fontFamily: 'NotoSansJP'),
      home: SignInPage(),
      routes: {
        SignInPage.routename: (ctx) => SignInPage(),
        SignUpPage.routename: (ctx) => SignUpPage(),
        HomePage.routename: (ctx) => HomePage()
      },
    );
  }
}
