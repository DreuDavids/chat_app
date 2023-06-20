import 'package:chat_app/components/components.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../constants.dart';
import 'chat_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const LoginScreen({super.key});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';

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
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                //Do something with the user input.
                email = value;
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
                password = value;
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
              onTap: () async {
                try {
                  //log In user
                  final user = await _auth.signInWithEmailAndPassword(
                      email: email, password: password);

                  if (user != null && mounted) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, ChatScreen.id, (route) => false);
                  }
                } catch (e) {
                  debugPrint(e.toString());
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
