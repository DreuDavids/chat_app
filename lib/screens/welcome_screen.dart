import 'package:chat_app/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app/components/components.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animController;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    // animController = AnimationController(
    //   duration: const Duration(seconds: 1),
    //   vsync: this,
    // );
    //
    // animController.forward();
    //
    // animation =
    //     CurvedAnimation(parent: animController, curve: Curves.decelerate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LogoBox(height: 60),
                AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      speed: const Duration(milliseconds: 300),
                      curve: standardEasing,
                      'Flash Chat',
                      textStyle: const TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            MyButton(
              title: 'Log In',
              onTap: () => Navigator.pushNamed(context, LoginScreen.id),
            ),
            const SizedBox(
              height: 28.0,
            ),
            MyTonalButton(
                title: 'Register',
                onTap: () =>
                    Navigator.pushNamed(context, RegistrationScreen.id)),
          ],
        ),
      ),
    );
  }
}
