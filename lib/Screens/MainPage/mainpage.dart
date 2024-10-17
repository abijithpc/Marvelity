// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:marvelity/Screens/FavSupes/favsupers.dart';
// import 'package:marvelity/Screens/HomeScreen/homescreen.dart';
// import 'package:marvelity/Screens/MarvelCharacters/marvelcharacters.dart';

// class Mainpage extends StatefulWidget {
//   const Mainpage({super.key});

//   @override
//   State<Mainpage> createState() => _MainpageState();
// }

// class _MainpageState extends State<Mainpage> {
//   int _selectedIndex = 0;

//   void bottomnavBar(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   final List _pages = [Homescreen(), Marvelcharacters(), Favsupers()];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(child: _pages[_selectedIndex]),
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Color.fromARGB(255, 195, 24, 12),
//         color: Colors.black,
//         buttonBackgroundColor: Colors.black,
//         height: 60,
//         index: _selectedIndex,
//         onTap: bottomnavBar,
//         items: const <Widget>[
//           FaIcon(FontAwesomeIcons.house, size: 26, color: Colors.white),
//           FaIcon(FontAwesomeIcons.cloudBolt, size: 26, color: Colors.white),
//           FaIcon(FontAwesomeIcons.plus, size: 26, color: Colors.white),
//         ],
//       ),
//     );
//   }
// }
