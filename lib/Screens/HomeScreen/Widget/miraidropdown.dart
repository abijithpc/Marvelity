import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelity/superheros.dart/antman.dart';
import 'package:marvelity/superheros.dart/blackpanther.dart';
import 'package:marvelity/superheros.dart/blackwidow.dart';
import 'package:marvelity/superheros.dart/bucky.dart';
import 'package:marvelity/superheros.dart/captainamerica.dart';
import 'package:marvelity/superheros.dart/captainmarvel.dart';
import 'package:marvelity/superheros.dart/deadpool.dart';
import 'package:marvelity/superheros.dart/doctorstrange.dart';
import 'package:marvelity/superheros.dart/hawkeye.dart';
import 'package:marvelity/superheros.dart/hulk.dart';
import 'package:marvelity/superheros.dart/ironman.dart';
import 'package:marvelity/superheros.dart/moonknight.dart';
import 'package:marvelity/superheros.dart/scarletwitch.dart';
import 'package:marvelity/superheros.dart/spiderman.dart';
import 'package:marvelity/superheros.dart/vision.dart';
import 'package:marvelity/superheros.dart/warmachine.dart';
import 'package:marvelity/superheros.dart/wolverine.dart';

class Miraidropdown extends StatefulWidget {
  const Miraidropdown({super.key});

  @override
  State<Miraidropdown> createState() => _MiraidropdownState();
}

class _MiraidropdownState extends State<Miraidropdown> {
  String? selectedValue;
  List<String> items = [
    'SpiderMan',
    'IronMan',
    'Captain America',
    'Moon Knight',
    'Captain Marvel',
    'Black Panther',
    'Deadpool',
    'Scarlet Witch',
    'Vision',
    'AntMan',
    'Wolerine',
    'Hulk',
    'Hawkeye',
    'Black Widow',
    'War Machine',
    'Bucky',
    'Doctor Strange'
  ];

  void _navigateToPage(String hero) {
    switch (hero) {
      case 'IronMan':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Ironman(),
            ));
        break;
      case 'SpiderMan':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Spiderman(),
            ));
        break;
      case 'Captain America':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Captainamerica(),
            ));
        break;
      case 'Moon Knight':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Moonknight(),
            ));
        break;
      case 'Captain Marvel':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Captainmarvel(),
            ));
        break;
      case 'Black Panther':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Blackpanther(),
            ));
        break;
      case 'Deadpool':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Deadpool(),
            ));
        break;
      case 'Scarlet Witch':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Scarletwitch(),
            ));
        break;
      case 'Vision':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Vision(),
            ));
        break;
      case 'AntMan':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Antman(),
            ));
        break;
      case 'Wolerine':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Wolverine(),
            ));
        break;
      case 'Hulk':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Hulk(),
            ));
        break;
      case 'Hawkeye':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Hawkeye(),
            ));
        break;
      case 'Black Widow':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Blackwidow(),
            ));
        break;
      case 'War Machine':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Warmachine(),
            ));
        break;
      case 'Bucky':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Bucky(),
            ));
        break;
      case 'Doctor Strange':
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Doctorstrange(),
            ));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(top: 26, left: 16, right: 16),
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
              labelText: "Select Your Hero",
              labelStyle: GoogleFonts.marvel(
                  textStyle:
                      const TextStyle(color: Colors.white, fontSize: 19)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(width: 2, color: Colors.black)),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.red),
                borderRadius: BorderRadius.circular(15),
              ),
              fillColor: const Color.fromARGB(255, 120, 17, 10),
              filled: true),
          dropdownColor: const Color.fromARGB(255, 120, 17, 10),
          value: selectedValue,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.red,
          ),
          iconSize: 24,
          style: const TextStyle(color: Colors.white, fontSize: 16),
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue;
            });
            if (newValue != null) {
              _navigateToPage(newValue);
            }
          },
        ),
      ),
    );
  }
}
