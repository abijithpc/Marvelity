import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelity/widget/youtubeplayer.dart';

class Moonknight extends StatefulWidget {
  const Moonknight({super.key});

  @override
  State<Moonknight> createState() => _MoonknightState();
}

class _MoonknightState extends State<Moonknight> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Moon Knight",
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
                    'Assets/SuperHeros/peakpx (14).jpg',
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
                    "Moon Knight",
                    style: GoogleFonts.marvel(
                        textStyle:
                            const TextStyle(fontSize: 35, color: Colors.white)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Moon Knight, also known as Marc Spector, is a unique and complex character in the Marvel Comics universe. Created by writer Doug Moench and artist Don Perlin, Moon Knight first appeared in Werewolf by Night #32 in 1975. The character is often described as Marvel's answer to Batman, but his stories delve into themes of mental health, identity, and the supernatural.",
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
                                'https://youtu.be/x7Krla_UxRg?si=mDm3UA0Oe_7AUU37'),
                      ),
                      Container(
                        height: 170,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
                        child: const YoutubeVideoPlayer(
                            videoUrl:
                                'https://youtu.be/ZPCJvTq9wiU?si=tj4D746qgzkpzQpt'),
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
