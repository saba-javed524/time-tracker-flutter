import 'package:flutter/material.dart';

class OutlineButtonWidget extends StatelessWidget {
  final Widget? child;
  final double? borderWidth;
  final Color? borderColor;
  final VoidCallback? onPressed;

  const OutlineButtonWidget(
      {this.child, this.borderWidth = 2.0, this.borderColor, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: OutlinedButton(
        onPressed: onPressed,
        child: child!,
        style: OutlinedButton.styleFrom(
            side: BorderSide(color: borderColor!, width: 2.0)
            // side: BorderSide(color: borderColor!, width: borderWidth!)
            ),
      ),
    );
  }
}
