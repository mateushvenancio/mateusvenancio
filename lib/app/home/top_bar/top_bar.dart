import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'top_bar_item.dart';

class TopBar extends StatelessWidget {
  final PageController controller;

  TopBar({@required this.controller});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isMobile) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 50,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
                Expanded(child: Container()),
              ],
            ),
          );
        }
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(child: Container()),
              TopBarItem(
                label: 'Home',
                onClick: () {
                  controller.animateToPage(
                    1,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
              ),
              TopBarItem(
                label: 'Projetos',
                onClick: () {
                  controller.animateToPage(
                    0,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
              ),
              TopBarItem(
                label: 'Sobre',
                onClick: () {
                  controller.animateToPage(
                    2,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
