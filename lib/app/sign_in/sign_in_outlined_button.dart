import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_project/app/common_widgets/outline_button_widget.dart';

class SignInOutlinedButton extends OutlineButtonWidget {
  SignInOutlinedButton({
    String? text,
    Color? textColor,
    double? fontSize,
    double? borderWidth,
    Color? borderColor,
    VoidCallback? onPressed,
  })  : assert(text != null),
        super(
            child: Text(text!,
                style: TextStyle(color: textColor, fontSize: fontSize)),
            onPressed: onPressed,
            borderColor: borderColor,
            borderWidth: borderWidth);
}
