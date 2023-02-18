class Weather {
  var temp;
  var minTemp;
  var maxTemp;
  var humidity;
  late String weatherMain;
  late String weatherMainDesc;
  late String weatherDate;
  late String city;
  late String country;
  late String icon;
  late String timestamp;
  Weather(
    this.temp,
    this.minTemp,
    this.maxTemp,
    this.humidity,
    this.weatherMain,
    this.weatherMainDesc,
    this.weatherDate,
    this.city,
    this.country,
    this.icon,
    this.timestamp,
  );

  Weather.fromJson(
      Map<String, dynamic> json, String cityName, String countryname) {
    country = countryname;
    timestamp = json['dt'].toString();
    city = cityName;
    temp = json['main']['temp'];
    minTemp = json["main"]['temp_min'];
    maxTemp = json["main"]['temp_max'];
    humidity = json["main"]['humidity'];
    weatherMain = json["weather"][0]['main'];
    icon = json['weather'][0]['icon'];
    weatherMainDesc = json["weather"][0]['description'];
    weatherDate = json['dt_txt']
        .toString()
        .substring(0, json['dt_txt'].toString().length - 3);
  }
}
