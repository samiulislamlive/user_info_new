import 'package:flutter/material.dart';
import 'dart:core';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  // late String _email, _name;
  // TextEditingController _password = TextEditingController();
  // TextEditingController _conpassword = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  final usernameEditingController = new TextEditingController();
  final phonenumberEditingController = new TextEditingController();
  final addressEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 0.9, right: 50),
            child: Center(child: Text('Time to Register',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),)),
          ),
        ),
        body: Form(
          child: Padding(
            key: _formkey,
              padding: EdgeInsets.all(1),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Welcome Aboard',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Get an account here',
                        style: TextStyle(fontSize: 40,
                          fontWeight: FontWeight.bold,),
                      )),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      controller: usernameEditingController,
                      onSaved: (value) => usernameEditingController.text = value!,
                      decoration: new InputDecoration(
                        icon: new Icon(Icons.person),
                        border: OutlineInputBorder(),
                        labelText: 'Enter Username',
                      ),
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      controller: phonenumberEditingController,
                      onSaved: (value) => phonenumberEditingController.text = value!,
                      decoration: new InputDecoration(
                        icon: new Icon(Icons.phone),
                        border: OutlineInputBorder(),
                        labelText: 'Enter Phone Number',
                      ),
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      controller: addressEditingController,
                      onSaved: (value) => addressEditingController.text = value!,
                      decoration: new InputDecoration(
                        icon: new Icon(Icons.location_on),
                        border: OutlineInputBorder(),
                        labelText: 'Enter Home Address',
                      ),
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      controller: emailEditingController,
                      onSaved: (value) => emailEditingController.text = value!,
                      decoration: new InputDecoration(
                        icon: new Icon(Icons.email),
                        border: OutlineInputBorder(),
                        labelText: 'Enter Email Address',
                      ),
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      controller: passwordEditingController,
                      onSaved: (value) => passwordEditingController.text = value!,
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: new Icon(Icons.lock),
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      controller: confirmPasswordEditingController,
                      onSaved: (value) => confirmPasswordEditingController.text = value!,
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: new Icon(Icons.lock_clock),
                        border: OutlineInputBorder(),
                        labelText: 'Confirm Password',
                      ),
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Register'),
                      )),

                ],
              )),
        ));
  }
}
