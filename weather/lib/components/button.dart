import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color? color;
  final void Function()? onTap;
  const MyButton({super.key, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(2)),
        padding: const EdgeInsets.all(2),
        child: Center(
          child: Image.asset(
            "assets/mode_icon.webp", // Path to your WebP icon
            width: 50, // Adjust size as needed
            height: 50,
          ),
        ),
      ),
    );
  }
}
