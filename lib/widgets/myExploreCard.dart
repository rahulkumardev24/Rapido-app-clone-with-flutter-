import 'package:flutter/material.dart';
import 'package:rapido_app_clone/utils/custom_text_style.dart';

class MyExploreCard extends StatelessWidget {
  String imagePath;
  String title;
  MyExploreCard({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Image
        Container(
          width: 80,
          decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.05),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              imagePath,
              height: 50,
              width: 50,
            ),
          ),
        ),
        Text(
          title,
          style: myTextStyle15(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
