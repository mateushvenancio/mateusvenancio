import 'package:flutter/material.dart';

class TopBarItem extends StatelessWidget {
  final String label;
  final Function onClick;

  TopBarItem({@required this.label, this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: MediaQuery.of(context).size.height - 20,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onClick,
          child: Center(
            child: Text(
              '$label',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
