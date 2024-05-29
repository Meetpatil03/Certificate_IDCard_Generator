import 'package:certificate_app/Main_Screen_Pages/MainPage.dart';
import 'package:certificate_app/Generating_Fields/certificate_generator.dart';

import 'package:certificate_app/Generating_Fields/id_generator.dart';
import 'package:certificate_app/Credentials_Pages/login_view.dart';
import 'package:certificate_app/Credentials_Pages/signup_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromRGBO(13, 16, 34, 1),
      ),
      home: LoginPage(),
      routes: {
        'login-route': (context) => const LoginPage(),
        'signup-route': (context) => const SignUpPage(),
        'main-screen-route': (context) => const MainScreen(),
        'certificate-generator-route': (context) =>
            const CertificateGenerator(),
        'id-generator-route': (context) => const IdGenerator(),
      },
    );
  }
}
