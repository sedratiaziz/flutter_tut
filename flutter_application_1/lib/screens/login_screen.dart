import 'package:flutter/material.dart';
import '../utils/colors/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // // Bottom navigation bar
      //  bottomNavigationBar: NavigationBar(
      //   indicatorColor: Colors.amber,
      //   destinations: const <Widget>[
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.home),
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Home',
      //     ),
      //     NavigationDestination(
      //       icon: Badge(child: Icon(Icons.message_outlined)),
      //       label: 'Messages',
      //     ),
      //     NavigationDestination(
      //       icon: Icon(Icons.add),
      //       label: 'Join',
      //     ),
      //     NavigationDestination(
      //       icon: Badge(child: Icon(Icons.notifications_outlined)),
      //       label: 'Notifications',
      //     ),
      //     NavigationDestination(
      //       icon: Badge(label: Text('2'), child: Icon(Icons.person_2_outlined)),
      //       label: 'Messages',
      //     ),
      //   ],
      // ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            // Homescreen welcome text
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0),
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
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryButtonColor,
                  minimumSize: Size(double.infinity, 65),
                  shape: RoundedSuperellipseBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: primaryButtonBorderColor),
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
