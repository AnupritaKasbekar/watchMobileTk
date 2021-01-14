import 'package:flutter/material.dart';

class help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Phone Setting:',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Expanded(
          child: Text(
              'Phone Settings will help you to set the settings for the connection with your apple watch.'),
        ),
        Text(
          'watch Setting:',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Expanded(
          child: Text(
              'watch Settings will help you to set the settings for the connection with your phone.'),
        ),
      ],
    );
  }
}
