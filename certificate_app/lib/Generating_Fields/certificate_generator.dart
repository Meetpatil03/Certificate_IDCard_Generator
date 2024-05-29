import 'package:certificate_app/Generated_Page/certificate_generated_page.dart';
import 'package:certificate_app/custom_widgets/textform_field.dart';
import 'package:flutter/material.dart';

class CertificateGenerator extends StatefulWidget {
  const CertificateGenerator({super.key});

  @override
  State<CertificateGenerator> createState() => _CertificateGeneratorState();
}

class _CertificateGeneratorState extends State<CertificateGenerator> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController companyController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    typeController.dispose();
    companyController.dispose();
    dateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Certificate Generator"),
      ),
      body: Column(
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
            hintText: 'Enter-Course-Name/Workshop/Seminar',
            controller: typeController,
            secure: 0,
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          TextForm(
            hintText: 'Enter-company-Conducted',
            controller: companyController,
            secure: 0,
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          TextForm(
            hintText: 'Enter-date presented',
            controller: dateController,
            secure: 0,
          ),
          SizedBox(
            height: size.height * 0.08,
          ),
          ElevatedButton(
            onPressed: () {
              if (nameController.text.isNotEmpty &&
                  typeController.text.isNotEmpty &&
                  companyController.text.isNotEmpty &&
                  dateController.text.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CertificatePage(
                        name: nameController.text,
                        course: typeController.text,
                        company: companyController.text,
                        date: dateController.text),
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
            style:
                ElevatedButton.styleFrom(fixedSize: Size(size.width * 0.4, 50)),
            child: const Text(
              "Create",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
