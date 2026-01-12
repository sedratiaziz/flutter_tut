import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/resources/jitsi_meet_methods.dart';
import 'package:flutter_application_1/widgets/meeting_button.dart';

class MeetingScreen extends StatelessWidget {
MeetingScreen({ Key? key }) : super(key: key);

final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();
createNewMeeting() async {
  var random = Random();
  String roomName = (random.nextInt(100000000) + 10000000).toString();
  
  await _jitsiMeetMethods.createNewMeeting(
    roomName: 'fLuTteR RoOm oNe', 
    isAudioMuted: true, 
    isVideoMuted: true, 
    username: 'guest'
  );
}


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
                  onPressed: createNewMeeting,
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