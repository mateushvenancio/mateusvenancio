import 'package:flutter/material.dart';
import 'package:mateusvenancio/app/model/project_model.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Dialog extends StatelessWidget {
  ProjectModel model;

  Dialog(this.model);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ResponsiveBuilder(
      builder: (context, sizeInfo) {
        return Center(
          child: Container(
            height: size.height - 200,
            width: sizeInfo.isMobile ? size.width - 50 : 1000,
            child: Material(
              elevation: 5,
              child: Column(
                children: [
                  Text('${model.title}'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
