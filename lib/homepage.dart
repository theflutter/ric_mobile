import 'package:flutter/material.dart';
import 'package:home_page/menubar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // Define the URLs for the social media handles
  static const String facebookUrl = 'https://www.facebook.com/';
  static const String instagramUrl = 'https://www.instagram.com/';
  static const String twitterUrl = 'https://www.twitter.com/';
  static const String youtubeUrl = 'https://www.youtube.com/';

  // Function to open the social media handle URL in a web browser
  void openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const NavDrawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 4, 7, 4),
          title: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Read ',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 240, 96, 24)),
                ),
                TextSpan(
                  text: 'India ',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 240, 237, 235)),
                ),
                TextSpan(
                  text: 'Celebrations ',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 53, 158, 21)),
                ),
              ],
            ),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                Image.asset(
                  'assets/images/image4.png',
                  width: 80,
                ),
                const SizedBox(height: 20),
                const Text(
                  'FORD Mustang GT 350 Shelby 1965 - 1966',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Ford introduced the original Mustang GT350 Shelby in 1965 together with the legendary Carroll Shelby and the first car with the Cobra name on its engine.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Image.asset('assets/images/image2.png', width: 80),
                const SizedBox(height: 20),
                const Text(
                  'FORD Mustang Shelby GT500 2012 - 2015',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Ford refreshed the Mustang GT500 in 2012 for the 2013 model year, thrilling the market and threatening its main competitor with its mighty power and handling abilities.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Image.asset('assets/images/image5.png', width: 80),
                const SizedBox(height: 20),
                const Text(
                  'FORD Mustang Shelby GT350R 2015 - Present',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Ford introduced the Mustang in 1964, and Caroll Shelby enhanced it to an incredible level of track performance with the legendary GT350 Competition model. In 2015, Ford launched a special version of the sixth-generation pony car, named GT350R. It was a car developed for track use but still able to wear license plates on it.',
                  style: TextStyle(fontSize: 16),
                ),
                // Add more images and text here
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () => openUrl(facebookUrl),
                    icon: const Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ),
                    iconSize: 30, // Adjust the icon size as needed
                  ),
                  IconButton(
                    onPressed: () => openUrl(instagramUrl),
                    icon: const FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Color.fromRGBO(255, 0, 217, 1),
                    ),
                    iconSize: 30, // Adjust the icon size as needed
                  ),
                  IconButton(
                    onPressed: () => openUrl(twitterUrl),
                    icon: const FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                    ),
                    iconSize: 30, // Adjust the icon size as needed
                  ),
                  IconButton(
                    onPressed: () => openUrl(youtubeUrl),
                    icon: const FaIcon(
                      FontAwesomeIcons.youtube,
                      color: Colors.red,
                    ),
                    iconSize: 30, // Adjust the icon size as needed
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
