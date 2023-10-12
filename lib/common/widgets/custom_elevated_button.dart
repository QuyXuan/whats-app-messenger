import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? buttonWidth;
  final VoidCallback onPressed;
  final String text;

  const CustomElevatedButton({
    super.key,
    this.buttonWidth,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: SizedBox(
        height: 42,
        width: buttonWidth ?? MediaQuery.of(context).size.width - 100,
        child: ElevatedButton(onPressed: onPressed, child: Text(text)),
      ),
    );
  }
}
