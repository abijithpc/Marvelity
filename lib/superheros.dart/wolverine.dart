import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelity/widget/youtubeplayer.dart';

class Wolverine extends StatefulWidget {
  const Wolverine({super.key});

  @override
  State<Wolverine> createState() => _WolverineState();
}

class _WolverineState extends State<Wolverine> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Wolverine",
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
                    'Assets/SuperHeros/peakpx (8).jpg',
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
                    "Wolverine",
                    style: GoogleFonts.marvel(
                        textStyle:
                            const TextStyle(fontSize: 35, color: Colors.white)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Wolverine, also known as Logan or James Howlett, is one of the most iconic and beloved characters in Marvel Comics. He’s a member of the X-Men and has also been part of various teams like the Avengers and X-Force. Wolverine is known for his healing factor, adamantium claws, animalistic nature, and a dark, mysterious past filled with trauma, violence, and redemption. He made his first full appearance in The Incredible Hulk #181 (1974), created by Roy Thomas, Len Wein, and artist John Romita Sr.",
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
                                'https://youtu.be/b-luHrUN6hs?si=9E3PcpmtWTVcPhcJ'),
                      ),
                      Container(
                        height: 170,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
                        child: const YoutubeVideoPlayer(
                            videoUrl:
                                'https://youtu.be/8IxT7WFL6Ec?si=e-wQQGxenWbhUiGm'),
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
