import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/meeting_screen.dart';
import 'package:flutter_application_1/screens/meeting_screen.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
// import 'package:flutter_application_1/screens/meeting_history.dart';
import 'package:flutter_application_1/screens/message_screen.dart';
import 'package:flutter_application_1/screens/quran_screen.dart';
import 'package:flutter_application_1/utils/colors/colors.dart';
import 'package:flutter_application_1/widgets/meeting_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  // onPageChanged(int page) {
  //   setState(() {
  //     _page = page;
  //   });
  // }

  final List<Widget> pages = [
    MeetingScreen(), // Page 1
    MessageScreen(), // Page 2
    MeetingScreen(),
    QuranScreen(),
    Center(child: Text('Profile'),), // Page 5: Profile
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: backgroundColor,
        title: Center(child: Text('Tayseer Al-rahman')),
        actions: <Widget>[],
      ),

      body: pages[_page],

       // Bottom navigation bar
      bottomNavigationBar: NavigationBar(
        selectedIndex: _page,
        onDestinationSelected: (int page) {
          setState(() {
            _page = page;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.message),
            icon: Badge(child: Icon(Icons.message_outlined)),
            label: 'Messages',
          ),
          NavigationDestination(icon: Icon(Icons.add), label: 'Join'),
          NavigationDestination(
            selectedIcon: Icon(Icons.book),
            icon: Badge(child: Icon(Icons.book_outlined)),
            label: 'Quran',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person_2),
            icon: Badge(label: Text('2'), child: Icon(Icons.person_2_outlined)),
            label: 'Profile',
          ),
        ],
      ),
      
     
    );
  }
}
