import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final List<String> imagePaths = [
    'Assets/SuperHeros/peakpx (1).jpg',
    'Assets/SuperHeros/peakpx (2).jpg',
    'Assets/SuperHeros/peakpx (3).jpg',
    'Assets/SuperHeros/peakpx (4).jpg',
    'Assets/SuperHeros/peakpx (5).jpg',
    'Assets/SuperHeros/peakpx (6).jpg',
    'Assets/SuperHeros/peakpx (7).jpg',
    'Assets/SuperHeros/peakpx (8).jpg',
    'Assets/SuperHeros/peakpx (9).jpg',
    'Assets/SuperHeros/peakpx (10).jpg',
    'Assets/SuperHeros/peakpx (11).jpg',
    'Assets/SuperHeros/peakpx (12).jpg',
    'Assets/SuperHeros/peakpx (13).jpg',
    'Assets/SuperHeros/peakpx (14).jpg',
    'Assets/SuperHeros/peakpx (15).jpg',
    'Assets/SuperHeros/peakpx (16).jpg',
    'Assets/SuperHeros/peakpx (17).jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: CarouselSlider(
        options: CarouselOptions(
            height: 460.0,
            autoPlay: true,
            // aspectRatio: 16 / 9,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            viewportFraction: 0.8),
        items: imagePaths.map((item) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              item,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          );
        }).toList(),
      ),
    );
  }
}
