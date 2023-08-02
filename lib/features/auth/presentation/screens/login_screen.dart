import 'package:allpay/common/widget/custom_app_bar.dart';
import 'package:allpay/config/theme/app_theme.dart';
import 'package:allpay/config/theme/colors_app.dart';
import 'package:allpay/features/auth/presentation/widgets/widgets.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: _View(),
    );
  }
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Welcome',
            style: bodyLarge16.copyWith(fontSize: 32),
          ),
        ),
        const SizedBox(height: 40),
        CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: 60.0,
            child: const Icon(
              Icons.person,
              size: 100,
            )),
        SizedBox(height: size.height * 0.05),
        CustomInputField(
          hintText: 'Username',
          prefixIcon: Image.asset('assets/icons/username_icon.png'),
          obscureText: false,
        ),
        const SizedBox(height: 15),
        InputPasswordField(
          hintText: 'Password',
          prefixIcon: Image.asset('assets/icons/lock_icon.png'),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: RoundedButton(
            colorButton: primaryColor,
            textButton: 'Sign in',
          ),
        ),
        const SizedBox(height: 25),
        Container(
            alignment: Alignment.center,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot the Password?',
                  style: bodyLarge14.copyWith(color: primaryColor),
                )))
      ]),
    );
  }
}
