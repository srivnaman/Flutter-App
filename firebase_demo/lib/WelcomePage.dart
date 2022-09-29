import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {

String name;
String email;
String phoneNo;
WelcomePage({required this.name,required this.email,required this.phoneNo});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text('Name: ${name}'),
        Text('Email: ${email}'),
        Text('Phone No: ${phoneNo}'),
      ],),);
  }
}