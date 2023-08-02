import 'package:allpay/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {super.key,
      required this.colorButton,
      required this.textButton,
      this.textColor = Colors.white});

  final Color colorButton;
  final String textButton;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorButton,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          onPressed: () {},
          child: Text(
            textButton,
            style: bodyLarge16.copyWith(color: textColor),
          )),
    );
  }
}
