import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    this.child,
    this.color,
    this.borderRadius: 2.0,
    this.height: 50.0,
    this.onPressed,
  });

  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: color,
            onPrimary: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ))),
        child: child,
        onPressed: onPressed,
        ),
    );

  }
}
