import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'The Apple Cart was created in summmer of 2020.'
        'Now is the time to eat an apple if you want maximum health benefits!'
        'What are you waiting for? Visit The Apple Cart today'
        'We won\'t be disappoint',
        softWrap: true,
      ),
    );
  }
}
