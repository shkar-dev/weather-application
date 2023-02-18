import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:weather/card.dart';
import 'package:weather/provider/weather.dart';

import 'package:weather/todayCardItem.dart';
import 'package:weather/weekItem.dart';
import 'navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    var weather = Provider.of<WeatherProvider>(context);
    weather.fetchWeather().whenComplete(() {
      isFinished = weather.isLoadingFinished;
    });
    return SafeArea(
      child: Scaffold(
          drawer: const Navigation(),
          backgroundColor: const Color.fromARGB(255, 53, 54, 94),
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            shadowColor: const Color.fromARGB(255, 53, 54, 94),
            backgroundColor: const Color.fromARGB(255, 53, 54, 94),
            title: const Text(
              'Weather Forecast',
              style: TextStyle(
                fontFamily: 'RalewayLight',
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.search_outlined))
            ],
          ),
          body: isFinished
              ? SafeArea(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: double.infinity,
                        height: 200,
                        child: const MainCard(),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                        width: double.infinity,
                        child: const Text(
                          'Today\'s Weather',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        child: ListView.builder(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          itemCount: 7,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) => TodayCardItem(
                                weather.weather[index],
                              )),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                        width: double.infinity,
                        child: const Text(
                          'This Week\'s Weather',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 40,
                          padding: const EdgeInsets.all(15),
                          itemBuilder: (context, index) => Container(
                            width: double.infinity,
                            height: 110,
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 86, 83, 142),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: WeekItem(weather.weather[index]),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : const Center(child: CircularProgressIndicator())),
    );
  }
}
