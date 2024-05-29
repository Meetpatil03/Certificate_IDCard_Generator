import 'package:certificate_app/custom_widgets/textform_field.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController userinfo = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.25,
              ),
              const Text(
                "Login/Sign-in",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              TextForm(
                hintText: 'Email-Id / Username / Mobile-Number',
                controller: userinfo,
                secure: 0,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              TextForm(
                hintText: 'Password',
                controller: password,
                secure: 1,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              ElevatedButton(
                onPressed: () {
                  if (password.text.isNotEmpty && userinfo.text.isNotEmpty) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, 'main-screen-route', (route) => false);
                  }
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(size.width * 0.4, 50)),
                child: const Text(
                  "login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'signup-route');
                },
                child: const Text(
                  "New User? create a Accout",
                  style: TextStyle(color: Colors.orangeAccent, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
