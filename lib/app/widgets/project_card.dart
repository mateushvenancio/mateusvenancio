import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mateusvenancio/app/home/pages/projetos/widgets/modal.dart';
import 'package:mateusvenancio/app/model/project_model.dart';
import 'package:mateusvenancio/app/model/project_status_enum.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel model;

  ProjectCard(this.model);

  @override
  Widget build(BuildContext context) {
    Color setStatusColor(ProjectStatus status) {
      switch (status) {
        case ProjectStatus.DONE:
          return Color(0xff28A745);
          break;
        case ProjectStatus.CANCELED:
          return Color(0xffDC3545);
          break;
        case ProjectStatus.IN_PROGRESS:
          return Color(0xff007BFF);
          break;
        case ProjectStatus.STOPPED:
          return Color(0xffDC3545);
          break;
        default:
          return Colors.black;
          break;
      }
    }

    String setStatusName(ProjectStatus status) {
      switch (status) {
        case ProjectStatus.DONE:
          return 'Pronto';
          break;
        case ProjectStatus.CANCELED:
          return 'Cancelado';
          break;
        case ProjectStatus.IN_PROGRESS:
          return 'Em andamento';
          break;
        case ProjectStatus.STOPPED:
          return 'Parado';
          break;
        default:
          return 'Status';
          break;
      }
    }

    return Container(
      height: 250,
      width: 90,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Material(
        elevation: 2,
        child: InkWell(
          onTap: () {
            showDialog(
              context: context,
              child: ProjectModal(model),
            );
          },
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.network(
                  model.image,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 30,
                    width: 120,
                    color: setStatusColor(model.status),
                    child: Center(
                      child: Text(
                        setStatusName(model.status),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black,
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.all(10),
                child: Text(
                  '${model.title}',
                  style: TextStyle(color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
return Container(
      width: 90,
      padding: EdgeInsets.all(10),
      child: Material(
        elevation: 2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  child: Image.network(
                    model.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 30,
                      width: 120,
                      color: setStatusColor(model.status),
                      child: Center(
                        child: Text(
                          setStatusName(model.status),
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              child: Text(
                model.title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              color: Theme.of(context).primaryColor,
              height: 40,
              width: double.infinity,
              child: FlatButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('${model.title}'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [],
                          ),
                          actions: [
                            model.githubLink.length > 0
                                ? Text('link')
                                : Container(),
                          ],
                        );
                      });
                },
                child: Text('Ver mais', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
*/
