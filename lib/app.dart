import 'package:flutter/material.dart';
import 'title_section.dart';
import 'button_section.dart';

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
            TitleSection(),
            ButtonSection(),
          ],
        ),
      ),
    );
  }
}
