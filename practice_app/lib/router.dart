import 'package:flutter/material.dart';
import 'package:practice_app/features/auth/screens/auth_screen.dart';
 
Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch (routeSettings.name) {
    case AuthScreen.routeName: 
    return MaterialPageRoute(builder: (_) => AuthScreen(),);
    default: 
    return MaterialPageRoute(settings: routeSettings,
      builder: (_) =>const Scaffold(
        body: Center(
          child: Text("Screen Does Not Exist"),
        ),
      ) ,
    );
  }
}