import 'package:flutter/material.dart';
import 'package:mateusvenancio/app/home/pages/projetos/repository/projetos_repository.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ProjetosPage extends StatelessWidget {
  final ProjetosRepository repository = ProjetosRepository();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 75),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 35),
                    child: Text(
                      'Projetos',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ResponsiveGridRow(
                      children: [
                        ...repository.getAllCols(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
