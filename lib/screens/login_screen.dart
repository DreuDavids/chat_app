import 'package:chat_app/components/components.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const LoginScreen({super.key});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const LogoBox(height: 200),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kidTextFieldDecoration.copyWith(
                hintText: 'Enter Your Email',
              ),
            ),
            const SizedBox(
              height: 28.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              obscureText: true,
              decoration: kidTextFieldDecoration.copyWith(
                hintText: 'Enter Your Password',
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            MyTonalButton(
              title: 'Log In',
              onTap: () {
                //log In user
                print('Log in user');
              },
            )
          ],
        ),
      ),
    );
  }
}
