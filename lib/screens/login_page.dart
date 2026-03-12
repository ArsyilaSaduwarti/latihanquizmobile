import 'package:flutter/material.dart';
import 'movie_list_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {

    if(passwordController.text == "217") {

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              MovieListPage(username: usernameController.text),
        ),
      );

    } else {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Password salah"),
        ),
      );

    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Welcome back to MiniLens!",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 30),

              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: login,
                  child: const Text("Login"),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}