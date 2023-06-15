import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_page/homepage.dart';
//import 'package:home_page/homepage.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // const DrawerHeader(
          //child:
          // const Text(
          //'Side menu',
          // style:
          //     TextStyle(color: Color.fromARGB(255, 11, 10, 10), fontSize: 25),
          // ),
          //decoration: BoxDecoration(
          // color: Colors.green,
          //image:
          //    DecorationImage(fit: BoxFit.fill, image: AssetImage('
          //   '))),
          // ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.house),
            title: const Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.networkWired),
            title: const Text('Initiatives'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.image),
            title: const Text('Gallery'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.peopleGroup),
            title: const Text('Team'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.add_ic_call),
            title: const Text('Contact'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.login_outlined),
            title: const Text('Login/SIgnup'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
