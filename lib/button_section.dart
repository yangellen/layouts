import 'package:flutter/material.dart';

Color color = Colors.blue;

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColum(color, Icons.call, 'CALL'),
          _buildButtonColum(color, Icons.near_me, 'ROUTE'),
          _buildButtonColum(color, Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Column _buildButtonColum(Color color, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
