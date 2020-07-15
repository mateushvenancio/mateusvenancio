import 'package:flutter/material.dart';

class MyAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 200,
      width: 200,
      child: CircleAvatar(
        backgroundImage: NetworkImage('https://i.imgur.com/bWR8wzm.jpg'),
      ),
    );
  }
}
