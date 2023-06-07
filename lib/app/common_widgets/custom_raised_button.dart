import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? borderRadius;
  final VoidCallback? onPressed;
  final double? height;

  const CustomRaisedButton(
      {this.child,
      this.color,
      this.borderRadius = 2.0,
      this.onPressed,
      this.height = 50});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius!)))),
      ),
    );
  }
}
