import 'package:flutter/material.dart';
import 'package:ecommerce_app/common/widgets/button/basic_app_button.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signupText(context),
            const SizedBox(height: 20),
            _emailField(context),
            const SizedBox(height: 20),
            _passwordField(context),
            const SizedBox(height: 20),
            _confirmPasswordField(context),
            const SizedBox(height: 20),
            _signupButton(),
          ],
        ),
      ),
    );
  }

  Widget _signupText(BuildContext context) {
    return Text(
      'Sign Up',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Email',
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
      ),
    );
  }

  Widget _confirmPasswordField(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Confirm Password',
      ),
    );
  }

  Widget _signupButton() {
    return BasicAppButton(
      onPressed: () {},
      title: 'Sign Up',
    );
  }
}
