import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mateusvenancio/app/home/pages/home/social/social_item.dart';

class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: 500,
      // color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SocialItem(
            icon: FontAwesomeIcons.instagram,
            link: 'https://instagram.com/mateushvenancio',
          ),
          SocialItem(
            icon: FontAwesomeIcons.whatsapp,
            link: 'https://api.whatsapp.com/send?phone=5538998837290',
          ),
          SocialItem(
            icon: FontAwesomeIcons.github,
            link: 'https://github.com/mateushvenancio',
          ),
          SocialItem(
            icon: FontAwesomeIcons.discord,
            link: 'https://discord.com/channels/@me/Ven%C3%A2ncio#2113',
          ),
        ],
      ),
    );
  }
}
