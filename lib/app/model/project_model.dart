import 'package:mateusvenancio/app/model/project_status_enum.dart';

class ProjectModel {
  final String title;
  final ProjectStatus status;
  final List<String> usedTechnologies;
  final String image;
  final String description;
  final String githubLink;
  final String googlePlayLink;
  final String externalLink;

  ProjectModel({
    this.googlePlayLink = '',
    this.externalLink = '',
    this.title = '',
    this.status = ProjectStatus.IN_PROGRESS,
    this.usedTechnologies = const [],
    this.image = '',
    this.description = '',
    this.githubLink = '',
  });
}
