import 'package:flutter/material.dart';
import 'dart:core';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {

  // late String _email, _name;
  // TextEditingController _password = TextEditingController();
  // TextEditingController _conpassword = TextEditingController();
  final myController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 0.9, right: 50),
            child: Center(child: Text('Password Reset',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),)),
          ),
        ),
        body: Form(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(fontSize: 40,
                            fontWeight: FontWeight.bold,),
                        ),
                      )),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        icon: new Icon(Icons.lock),
                        border: OutlineInputBorder(),
                        labelText: 'Enter New Password',
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: new InputDecoration(
                        icon: new Icon(Icons.lock),
                        border: OutlineInputBorder(),
                        labelText: 'Confirm New Password',
                      ),
                    ),
                  ),

                  SizedBox(height: 50.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60),
                    child: Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue, // background
                            onPrimary: Colors.white, // foreground
                            elevation: 10,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Reset'),
                        )),
                  ),

                ],
              )),
        ));
  }
}
