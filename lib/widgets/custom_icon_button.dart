import 'package:flutter/material.dart';


class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    required this.icon,
    this.onPressed,
    this.size=50,
    super.key,
  });

  final Widget icon;
  final Function()? onPressed;
  final double size;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: icon
      ),
    );
  }
}
