import 'package:chat_app/sceens/registration_screen.dart';
import 'package:chat_app/sceens/sign_in_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/my_buttom.dart';

class WelcomeScreen extends StatelessWidget {
  static const String screenRout = 'Welcome_Screen';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('assets/image1.png'),
                ),
                const Text(
                  'MassegeMe',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff2e386b)),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            MyButtom(
                color: Colors.yellow[900]!,
                title: 'Sign In',
                onPressed: () {
                  Navigator.pushNamed(context, SignIn.screenRout);
                }),
            MyButtom(
                color: Colors.blue[800]!,
                title: 'Rgister',
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.screenRout);
                }),
          ],
        ),
      ),
    );
  }
}
