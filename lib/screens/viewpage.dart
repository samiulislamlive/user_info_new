import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:userinfosaving/screens/about.dart';
import 'package:userinfosaving/screens/login.dart';
import 'package:userinfosaving/screens/profile.dart';

import 'home.dart';
class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text('This is navigation drawer',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,

                  ),),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.black,
                ),
                title: Text("Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  ),),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> HomePage()));
                },
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.person,
                  color: Colors.black,
                ),
                title: Text("Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  ),),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> ProfilePage()));
                },
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.info,
                  color: Colors.black,
                ),
                title: Text("About",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  ),),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> About()));
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context)=> LoginPage()));
                },
              ),
            ],
          ),

        ),
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 60),
            child: Center(child: Text('User Data Store',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),)),
          ),
        )
    );
  }
}

