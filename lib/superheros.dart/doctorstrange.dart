import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelity/widget/youtubeplayer.dart';

class Doctorstrange extends StatefulWidget {
  const Doctorstrange({super.key});

  @override
  State<Doctorstrange> createState() => _DoctorstrangeState();
}

class _DoctorstrangeState extends State<Doctorstrange> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Doctor Strange",
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
                    'Assets/SuperHeros/peakpx (17).jpg',
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
                    "Doctor Strange",
                    style: GoogleFonts.marvel(
                        textStyle:
                            const TextStyle(fontSize: 35, color: Colors.white)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Doctor Strange, also known as Stephen Strange, is one of Marvel Comics' most powerful and iconic sorcerers. Created by writer Stan Lee and artist Steve Ditko, Doctor Strange first appeared in Strange Tales #110 in 1963. He holds the title of Sorcerer Supreme, Earth's primary protector against mystical and magical threats.",
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
                                'https://youtu.be/h7gvFravm4A?si=g5Oa7Vm-r0cW-1Y7'),
                      ),
                      Container(
                        height: 170,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
                        child: const YoutubeVideoPlayer(
                            videoUrl:
                                'https://youtu.be/aWzlQ2N6qqg?si=hR04224XhgL2GFJ5'),
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
