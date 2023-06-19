import 'package:chat_app/components/components.dart';
import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  const RegistrationScreen({super.key});
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
              height: 24.0,
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
              title: 'Register',
              onTap: () {
                //register the user here
                print('register user');
              },
            )
          ],
        ),
      ),
    );
  }
}
