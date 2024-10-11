import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "MARVEL",
          style: GoogleFonts.marvel(
              textStyle: const TextStyle(
            color: Colors.red,
            fontSize: 30,
            letterSpacing: 14,
          )),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: screenheight,
        width: screenwidth,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 195, 24, 12)),
        child: const Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
