import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mateusvenancio/app/home/pages/projetos/widgets/action_buttons.dart';
import 'package:mateusvenancio/app/model/project_model.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectModal extends StatelessWidget {
  final ProjectModel model;

  ProjectModal(this.model);

  @override
  Widget build(BuildContext context) {
    List<IconButton> _buttons = [];

    if (model.githubLink.length > 0)
      _buttons.add(IconButton(
        icon: Icon(FontAwesomeIcons.github),
        onPressed: () {
          launch('${model.githubLink}');
        },
      ));
    if (model.googlePlayLink.length > 0)
      _buttons.add(IconButton(
        icon: Icon(FontAwesomeIcons.googlePlay),
        onPressed: () {
          launch('${model.googlePlayLink}');
        },
      ));
    if (model.externalLink.length > 0)
      _buttons.add(IconButton(
        icon: Icon(FontAwesomeIcons.externalLinkAlt),
        onPressed: () {
          launch('${model.externalLink}');
        },
      ));

    return ResponsiveBuilder(
      builder: (context, sizeInfo) {
        double paddingHorizontal;
        double paddingVertical;

        if (sizeInfo.isMobile) {
          paddingHorizontal = 25;
          paddingVertical = 50;
        } else if (sizeInfo.isTablet) {
          paddingHorizontal = 75;
          paddingVertical = 75;
        } else if (sizeInfo.isDesktop) {
          paddingHorizontal = 500;
          paddingVertical = 100;
        }

        print(sizeInfo.deviceScreenType);

        return Dialog(
          insetPadding: EdgeInsets.symmetric(
            horizontal: paddingHorizontal,
            vertical: paddingVertical,
          ),
          child: Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  child: Text(
                    '${model.title}',
                    style: TextStyle(fontSize: 40),
                    overflow: TextOverflow.ellipsis,
                  ),
                  height: 75,
                  alignment: Alignment.center,
                ),
                Divider(thickness: 1),
                Expanded(
                  child: SingleChildScrollView(
                    child: Center(
                      child: Text("${model.description}"),
                    ),
                  ),
                ),
                Divider(thickness: 1),
                Text('Tecnologias usadas: ${model.usedTechnologies}'),
                ProjectsActionButtons(buttons: _buttons),
              ],
            ),
          ),
        );
      },
    );
  }
}
