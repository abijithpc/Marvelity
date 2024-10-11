import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: CarouselSlider(
        options: CarouselOptions(
            height: 300,
            autoPlay: true,
            aspectRatio: 16 / 9,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal),
        items: [],
      ),
    );
  }
}
