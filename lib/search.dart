import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        shadowColor: const Color.fromARGB(255, 53, 54, 94),
        backgroundColor: const Color.fromARGB(255, 53, 54, 94),
        title: const Text(
          'About',
          style: TextStyle(
            fontFamily: 'RalewayLight',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(children: [
        Container(
          width: double.infinity,
          child: Expanded(
            child: Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Colors.white70,
                        ),
                        borderRadius: BorderRadius.circular(100)),
                    child: ClipOval(
                      child: Image.network(
                        'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(17, 7),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.green.shade500),
                      onPressed: () {},
                      child: const Icon(
                        Icons.call,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Text(
          'Shkar Shahab Baqr',
          style: TextStyle(
            color: Colors.white60,
            fontSize: 25,
            fontFamily: 'RalewayLight',
            letterSpacing: 0.20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text(
            'Mobile and Web Developer',
            style: TextStyle(
              color: Colors.white60,
              fontFamily: 'caudex',
              fontSize: 16,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
          child: const Divider(
            thickness: 1,
          ),
        ),
        Container(
          height: 60,
          width: double.infinity,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                      backgroundColor: const Color.fromARGB(255, 86, 83, 142)),
                  onPressed: () {},
                  child: const Icon(
                    FontAwesomeIcons.github,
                    color: Colors.black,
                    size: 22,
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                      backgroundColor: const Color.fromARGB(255, 86, 83, 142)),
                  onPressed: () {},
                  child: const Icon(
                    FontAwesomeIcons.laravel,
                    color: Colors.red,
                    size: 22,
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                      backgroundColor: const Color.fromARGB(255, 86, 83, 142)),
                  onPressed: () {},
                  child: const Icon(
                    FontAwesomeIcons.vuejs,
                    color: Colors.green,
                    size: 22,
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                      backgroundColor: const Color.fromARGB(255, 86, 83, 142)),
                  onPressed: () {},
                  child: const Icon(
                    FontAwesomeIcons.react,
                    color: Colors.blue,
                    size: 22,
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                      backgroundColor: const Color.fromARGB(255, 86, 83, 142)),
                  onPressed: () {},
                  child: const Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                    size: 22,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Card(
          color: const Color.fromARGB(255, 86, 83, 142),
          margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: ListTile(
            title: Text(
              'My Account',
              style: TextStyle(
                  fontFamily: 'caudex', fontSize: 18, color: Colors.white60),
            ),
            leading: Icon(
              Icons.person_outline,
              color: Color.fromARGB(255, 108, 182, 243),
            ),
            trailing: Icon(
              Icons.arrow_right_rounded,
              color: Colors.white60,
            ),
          ),
        ),
        const Card(
          color: const Color.fromARGB(255, 86, 83, 142),
          margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: ListTile(
            title: Text(
              'Settings',
              style: TextStyle(
                  fontFamily: 'caudex', fontSize: 18, color: Colors.white60),
            ),
            leading: Icon(
              Icons.settings_outlined,
              color: Color.fromARGB(255, 108, 182, 243),
            ),
            trailing: Icon(
              Icons.arrow_right_rounded,
              color: Colors.white60,
            ),
          ),
        ),
        const Card(
          color: Color.fromARGB(255, 86, 83, 142),
          margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: ListTile(
            title: Text(
              'Notifications',
              style: TextStyle(
                  fontFamily: 'caudex', fontSize: 18, color: Colors.white60),
            ),
            leading: Icon(
              Icons.info_outline,
              color: Color.fromARGB(255, 108, 182, 243),
            ),
            trailing: Icon(
              Icons.arrow_right_rounded,
              color: Colors.white60,
            ),
          ),
        ),
        const Card(
          color: const Color.fromARGB(255, 86, 83, 142),
          margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: ListTile(
            title: Text(
              'Help Center',
              style: TextStyle(
                  fontFamily: 'caudex', fontSize: 18, color: Colors.white60),
            ),
            leading: Icon(
              Icons.question_mark_outlined,
              color: Color.fromARGB(255, 108, 182, 243),
            ),
            trailing: Icon(
              Icons.arrow_right_rounded,
              color: Colors.white60,
            ),
          ),
        ),
        const Card(
          color: const Color.fromARGB(255, 86, 83, 142),
          margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: ListTile(
            title: Text(
              'Logout',
              style: TextStyle(
                  fontFamily: 'caudex', fontSize: 18, color: Colors.white60),
            ),
            leading: Icon(
              Icons.logout_outlined,
              color: Color.fromARGB(255, 108, 182, 243),
            ),
            trailing: Icon(
              Icons.arrow_right_rounded,
              color: Colors.white60,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: const Center(
            child: Text(
              'All Right Rserved ©️2022',
              style: TextStyle(
                  color: Colors.white60, fontSize: 14, fontFamily: 'caudex'),
            ),
          ),
        )
      ]),
      backgroundColor: const Color.fromARGB(255, 53, 54, 94),
    ));
  }
}
