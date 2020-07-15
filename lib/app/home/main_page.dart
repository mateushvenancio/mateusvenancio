import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mateusvenancio/app/home/pages/contato/contato.dart';
import 'package:mateusvenancio/app/home/pages/home/home.dart';
import 'package:mateusvenancio/app/home/pages/projetos/projetos.dart';
import 'package:url_launcher/url_launcher.dart';
import 'top_bar/top_bar.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                'https://i.imgur.com/Rt6yk7g.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
            ),
            PageView(
              controller: _pageController,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                ProjetosPage(),
                HomePage(),
                ContatoPage(),
              ],
            ),
            TopBar(controller: _pageController),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                        child: Text('Menu', style: TextStyle(fontSize: 40)),
                        width: double.infinity),
                    SizedBox(
                        child: Text('Social & Contato',
                            style: TextStyle(fontSize: 20)),
                        width: double.infinity),
                  ],
                ),
              ),
            ),
            Divider(height: 5, color: Colors.black),
            ListTile(title: Text('Home'), onTap: () {}),
            ListTile(title: Text('Projetos'), onTap: () {}),
            ListTile(title: Text('Sobre'), onTap: () {}),
            Divider(height: 5, color: Colors.black),
            ListTile(
              title: Text('Instagram'),
              leading: Icon(FontAwesomeIcons.instagram),
              onTap: () => launch("https://instagram.com/mateushvenancio"),
            ),
            ListTile(
              title: Text('WhatsApp'),
              leading: Icon(FontAwesomeIcons.whatsapp),
              onTap: () =>
                  launch("https://api.whatsapp.com/send?phone=5538998837290"),
            ),
            ListTile(
              title: Text('GitHub'),
              leading: Icon(FontAwesomeIcons.github),
              onTap: () => launch("https://github.com/mateushvenancio"),
            ),
            ListTile(
              title: Text('Discord'),
              leading: Icon(FontAwesomeIcons.discord),
              onTap: () =>
                  launch("https://discord.com/channels/@me/Ven%C3%A2ncio#2113"),
            ),
          ],
        ),
      ),
    );
  }
}
