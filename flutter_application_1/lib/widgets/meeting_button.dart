import 'package:flutter/material.dart';

class MeetingCard extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final double iconSize;
  final Color color;
  final String text;

const MeetingCard({ 
  Key? key,
  required this.onPressed, 
  required this.icon,
  required this.iconSize,
  required this.color,
  required this.text,
   }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            // ---  child #1 ---
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(15),          
              ),
              child: Icon(icon, size: iconSize,),                            
            ),
        
            // --- child #2 ---
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(text),
            ),
          ],
        ),
      ),
    );
  }
}