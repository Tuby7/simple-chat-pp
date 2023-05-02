import 'package:chat_app/sceens/chat_screen.dart';
import 'package:chat_app/sceens/registration_screen.dart';
import 'package:chat_app/sceens/sign_in_screen.dart';
import 'package:chat_app/sceens/welcom_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatMe app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: ChatScreen(),
      initialRoute: _auth.currentUser != null
          ? ChatScreen.screenRout
          : WelcomeScreen.screenRout,
      routes: {
        WelcomeScreen.screenRout: (context) => const WelcomeScreen(),
        SignIn.screenRout: (context) => const SignIn(),
        RegistrationScreen.screenRout: (context) => const RegistrationScreen(),
        ChatScreen.screenRout: (context) => const ChatScreen(),
      },
    );
  }
}
