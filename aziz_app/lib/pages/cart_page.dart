import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {


  // variables and methods


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          // #Task Element
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24),
            child: Container(
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Task #1'),
                    Icon(Icons.abc),
                  ],
                ),
              ),
            ),
          ),
          
          // #Task Element
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24),
            child: Container(
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Task #1'),
                    Icon(Icons.abc),
                  ],
                ),
              ),
            ),
          ),


          Center(
            child: SizedBox(
              height: 65,
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                print('تكنولوجيا');
                },
                child: Text('data')),
            ),
          )

        ],
      ),


    );
  }
}