import 'package:flutter/material.dart';

class IdPage extends StatelessWidget {
  final String name;
  final String dept;
  final String year;
  final String college;
  final String dob;
  final String mob;
  final String add;
  final String valid;
  const IdPage(
      {super.key,
      required this.name,
      required this.dept,
      required this.year,
      required this.college,
      required this.dob,
      required this.mob,
      required this.add,
      required this.valid});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Done !'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.1),
            padding: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green, //color of border
                  width: 2, //width of border
                ),
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                Text(
                  'Name : ${name}',
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Text(
                  'Department : ${dept}',
                  style: const TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Text(
                  'Year : ${year}',
                  style: const TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Text(
                  'College : ${college}',
                  style: const TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Text(
                  'Date of Birth : ${dob}',
                  style: const TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Text(
                  'Mobile Number : ${mob}',
                  style: const TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Text(
                  'Address : ${add}',
                  style: const TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Text(
                  'Valid-till : ${valid}',
                  style: const TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.05),
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
    );
  }
}
