import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData icon;

  FormInput({
    @required this.controller,
    @required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          icon == null ? Container() : Icon(icon),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(label + ': '),
          ),
          Expanded(
            child: TextField(
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
