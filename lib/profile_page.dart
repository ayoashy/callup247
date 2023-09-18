import 'package:flutter/material.dart';

import 'profile_page_action_button.dart';
import 'responsive_text_styles.dart';

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
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16,
                    bottom: 16,
                    top: MediaQuery.of(context).size.height * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              color: isOnline ? Colors.green : Colors.black,
                              size: 12,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  16.0), // Adjust the radius as needed
                              child: Image.asset(
                                'assets/pfp.jpg',
                                width:
                                    100, // Adjust the width to fit within the container
                                height:
                                    100, // Adjust the height to fit within the container
                                fit: BoxFit
                                    .cover, // You can adjust the BoxFit as needed
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                    Text(
                      'Media',
                      style: responsiveTextStyle(
                          context, 20, null, FontWeight.bold),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Image.asset('assets/no_media.png'),
                          Text(
                            'No media yet :(\nStart an online chat?',
                            style: responsiveTextStyle(
                                context, 16, Colors.black, null),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                    Text(
                      'Details',
                      style: responsiveTextStyle(
                          context, 20, null, FontWeight.bold),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Row(
                      children: [
                        Text('Name:', // Label
                            style: responsiveTextStyle(
                                context, 16, Colors.black, FontWeight.bold)),
                        Text(' John Doe', // Information
                            style: responsiveTextStyle(
                                context, 16, Colors.white, FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Experience:', // Label
                            style: responsiveTextStyle(
                                context, 16, Colors.black, FontWeight.bold)),
                        Text(' 2 years', // Information
                            style: responsiveTextStyle(
                                context, 16, Colors.white, FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Can Travel:', // Label
                            style: responsiveTextStyle(
                                context, 16, Colors.black, FontWeight.bold)),
                        Text(' Yes', // Information
                            style: responsiveTextStyle(
                                context, 16, Colors.white, FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Availability:', // Label
                            style: responsiveTextStyle(
                                context, 16, Colors.black, FontWeight.bold)),
                        Text(' 10am - 7pm, Mon - Sat', // Information
                            style: responsiveTextStyle(
                                context, 16, Colors.white, FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Languages Spoken:', // Label
                            style: responsiveTextStyle(
                                context, 16, Colors.black, FontWeight.bold)),
                        Text(' English', // Information
                            style: responsiveTextStyle(
                                context, 16, Colors.white, FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Special Offers:', // Label
                            style: responsiveTextStyle(
                                context, 16, Colors.black, FontWeight.bold)),
                        Text(' None', // Information
                            style: responsiveTextStyle(
                                context, 16, Colors.white, FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Customers Review:', // Label
                            style: responsiveTextStyle(
                                context, 16, Colors.black, FontWeight.bold)),
                        Row(
                          children: [
                            Text(' 2 ', // Information
                                style: responsiveTextStyle(context, 16,
                                    Colors.white, FontWeight.bold)),
                            const Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 100, // Adjust the height as needed
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              border: Border.all(width: 2, color: Colors.black),
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 600) {
                  // Adjust the threshold width as needed
                  // Use horizontal scrollable ListView for smaller screens
                  return ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ActionButton(text: 'Video\nCall', onPressed: () {}),
                      ActionButton(text: 'Voice\nCall', onPressed: () {}),
                      ActionButton(text: 'Make \nPayment', onPressed: () {}),
                      ActionButton(text: 'Online\nChat', onPressed: () {}),
                      ActionButton(text: 'Leave\nReview', onPressed: () {}),
                    ],
                  );
                } else {
                  // Use centered Row for wider screens
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ActionButton(text: 'Video\nCall', onPressed: () {}),
                      ActionButton(text: 'Voice\nCall', onPressed: () {}),
                      ActionButton(text: 'Make \nPayment', onPressed: () {}),
                      ActionButton(text: 'Online\nChat', onPressed: () {}),
                      ActionButton(text: 'Leave\nReview', onPressed: () {}),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
