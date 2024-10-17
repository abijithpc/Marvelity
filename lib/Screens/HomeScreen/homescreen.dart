import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelity/Screens/HomeScreen/Widget/miraidropdown.dart';
import 'package:marvelity/Screens/HomeScreen/Widget/youtubeplayer.dart';
import 'package:marvelity/widget/carousel.dart';

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
          "MARVELITY",
          style: GoogleFonts.marvel(
              textStyle: const TextStyle(
            color: Colors.red,
            fontSize: 30,
            letterSpacing: 14,
          )),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenwidth,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.red])),
          child: Column(
            children: [
              const Carousel(),
              Container(
                  height: screenheight * 0.12,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45))),
                  child: const Miraidropdown()),
              Container(
                  decoration: const BoxDecoration(color: Colors.black),
                  child: const Youtubeplayer())
            ],
          ),
        ),
      ),
    );
  }
}
