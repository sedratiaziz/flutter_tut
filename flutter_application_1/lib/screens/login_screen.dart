import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            // Homescreen welcome text
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Text(
                'Welcome to Zoom v2!',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),


            // Homescreen Image
            Image.asset('assets/img/hero.jpg'),


            // Homepage Login button
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 65),
                  shape: RoundedSuperellipseBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: Colors.black),
                  ),
                ),
                child: Text('Login'),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
