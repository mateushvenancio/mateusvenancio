import 'package:flutter/material.dart';
import 'package:mateusvenancio/app/home/pages/home/social/social.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ResponsiveBuilder(
        builder: (context, sizeInfo) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                sizeInfo.isMobile ? 'Mateus\nVenâncio' : 'Mateus Venâncio',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
              Social(),
            ],
          );
        },
      ),
    );
  }
}
