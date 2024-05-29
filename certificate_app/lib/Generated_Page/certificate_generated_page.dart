import 'package:flutter/material.dart';

class CertificatePage extends StatelessWidget {
  final String name;
  final String course;
  final String company;
  final String date;
  const CertificatePage(
      {super.key,
      required this.name,
      required this.course,
      required this.company,
      required this.date});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Done !'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: size.height * 0.1),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 39, 45, 40),
                  borderRadius: BorderRadius.circular(13)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.2, vertical: 30),
                    child: const Text(
                      "Congratulations",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "This certificate is issued by ${name} for completing our ${course} conducted by ${company} on ${date}",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Verification ID : 122@223",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.1),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Functionality not add yet"),
                  ),
                );
              },
              child: const Text(
                'Print',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Functionality not add yet"),
                  ),
                );
              },
              child: const Text(
                'Share via Media',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
