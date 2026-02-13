import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  
  String _text = "Hello World!";
  Color _color = Colors.black;
  Color _bg_color = Colors.white;
  int tap_count = 0;
  int long_press_count = 0;

    void logHelloWorld() {
      print('hello world');
    }


  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 15),
                child: Center(
                  child: Text('Bienvenue!', style: TextStyle(fontSize: 34),),
                ),
              ),
              Center(
                child: Text('tap for red/yellow/green', style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Center(
                  child: Text('long press for black/white', style: TextStyle(fontSize: 20),),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
              
                    switch (tap_count) {
                      case 0:
                        _color = Colors.red;
                        _text = 'RED';
                        tap_count++;
                        break;
                      
                      case 1:
                        _color = Colors.yellow;
                        _text = 'YELLOW';
                        tap_count++;
                        break;
                      
                      case 2:
                        _color = Colors.green;
                        _text = 'GREEN';
                        tap_count++;
                        break;
                    } //end switch
              
                    if (tap_count > 2) {
                      setState(() {
                        tap_count = 0;
                      });
                    }
              
                  }); //end setState
                }, //end onTap
                onLongPress: () {
                  setState(() {
                    switch (long_press_count) {
                      case 0:
                        _bg_color = Colors.white;
                        long_press_count++;
                        break;
                      
                      case 1:
                        _bg_color = Colors.black;
                        long_press_count++;
                        break;
                    }
              
                    if (long_press_count > 1) {
                      setState(() {
                        long_press_count = 0;
                      });
                    }
                  });
                },
                child: Container(
                  height: 150,
                  width: 150,
                  color: _bg_color,
                  child: Center(child: Text(_text, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: _color,
                  ),)),
                ),
              ),
            ],
          ),
        ),
        
      ),
    );
  }

 
}
