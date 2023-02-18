import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'model/weather.dart';

class TodayCardItem extends StatelessWidget {
  final Weather weather;
  const TodayCardItem(this.weather, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 100,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 86, 83, 142),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          )),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              height: 80,
              width: 80,
              child: Lottie.asset('assets/animate.json'),
            ),
            Expanded(
              child: Center(
                child: Text(
                  weather.weatherDate.toString().substring(11),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                text: weather.minTemp.toString(),
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Alata'),
                children: const <TextSpan>[
                  TextSpan(
                    text: '℃',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'caudex',
                      color: Color.fromARGB(255, 255, 204, 0),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
