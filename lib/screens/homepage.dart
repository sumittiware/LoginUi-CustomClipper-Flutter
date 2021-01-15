import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routename = '/homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginUI'),
      ),
      body: Center(
        child: Text('HomePage!!'),
      ),
    );
  }
}
