import 'package:allpay/config/theme/app_theme.dart';
import 'package:allpay/config/theme/colors_app.dart';
import 'package:flutter/material.dart';

class InputPasswordField extends StatefulWidget {
  const InputPasswordField(
      {super.key, this.hintText, this.prefixIcon, required});

  final String? hintText;
  final Widget? prefixIcon;

  @override
  State<InputPasswordField> createState() => _InputPasswordFieldState();
}

class _InputPasswordFieldState extends State<InputPasswordField> {
  late bool _obscureText;
  final FocusNode _textFocusInput = FocusNode();
  late Color _focusColor = Colors.grey[50]!;

  @override
  void initState() {
    super.initState();
    _obscureText = false;

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
          obscureText: !_obscureText,
          focusNode: _textFocusInput,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: textStyle,
              prefixIcon: widget.prefixIcon,
              suffixIcon: IconButton(
                  padding: const EdgeInsetsDirectional.only(end: 10),
                  splashColor: Colors.transparent,
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: _obscureText
                      ? const Icon(
                          Icons.visibility_rounded,
                          color: Colors.grey,
                        )
                      : const Icon(
                          Icons.visibility_off_rounded,
                          color: Colors.grey,
                        ))),
        ));
  }
}
