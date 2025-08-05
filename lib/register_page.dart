import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widget_textfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? selectedGender;
  DateTime? selectedDate;
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register Page")),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Please enter your data"),
            SizedBox(height: 16),

            Container(
              child: CustomTextField(
                labelText: "Name",
                textEditingController: nameController,
                obscureText: false,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: CustomTextField(
                labelText: "Email",
                textEditingController: emailController,
                obscureText: false,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: CustomTextField(
                labelText: "Password",
                textEditingController: passwordController,
                obscureText: true,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text("Gender", style: TextStyle(fontSize: 16)),
            ),

            Row(
              children: [
                Radio<String>(
                  value: 'Male',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                ),
                Text('Male'),
                SizedBox(width: 20),
                Radio<String>(
                  value: 'Female',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                ),
                Text('Female'),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 16),
              child: CustomTextField(
                labelText: "Date of Birth",
                textEditingController: dateController,
                obscureText: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
