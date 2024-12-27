import 'package:flutter/material.dart';
import 'package:rapido_app_clone/utils/custom_text_style.dart';

class MySaveMoreCard extends StatefulWidget {
  String imagePath;
  String title;

  MySaveMoreCard({super.key, required this.title, required this.imagePath});

  @override
  State<MySaveMoreCard> createState() => _MySaveMoreCardState();
}

class _MySaveMoreCardState extends State<MySaveMoreCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.05),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(
                widget.imagePath,
              ))),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          widget.title,
          style: myTextStyle18(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
