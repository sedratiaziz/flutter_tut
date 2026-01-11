import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/meeting_button.dart';

class MessageScreen extends StatelessWidget {
const MessageScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Center(
              child: Text(
                'Chat.',
                style: TextStyle(fontSize: 28),
              ),
            );          
  }
}