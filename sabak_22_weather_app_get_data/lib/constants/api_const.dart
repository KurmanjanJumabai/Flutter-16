class ApiConst {
  static String cityName(String name) =>
      'https://api.openweathermap.org/data/2.5/weather?q=$name&appid=658b189347e88e1154c1a473190667d1';

  static String LatLongApi(double lat, double Long) =>
      'http://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$Long&exclude=hourly,daily,minutely&appid=41aa18abb8974c0ea27098038f6feb1b';
}
