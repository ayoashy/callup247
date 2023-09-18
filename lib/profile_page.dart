import 'package:callup247/responsive_text_styles.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isOnline = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: isOnline ? Colors.green : Colors.black,
                          size: 12,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
          Container(
            decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                border: Border.all(width: 2, color: Colors.black)),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      border: Border.symmetric(
                          vertical: BorderSide(width: 2, color: Colors.black))),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Video\nCall',
                        textAlign: TextAlign.center,
                        style: responsiveTextStyle(
                            context, 16, Colors.white, FontWeight.bold),
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      border: Border.symmetric(
                          vertical: BorderSide(width: 2, color: Colors.black))),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Voice\nCall',
                        textAlign: TextAlign.center,
                        style: responsiveTextStyle(
                            context, 16, Colors.white, FontWeight.bold),
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      border: Border.symmetric(
                          vertical: BorderSide(width: 2, color: Colors.black))),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Make\nPayment',
                        textAlign: TextAlign.center,
                        style: responsiveTextStyle(
                            context, 16, Colors.white, FontWeight.bold),
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      border: Border.symmetric(
                          vertical: BorderSide(width: 2, color: Colors.black))),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Online\nChat',
                        textAlign: TextAlign.center,
                        style: responsiveTextStyle(
                            context, 16, Colors.white, FontWeight.bold),
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      border: Border.symmetric(
                          vertical: BorderSide(width: 2, color: Colors.black))),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Leave\nReview',
                        textAlign: TextAlign.center,
                        style: responsiveTextStyle(
                            context, 16, Colors.white, FontWeight.bold),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
