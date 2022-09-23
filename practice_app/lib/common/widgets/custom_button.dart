import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  const CustomButton({super.key, required this.text, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text,),
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
      ),);
  }
}