import 'package:flutter/material.dart';
import 'package:mateusvenancio/app/home/pages/contato/widgets/avatar.dart';
import 'package:mateusvenancio/app/home/pages/contato/widgets/bottom_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ResponsiveBuilder(
      builder: (context, sizeInfo) {
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Container(
              height: size.height - 200,
              width: sizeInfo.isMobile ? size.width - 50 : 1000,
              child: Material(
                elevation: 5,
                child: Column(
                  children: [
                    MyAvatar(),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: (sizeInfo.isMobile ? 40 : 150),
                        ),
                        child: SingleChildScrollView(
                          child: Text(
                            '23 anos, estudante de Sistemas de Informação, apaixonado por Flutter e Angular.\n'
                            'Esse site foi criado para me apresentar, e apresentar alguns dos projetos que eu '
                            'venho trabalhando. Todos (ou quase) vão ter o código aberto disponível no GitHub.\n',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    MyBottomBarIcons(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
