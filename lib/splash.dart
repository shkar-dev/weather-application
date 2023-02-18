import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  // @override
  // void initState() {
  //   super.initState();
  //   _navigatetohome();
  // }

  void navigate() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    child: Lottie.asset('assets/animate.json'),
                  ),
                ),
              ),
              RichText(
                text: const TextSpan(
                  text: '   Weather ',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'caudex',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      style: TextStyle(color: Color.fromARGB(255, 255, 204, 0)),
                      text: '\nForecast App',
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                  child: const Text(
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia molestiae quas vel sint commodi',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'RalewayLight',
                        fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(15, 40, 15, 25),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 210, 157, 0),
                        ),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.fromLTRB(0, 20, 0, 20))),
                    onPressed: () {
                      navigate();
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'caudex',
                        shadows: null,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 53, 54, 94),
    );
  }
}
