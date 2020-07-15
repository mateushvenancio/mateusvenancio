import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mateusvenancio/app/home/main_page.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(),
        ),
        home: MainPage(),
      ),
    );
