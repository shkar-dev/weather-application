import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:weather/provider/weather.dart';

import 'model/weather.dart';

class MainCard extends StatefulWidget {
  const MainCard({super.key});

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  bool isFirst = true;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (isFirst) {
        isFirst = false;
        Provider.of<WeatherProvider>(context, listen: false).fetchWeather();
      }
    });
    var data = Provider.of<WeatherProvider>(context);
    List<Weather> weather = data.weather;
    return Card(
      color: const Color.fromARGB(255, 86, 83, 142),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
        child: Column(children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Today',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white,
                      fontFamily: 'RalewayLight'),
                ),
              ),
              Expanded(
                child: Text(
                  weather[0].weatherDate.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: RichText(
                  text: TextSpan(
                    text: "${weather[0].temp} ",
                    style: const TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Alata'),
                    children: const <TextSpan>[
                      TextSpan(
                        text: '℃',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 38,
                            fontFamily: 'caudex',
                            color: Color.fromARGB(255, 255, 204, 0)),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: Container(
                      height: 80,
                      width: 80,
                      child: Lottie.asset('assets/animate.json'),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const WidgetSpan(
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: Color.fromARGB(255, 255, 204, 0),
                          ),
                        ),
                        TextSpan(
                          text: '${weather[0].city} - ${weather[0].country}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Alata',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Center(
                      child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                child: Text(
                  weather[0].weatherMainDesc.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Alata'),
                ),
              )))
            ],
          )
        ]),
      ),
    );
  }
}
