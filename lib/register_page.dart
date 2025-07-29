import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String? selectedGender;
  DateTime? selectedDate;
  TextEditingController _dateController = TextEditingController();

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
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email)
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
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
              child: TextField(
                controller: _dateController,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: "Date of Birth",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now().subtract(
                      Duration(days: 365 * 15),
                    ), // default: 15 y.o.
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );
              
                  if (pickedDate != null) {
                    setState(() {
                      selectedDate = pickedDate;
                      _dateController.text =
                          "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                    });
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
