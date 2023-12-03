// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecomapp/screens/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Expanded(
        child: Column(
          children: [
            Image.network(
                'https://cdn.dribbble.com/users/2100764/screenshots/5549172/amazon-logo-animation.gif'),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 40, fontFamily: 'Amazon Ember'),
              ),
            ),
            Expanded(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 60,
                    left: 50,
                    right: 50,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      // labelText: 'Username',
                      hintText: 'Email Address',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 50,
                    right: 50,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      alignment: Alignment.center,
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 173, 20)),
                      minimumSize: MaterialStateProperty.all(
                        Size(300, 40),
                      ),
                    ),
                    child: Text('Sign in'),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
