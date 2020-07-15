import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialItem extends StatelessWidget {
  final IconData icon;
  final String link;

  SocialItem({
    @required this.icon,
    @required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launch(link),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Icon(
          icon,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
