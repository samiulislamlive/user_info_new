import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: new BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.teal, width: 2.0, style: BorderStyle.solid),
          image: new DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('assets/images/152514.jpg')
          )
      ),
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 450),
          child: Material(
            type: MaterialType.transparency,
            child: Text(
              'Itachi Made this App',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
          )),
    );
  }
}
