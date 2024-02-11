class Weather {
  Weather({
    required this.id,
    required this.temp,
    required this.name,
    required this.icon,
    this.speed,
  });

  final int id;
  final double temp;
  final String name;
  final String icon;
  final double? speed;
}
