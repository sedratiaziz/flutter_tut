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
  
  String _text = "Tap me!";
  Color _color = const Color.fromARGB(255, 0, 251, 255);
  Color _bg_color = Colors.white;
  double box_height = 150;

  int tap_count = 0;
  int long_press_count = 0; 
  int double_tap_count = 0;

    void logHelloWorld() {
      print('hello world');
    }


  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(child: Text('الأمم المتحدة - United Nations', style: TextStyle(color: Colors.white),)),
        ),
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
                child: Text('tap to change font color', style: TextStyle(fontSize: 20),),
              ),
              Center(
                child: Text('double tap tp change size', style: TextStyle(fontSize: 20),),
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
                        _text = 'mohamed.menacing >:)';
                        tap_count++;
                        break;
                      
                      case 1:
                        _color = Colors.yellow;
                        _text = 'A.rahman';
                        tap_count++;
                        break;
                      
                      case 2:
                        _color = Colors.green;
                        _text = 'sedrati';
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
                        _bg_color = Colors.black;
                        long_press_count++;
                        break;
                      
                      case 1:
                        _bg_color = Colors.white;
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
                onDoubleTap: () {
                  setState(() {
                    switch (double_tap_count) {
                      case 0:
                        box_height = 200;
                        double_tap_count++;
                        break;
                      
                      case 1:
                        box_height = 250;
                        double_tap_count++;
                        break;
                      
                      case 2:
                        box_height = 300;
                        double_tap_count++;
                        break;
                      
                      case 3:
                        box_height = 350;
                        double_tap_count++;
                        break;
                    }
              
                    if (double_tap_count > 3) {
                      setState(() {
                        double_tap_count = 0;
                        box_height = 150;
                      });
                    }
                  });
                },
                child: Container(
                  height: box_height,
                  width: box_height,
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
