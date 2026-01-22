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

joinMeeting(BuildContext context) {
  Navigator.pushNamed(context, '/video-call');
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
                  icon: Icons.video_camera_front,
                  iconSize: 30.0,
                  color: Colors.lightBlue,
                  text: 'New Meeting',
                ),  
                MeetingCard(
                  onPressed: ()=>{joinMeeting},
                  icon: Icons.person_add,
                  iconSize: 30.0,
                  color: Colors.lightBlue,
                  text: 'Join Meeting',
                ),
                MeetingCard(
                  onPressed: () {},
                  icon: Icons.question_mark,
                  iconSize: 30.0,
                  color: Colors.lightBlue,
                  text: 'Mysterious...',
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