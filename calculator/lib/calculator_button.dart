import 'package:flutter/material.dart';

class ButtonCalculator extends StatelessWidget {
  final String title;
  final Color Buttoncolor;
  final Color TextColor;
  final VoidCallback onPress;

  const ButtonCalculator(
      {super.key,
      required this.title,
      required this.onPress,
      this.Buttoncolor = Colors.grey,
      this.TextColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 4),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: Buttoncolor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: TextColor,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
