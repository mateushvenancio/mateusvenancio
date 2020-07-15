import 'package:mateusvenancio/app/model/project_model.dart';
import 'package:mateusvenancio/app/model/project_status_enum.dart';
import 'package:mateusvenancio/app/widgets/project_card.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ProjetosRepository {
  final List<ProjectModel> models = [
    ProjectModel(
      title: 'Instavivid',
      status: ProjectStatus.DONE,
      usedTechnologies: ['Flutter'],
      image: 'https://i.imgur.com/ivUYgPg.jpg',
      githubLink: 'https://github.com/mateushvenancio/instavivid',
      googlePlayLink:
          "https://play.google.com/store/apps/details?id=com.venancio.fontifyeffects",
      description:
          "Criado para estudar gerência de estado, entender o dart, e se familiarizar "
          "com o Flutter. Primeiro projeto que criei! Pretendo atualizar ele no futuro.",
    ),
    ProjectModel(
      title: 'Portfolio',
      status: ProjectStatus.DONE,
      usedTechnologies: ['Flutter Web'],
      image: 'https://i.imgur.com/LD5JikD.png',
      githubLink: 'https://github.com',
      googlePlayLink: 'https://play.google.com/store',
      description: "",
    ),
    ProjectModel(
      title: 'ContactDex',
      status: ProjectStatus.IN_PROGRESS,
      usedTechnologies: ['Flutter', 'MobX', 'Sqlflite'],
      image: 'https://i.imgur.com/1tmvTcr.png',
      githubLink: 'www.github.com',
      googlePlayLink: 'www.googleplay.com',
      externalLink: 'www.google.com',
      description: "",
    ),
  ];

  final List<ProjectCard> cards = [];

  List<ProjectCard> getAllCards() {
    List<ProjectCard> getCards = [];

    models.forEach((element) {
      getCards.add(ProjectCard(element));
    });

    return getCards;
  }

  List<ResponsiveGridCol> getAllCols() {
    List<ResponsiveGridCol> getCols = [];
    List<ProjectCard> getCards = getAllCards();

    getCards.forEach((element) {
      getCols.add(ResponsiveGridCol(
        lg: 2,
        sm: 12,
        md: 6,
        child: element,
      ));
    });

    return getCols;
  }
}
