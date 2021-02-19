import 'package:flutter/material.dart';
import 'title_section.dart';
import 'button_section.dart';
import 'text_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset(
          'images/color_apple.jpg',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        TitleSection(),
        ButtonSection(),
        TextSection(),
      ],
    );
  }
}
