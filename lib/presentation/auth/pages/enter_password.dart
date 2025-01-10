import 'package:flutter/material.dart';
import 'package:ecommerce_app/common/widgets/button/basic_app_button.dart';
import 'package:ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:ecommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce_app/presentation/auth/pages/forgot_password.dart';
class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _siginText(context),
            const SizedBox(
              height: 20,
            ),
            _passwordField(context),
            const SizedBox(
              height: 20,
            ),
            _continueButton(),
            const SizedBox(
              height: 20,
            ),
            _forgotPassword(context),
          ],
        ),
      ),
    );
  }

  Widget _siginText(BuildContext context) {
    return Text(
      'Sign In',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter your password',
      ),
    );
  }

  Widget _continueButton() {
    return BasicAppButton(
      onPressed: () {},
      title: 'Continue',
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(text: "Forgot password?"),
      TextSpan(
          text: "Reset",
          style: TextStyle(fontWeight: FontWeight.bold),
          recognizer: TapGestureRecognizer()..onTap = () {
            AppNavigator.push(context, const ForgotPasswordPage());
          }),
    ]));
  }
}
