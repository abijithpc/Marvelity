import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelity/widget/youtubeplayer.dart';

class Spiderman extends StatefulWidget {
  const Spiderman({super.key});

  @override
  State<Spiderman> createState() => _SpidermanState();
}

class _SpidermanState extends State<Spiderman> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Spiderman",
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
                    'Assets/SuperHeros/peakpx (1).jpg',
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
                    "Spider Man ",
                    style: GoogleFonts.marvel(
                        textStyle:
                            const TextStyle(fontSize: 35, color: Colors.white)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Spider-Man, one of Marvel's most iconic superheroes, was created by writer Stan Lee and artist Steve Ditko, first appearing in Amazing Fantasy #15 in 1962. Peter Parker, the man behind the mask, is known for his relatable struggles, personal growth, and the famous mantra, With great power comes great responsibility. Spider-Man's enduring popularity stems from his balance of superhero action and the challenges of everyday life.",
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
                                'https://youtu.be/JfVOs4VSpmA?si=X6CS8OcbasGp-wnB'),
                      ),
                      Container(
                        height: 170,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
                        child: const YoutubeVideoPlayer(
                            videoUrl:
                                'https://youtu.be/t06RUxPbp_c?si=2DQlL3aNiVcWEe_5'),
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
