import 'package:callup247/responsive_text_styles.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const ActionButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2.0),
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.deepOrangeAccent,
        border: Border.all(width: 2, color: Colors.black),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style:
              responsiveTextStyle(context, 16, Colors.white, FontWeight.bold),
        ),
      ),
    );
  }
}
