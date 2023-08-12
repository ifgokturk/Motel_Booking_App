


import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    this.onPressed,
    super.key,
  });

  final String text;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.yellow[600]),
        elevation: MaterialStateProperty.all(0.0),
        minimumSize: MaterialStateProperty.all(const Size(200, 50)),
      ),
      child: Text(
        text,
        style:  TextStyle(
          color: Colors.grey[900],
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
