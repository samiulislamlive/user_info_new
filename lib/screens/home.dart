import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: new BoxDecoration(
          border: Border.all(color: Colors.black, width: 2.0, style: BorderStyle.solid),
          image: new DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('assets/images/takemehome.jpg')
          )
      ),

    );
  }
}
