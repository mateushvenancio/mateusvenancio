import 'package:flutter/material.dart';

class ProjectsActionButtons extends StatelessWidget {
  final List<IconButton> buttons;

  ProjectsActionButtons({@required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      // color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: buttons,
      ),
    );
  }
}
