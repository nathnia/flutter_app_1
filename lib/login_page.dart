import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculator_page.dart';
import 'package:flutter_application_1/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
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
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
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
                ),
                obscureText: true,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    // if (_emailController.text == 'admin' && _passwordController.text == 'admin') {
                    //   print("sscss");
                    // } else {
                    //   print("sscss");
                    // }

                    if (_emailController.text == 'admin' &&
                        _passwordController.text == 'admin') {
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

                    // String email = _emailController.text.trim();
                    // String password = _passwordController.text.trim();

                    // if (email == 'admin' && password == 'admin') {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     SnackBar(content: Text("login sukses"))
                    //   );
                    // } else {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     SnackBar(content: Text("login gagal"))
                    //   );
                    // }
                  },
                  child: Text("Login"),
                ),
              ),
            ),

            Text(statusLogin),
            
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterPage()),
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
