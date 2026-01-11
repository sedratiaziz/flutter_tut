import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/meeting_button.dart';

class HomeContent extends StatelessWidget {
const HomeContent({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
        children: [


          // --- child #1 ---
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MeetingCard(
                  onPressed: () {},
                  icon: Icons.phone,
                  iconSize: 30.0,
                  color: Colors.lightBlue,
                  text: 'Join meeting',
                ),
                MeetingCard(
                  onPressed: () {},
                  icon: Icons.add,
                  iconSize: 30.0,
                  color: Colors.lightBlue,
                  text: 'Create a meeting',
                ),
                MeetingCard(
                  onPressed: () {},
                  icon: Icons.phone,
                  iconSize: 30.0,
                  color: Colors.lightBlue,
                  text: 'Join a meeting',
                ),
              ],
            ),
          ),
          // --- child #1 ---



          // --- child #2 ---
          Expanded(
            child: Center(
              child: Text(
                'Welcome to Menasaty',
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
          // --- child #2 ---


          
        ],
      );

  }
}