import 'package:flutter/material.dart';
import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';


class JitsiMeetMethods {
  final JitsiMeet _jitsiMeet = JitsiMeet();


  createNewMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    required String username,
  }) async {
    var options = JitsiMeetConferenceOptions(
      room: 'room1',
      configOverrides: {
        "startWithAudioMuted": false,
        "startWithVideoMuted": false,
        "subject" : "Jitsi with Flutter",
      },
      featureFlags: {
        "unsaferoomwarning.enabled": false
      },
      userInfo: JitsiMeetUserInfo(
          displayName: "Flutter user 1",
          email: "user@example.com"
      ),
    );

    await _jitsiMeet.join(options);
  }




}