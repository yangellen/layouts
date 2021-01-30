import 'package:flutter/material.dart';
import 'title_section.dart';
import 'button_section.dart';
import 'text_section.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Column(
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
        ),
      ),
    );
  }
}
