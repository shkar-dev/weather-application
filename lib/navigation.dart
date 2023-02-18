import 'package:flutter/material.dart';
import 'package:weather/home.dart';
import 'package:weather/search.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(webp):focal(1217x457:1219x455)/origin-imgresizer.eurosport.com/2020/02/27/2785168-57487370-2560-1440.jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            accountName: const Text('Shkar Shahab'),
            accountEmail: const Text('shkarshahab1@gmail.com'),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://coolhdwall.com/storage/2205/minimalist-digital-art-mountain-landscape-night-moon-4k-wallpaper-3840x2160-7.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
              }),
          ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Search'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Search(),
                  ),
                );
              }),
          ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () => null),
          ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Sign Out'),
              onTap: () => null),
          ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {}),
        ],
      ),
    );
  }
}
