import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/model/weather.dart';

class WeekItem extends StatelessWidget {
  Weather weather;
  WeekItem(this.weather, {super.key});

  @override
  Widget build(BuildContext context) {
    var date = DateTime.fromMillisecondsSinceEpoch(
        int.parse(weather.timestamp) * 1000);
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Center(
            child: Text(
              DateFormat('EEEE').format(date),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Alata',
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 60,
            child: Lottie.asset('assets/animate.json'),
          ),
        ),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'Min ${weather.minTemp} ℃ - Max ${weather.maxTemp} ℃',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Center(
                  child: Text(
                    weather.weatherDate,
                    style: const TextStyle(color: Colors.white),
                  ),
                ))
              ],
            ))
      ],
    );
  }
}
