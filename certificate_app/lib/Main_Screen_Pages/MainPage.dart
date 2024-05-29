import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(13, 16, 34, 1),
        title: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.blue, blurRadius: 15, spreadRadius: 0)
          ]),
          child: const Text("ID / Certificate Generator"),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.15),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.3,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'certificate-generator-route');
              },
              child: const Text(
                "Generate-Certificate",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'id-generator-route');
              },
              child: const Text(
                "Generate-ID",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
