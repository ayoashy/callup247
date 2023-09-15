import 'package:callup247/responsive_text_styles.dart';
import 'package:flutter/material.dart';

class ServiceProviderCard extends StatelessWidget {
  final String name;
  final String bio;
  final String image;
  final Function() onPressedButton1;
  final Function() onPressedButton2;
  final bool isOnline;

  const ServiceProviderCard({
    super.key,
    required this.name,
    required this.bio,
    required this.image,
    required this.onPressedButton1,
    required this.onPressedButton2,
    required this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.black, width: 2),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [Colors.blue.shade300, Colors.blue.shade700],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name,
                    style:
                        responsiveTextStyle(context, 18, Colors.white, null)),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: isOnline ? Colors.green : Colors.black,
                      size: 12,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 2),
            Center(
              child: Image.asset(
                image,
              ),
            ),
            const SizedBox(height: 2),
            Text(bio,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: responsiveTextStyle(context, 14, Colors.white, null)),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent),
                  onPressed: onPressedButton1,
                  child: const Text('View Profile'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent),
                  onPressed: onPressedButton2,
                  child: const Text('Contact'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
