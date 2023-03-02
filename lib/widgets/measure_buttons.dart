import 'package:flutter/material.dart';

class MyButton extends StatelessWidget 
{
  final String text;
  final VoidCallback onPressed;

  const MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialButton(
      elevation: 5,
      minWidth: MediaQuery.of(context).size.width * 0.8,
      height: 55,
      //padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(text, style: const TextStyle(fontSize: 23))
    );
  }
}