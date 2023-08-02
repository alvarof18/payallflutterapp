import 'package:allpay/config/theme/app_theme.dart';
import 'package:allpay/config/theme/colors_app.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {
  const CustomInputField(
      {super.key, this.hintText, this.prefixIcon, required this.obscureText});

  final String? hintText;
  final Widget? prefixIcon;
  final bool obscureText;

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  final FocusNode _textFocusInput = FocusNode();
  late Color _focusColor = Colors.grey[50]!;

  @override
  void initState() {
    super.initState();

    _textFocusInput.addListener(() {
      if (_textFocusInput.hasFocus) {
        setState(() {
          _focusColor = activePrimaryColor;
        });
      } else {
        setState(() {
          _focusColor = Colors.grey[50]!;
        });
      }
    });
  }

  @override
  void dispose() {
    _textFocusInput.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = bodyMedium14;

    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
                width: 1.5,
                color: _textFocusInput.hasFocus
                    ? primaryColor
                    : Colors.transparent),
            borderRadius: BorderRadius.circular(20),
            color: _focusColor),
        child: TextFormField(
          style: bodyLarge14.copyWith(color: Colors.black),
          focusNode: _textFocusInput,
          obscureText: widget.obscureText,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: textStyle,
              prefixIcon: widget.prefixIcon),
        ));
  }
}
