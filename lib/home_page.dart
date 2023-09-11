import 'package:flutter/material.dart';

import 'responsive_text_styles.dart';
import 'service_provider_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchFocusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
          child: FocusScope(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 75,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/guest_dp.png'),
                              radius: 30,
                            ),
                            PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return [
                                  PopupMenuItem(
                                    textStyle: responsiveTextStyle(context, 16,
                                        Colors.black, FontWeight.bold),
                                    value: 'editProfile',
                                    child: const Text(
                                      'Edit Profile',
                                    ),
                                  ),
                                  PopupMenuItem(
                                    textStyle: responsiveTextStyle(context, 16,
                                        Colors.black, FontWeight.bold),
                                    value: 'theme',
                                    child: const Text(
                                      'Theme',
                                    ),
                                  ),
                                  PopupMenuItem(
                                    textStyle: responsiveTextStyle(context, 16,
                                        Colors.black, FontWeight.bold),
                                    value: 'customerCare',
                                    child: const Text('Customer Care'),
                                  ),
                                  PopupMenuItem(
                                    textStyle: responsiveTextStyle(context, 16,
                                        Colors.black, FontWeight.bold),
                                    value: 'termsAndConditions',
                                    child: const Text('Terms and Conditions'),
                                  ),
                                  PopupMenuItem(
                                    textStyle: responsiveTextStyle(context, 16,
                                        Colors.black, FontWeight.bold),
                                    value: 'signOut',
                                    child: const Text('Sign Out'),
                                  ),
                                ];
                              },
                              onSelected: (value) {
                                // Handle the selected menu item (navigate to the corresponding screen)
                                if (value == 'editProfile') {
                                  // Navigate to the edit profile screen
                                } else if (value == 'theme') {
                                  // Navigate to the theme screen
                                } // Add more cases for other menu items
                              },
                            ),
                          ],
                        ),
                        Text(
                          'guestuser',
                          style: responsiveTextStyle(
                              context, 16, Colors.white, FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _controller,
                        focusNode: searchFocusNode,
                        showCursor: false,
                        style: responsiveTextStyle(
                            context, 16, Colors.white, FontWeight.bold),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          suffixIcon: InkWell(
                              radius: 50,
                              splashColor: Colors.greenAccent,
                              onTap: () {
                                FocusScope.of(context).unfocus();
                                _controller.clear();
                              },
                              child: const Icon(
                                Icons.cancel,
                                color: Colors.black,
                              )),
                          hintText: 'Search...',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                Text(
                  'Saved Searches',
                  style:
                      responsiveTextStyle(context, 20, null, FontWeight.bold),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.0125),
                ServiceProviderCard(
                  name: 'John Doe',
                  bio:
                      'Experienced plumber with 5+ years of experience in fixing pipes.',
                  image: 'assets/plumber.jpg',
                  onPressedButton1: () {
                    // Implement the action for Button 1 here.
                  },
                  onPressedButton2: () {
                    // Implement the action for Button 2 here.
                  },
                  isOnline:
                      true, // Set whether the service provider is online or offline.
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
