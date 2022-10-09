import 'package:adv_galaxy_planets/screens/details.dart';
import 'package:adv_galaxy_planets/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'details_page': (context) => const DetailsPage(),
      },
    ),
  );
}
