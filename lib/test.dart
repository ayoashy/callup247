import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.zoom_out_sharp)),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 350,
              width: 350,
            ),
          ),
          Positioned(
            bottom: 50,
            right: 20,
            child: Container(
              color: Colors.amberAccent,
              height: 700,
              width: 30,
            ),
          ),
        ],
      ),
    );
  }
}
