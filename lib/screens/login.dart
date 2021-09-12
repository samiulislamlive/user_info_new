import 'package:flutter/material.dart';
import 'package:userinfosaving/screens/forgot_password.dart';
import 'package:userinfosaving/screens/signup.dart';
import 'package:userinfosaving/screens/viewpage.dart';
import 'package:userinfosaving/utility/validator.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  // get validateEmail => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('First Try',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),)),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Please Login',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      )),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Login Page Bruh',
                      style: TextStyle(fontSize: 40,
                        fontWeight: FontWeight.bold,),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    autofocus: false,
                    controller: emailController,
                    onSaved: (value) => emailController.text = value!,
                    decoration: new InputDecoration(
                      icon: new Icon(Icons.email),
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: true,
                    controller: passwordController,
                    onSaved: (value) => passwordController.text = value!,
                    decoration: new InputDecoration(
                      icon: new Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    textInputAction: TextInputAction.done,
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> ForgotPass()));
                  },
                  child: Text('Forgot Password'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> SecondRoute()));
                      },
                      child: Text('Login'),
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('No Account? Then Get One.'),
                        TextButton(
                          style: ButtonStyle(
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> SignUp()));
                          },
                          child: Text('Sign Up'),
                        ),

                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}
