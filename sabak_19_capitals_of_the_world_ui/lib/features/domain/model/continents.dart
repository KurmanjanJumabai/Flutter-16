//class

class Continents {
  const Continents({required this.continentName, required this.continantImage});

  final String continentName;
  final String continantImage;
}

//object
Continents europe = const Continents(
    continentName: 'Европа', continantImage: 'assets/continents/Europe.png');
Continents asia = const Continents(
    continentName: 'Азия', continantImage: 'assets/continents/Asia.png');
Continents northAmerica = const Continents(
    continentName: 'Тундук Америка',
    continantImage: 'assets/continents/north_america.png');
Continents southAmerica = const Continents(
    continentName: 'Туштук Америка',
    continantImage: 'assets/continents/south_america.png');
Continents africa = const Continents(
    continentName: 'Африка', continantImage: 'assets/continents/africa.png');
Continents australia = const Continents(
    continentName: 'Австралия',
    continantImage: 'assets/continents/australia.png');

List<Continents> continenstList = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  australia,
  africa,
];
