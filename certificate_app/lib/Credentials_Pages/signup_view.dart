import 'package:certificate_app/custom_widgets/textform_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController fullName = TextEditingController();
  final TextEditingController mobileNum = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController p1password = TextEditingController();
  final TextEditingController p2password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              const Text(
                "Sign Up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              TextForm(
                hintText: 'Enter-Full-Name',
                controller: fullName,
                secure: 0,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              TextForm(
                hintText: 'Mobile Number',
                controller: mobileNum,
                secure: 0,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              TextForm(
                hintText: 'Email Id',
                controller: email,
                secure: 0,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              TextForm(
                hintText: 'Enter Password',
                controller: p1password,
                secure: 1,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              TextForm(
                hintText: 'Re-Enter Password',
                controller: p2password,
                secure: 1,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              ElevatedButton(
                onPressed: () {
                  if (p1password.text == p2password.text) {
                    // push to Main Screen
                    Navigator.pushNamedAndRemoveUntil(
                        context, 'main-screen-route', (route) => false);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Password Doesn't Matches"),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(size.width * 0.4, 50)),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              TextButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'login-route');
                },
                child: const Text(
                  "Account Already Exists? Login",
                  style: TextStyle(color: Colors.orangeAccent, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
