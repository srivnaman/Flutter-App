import 'package:flutter/material.dart';
import 'package:practice_app/common/widgets/custom_text_field.dart';
import 'package:practice_app/constants/global_variables.dart';

enum Auth {
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  static const String routeName = 'auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  
  @override
void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            //List Tile for Signin Radio Button
            ListTile(
              title: const Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.signup,
                groupValue: _auth,
                onChanged: ((Auth? val) {
                  _auth = val!;
                }),
              ),
            ),
            if (_auth == Auth.signup)
              Form(
                  key: _signUpFormKey,
                  child: Column(
                    children: [CustomTextField(controller: _nameController,hintText: "Name",),
                      CustomTextField(controller: _emailController,hintText: "Email",),
                    CustomTextField(controller: _passwordController,hintText: "Password",)],
                  )),

            ListTile(
              title: const Text(
                "Sign-In Account",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.signin,
                groupValue: _auth,
                onChanged: ((Auth? val) {
                  _auth = val!;
                }),
              ),
            )
          ],
        ),
      )),
    );
  }
}
