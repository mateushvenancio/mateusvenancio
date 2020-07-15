import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyBottomBarIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      height: 85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(FontAwesomeIcons.whatsapp),
            onPressed: () {
              launch(
                'https://api.whatsapp.com/send?phone=5538998837290&text=Ol%C3%A1%2C%20vi%20seu%20site%20e...',
              );
            },
          ),
          SizedBox(width: 35),
          IconButton(
            icon: Icon(FontAwesomeIcons.envelope),
            onPressed: () {
              launch('mailto:mateushvenancio@gmail.com');
            },
          ),
          SizedBox(width: 35),
          IconButton(
            icon: Icon(FontAwesomeIcons.telegramPlane),
            onPressed: () {
              launch('https://t.me/mateusvenancio');
            },
          ),
        ],
      ),
    );
  }
}
