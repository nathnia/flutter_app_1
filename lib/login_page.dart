import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculator_page.dart';
import 'package:flutter_application_1/register_page.dart';
import 'package:flutter_application_1/widgets/widget_button.dart';
import 'package:flutter_application_1/widgets/widget_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to our first App",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text("Please login using email and password"),
            SizedBox(height: 20),

            Center(child: Image.asset('assets/logo.png', width: 150)),

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

            Container(margin: EdgeInsets.only(top: 20)),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: CustomButton(
                  text: "Login",
                  textColor: Colors.deepPurple,
                  onPressed: () {
                    if (emailController.text == 'admin' &&
                        passwordController.text == 'admin') {
                      setState(() {
                        statusLogin = "sukses login";
                        print(statusLogin);
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CalculatorPage(),
                        ),
                      );
                    } else {
                      setState(() {
                        statusLogin = "gagal login";
                        print(statusLogin);
                      });
                    }
                  },
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: CustomButton(
                  text: "Register",
                  textColor: Colors.deepPurple,
                  onPressed: () {
                    print("ini Register");
                  },
                ),
              ),
            ),

            Text(statusLogin),

            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                child: Text(
                  'Register here',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
