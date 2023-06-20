import 'package:chat_app/components/components.dart';
import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'chat_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  const RegistrationScreen({super.key});
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        blur: 3,
        child: Padding(
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
                height: 24.0,
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
                title: 'Register',
                onTap: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  //register the user here
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);

                    if (newUser != null && mounted) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, ChatScreen.id, (route) => false);
                    }
                  } catch (e) {
                    debugPrint(e.toString());
                  }
                  setState(() {
                    showSpinner = false;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
