import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(child: Text('About Me',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),)),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 500),
          child: Center(
            child: Text(
              "I am Md. Samiul Islam\n"
                  "currently doing nothing",
              style: TextStyle(
                fontSize: 20
              ),
            ),
          ),
        ),
      ),
        );
  }
}
