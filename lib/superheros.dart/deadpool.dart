import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelity/widget/youtubeplayer.dart';

class Deadpool extends StatefulWidget {
  const Deadpool({super.key});

  @override
  State<Deadpool> createState() => _DeadpoolState();
}

class _DeadpoolState extends State<Deadpool> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Deadpool",
          style: GoogleFonts.marvel(
              textStyle: TextStyle(
            fontSize: 26,
          )),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenwidth,
          height: screenheight,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.red])),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: screenwidth * 0.7,
                  height: screenheight * 0.5,
                  child: Image.asset(
                    'Assets/SuperHeros/peakpx (5).jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    "Deadpool",
                    style: GoogleFonts.marvel(
                        textStyle:
                            const TextStyle(fontSize: 35, color: Colors.white)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Deadpool, also known as Wade Wilson, is one of Marvel Comics’ most popular and unique antiheroes, known for his dark humor, meta commentary, and over-the-top violence. Created by writer Fabian Nicieza and artist Rob Liefeld, Deadpool first appeared in The New Mutants #98 (1991) as a villain but quickly became a fan favorite due to his unpredictable and comedic nature.",
                    style: GoogleFonts.marvel(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Trailers",
                    style: GoogleFonts.judson(
                        textStyle:
                            const TextStyle(fontSize: 29, color: Colors.white)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 170,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
                        child: const YoutubeVideoPlayer(
                            videoUrl:
                                'https://youtu.be/Xithigfg7dA?si=pox2lorLd0VvN8x2'),
                      ),
                      Container(
                        height: 170,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
                        child: const YoutubeVideoPlayer(
                            videoUrl:
                                'https://youtu.be/73_1biulkYk?si=FH83jIjnmyboDHBT'),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
