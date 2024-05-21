import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  const AppElevatedButton({
    required this.text,
    required this.onPressed,
    required this.hieght,
    required this.width,
    required this.textSize,
    super.key,
  });
  final double hieght;
  final double width;
  final double textSize;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hieght,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black, // Background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: textSize,
          ),
        ),
      ),
    );
  }
}
