import 'package:certificate_app/Generated_Page/Id_generated_page.dart';
import 'package:certificate_app/custom_widgets/textform_field.dart';
import 'package:flutter/material.dart';

class IdGenerator extends StatefulWidget {
  const IdGenerator({super.key});

  @override
  State<IdGenerator> createState() => _IdGeneratorState();
}

class _IdGeneratorState extends State<IdGenerator> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController deptController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController collegeController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController validController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("ID Generator"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.04,
            ),
            TextForm(
              hintText: 'Enter-Name',
              controller: nameController,
              secure: 0,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            TextForm(
              hintText: 'Enter-department',
              controller: deptController,
              secure: 0,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            TextForm(
              hintText: 'Enter-year',
              controller: yearController,
              secure: 0,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            TextForm(
              hintText: 'Enter-college',
              controller: collegeController,
              secure: 0,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            TextForm(
              hintText: 'Enter-date of Birth',
              controller: dobController,
              secure: 0,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            TextForm(
              hintText: 'Enter-Mobile',
              controller: mobileController,
              secure: 0,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            TextForm(
              hintText: 'Enter-Address',
              controller: addressController,
              secure: 0,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            TextForm(
              hintText: 'Enter-Validity',
              controller: validController,
              secure: 0,
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            ElevatedButton(
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    deptController.text.isNotEmpty &&
                    yearController.text.isNotEmpty &&
                    collegeController.text.isNotEmpty &&
                    dobController.text.isNotEmpty &&
                    mobileController.text.isNotEmpty &&
                    addressController.text.isNotEmpty &&
                    validController.text.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IdPage(
                          name: nameController.text,
                          dept: deptController.text,
                          year: yearController.text,
                          college: collegeController.text,
                          dob: dobController.text,
                          mob: mobileController.text,
                          add: addressController.text,
                          valid: validController.text),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Your one of the field is Empty'),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(size.width * 0.4, 50)),
              child: const Text(
                "Create",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
