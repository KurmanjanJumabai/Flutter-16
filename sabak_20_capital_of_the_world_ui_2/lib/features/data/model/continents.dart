//class

import 'package:sabak_20_capital_of_the_world_ui_2/features/data/test.dart';

class Continents {
  Continents({
    required this.continentName,
    required this.continantImage,
    this.test,
    this.asiaContinentTest,
    this.continentsAfrica,
  });

  final String continentName;
  final String continantImage;
  final List<Test>? test;
  AsiaContinentTest? asiaContinentTest;
  ContinentsAfrica? continentsAfrica;
}

class AsiaContinentTest {
  final String surooText;
  final String image;

  AsiaContinentTest({
    required this.surooText,
    required this.image,
  });
}

class ContinentsAfrica extends AsiaContinentTest {
  ContinentsAfrica()
      : super(
          surooText: 'Tanzania',
          image: 'assets/continents/bishkek.jpg',
        );
}

//object
Continents europe = Continents(
    continentName: 'Европа', continantImage: 'assets/continents/Europe.png');

Continents asia = Continents(
    continentName: 'Азия',
    continantImage: 'assets/continents/Asia.png',
    test: capitalsList,
    asiaContinentTest: AsiaContinentTest(
      surooText: 'Астана',
      image: 'assets/continents/bishkek.jpg',
    ));
Continents northAmerica = Continents(
    continentName: 'Тундук Америка',
    continantImage: 'assets/continents/north_america.png');
Continents southAmerica = Continents(
    continentName: 'Туштук Америка',
    continantImage: 'assets/continents/south_america.png');
Continents africa = Continents(
    continentName: 'Африка',
    continantImage: 'assets/continents/africa.png',
    continentsAfrica: ContinentsAfrica());
Continents australia = Continents(
    continentName: 'Австралия',
    continantImage: 'assets/continents/australia.png');

List<Continents> continenstList = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
];
