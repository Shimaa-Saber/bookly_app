import 'package:flutter/material.dart';

import '../../../../../core/utilties/Styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.onPressed,
      required this.backgroundcolor,
      required this.textColor,
      required this.text,
      required this.borderRadius})
      : super(key: key);
  final void Function()? onPressed;
  final Color backgroundcolor;
  final Color textColor;
  final String text;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundcolor,
              shape: RoundedRectangleBorder(borderRadius: borderRadius)),
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.TextStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}
