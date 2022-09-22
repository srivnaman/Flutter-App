import 'package:flutter/material.dart';
import 'package:practice_app/constants/global_variables.dart';

enum Auth{
 signin,
 signup, 
}

class AuthScreen extends StatefulWidget {
  static const String routeName='auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            
            children: [
              const Text("Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500

              ),),
              ListTile(
                title: const Text("Create Account",
                 style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,

                ),
                ),
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signup, 
                  groupValue: _auth,
                  onChanged:((Auth? val) {
                    _auth = val!;
                  }) ,),

              )
            ],
            ),
        ) ),
    );
  }
}