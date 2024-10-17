import 'package:flutter/material.dart';

class Marvelcharacters extends StatefulWidget {
  const Marvelcharacters({super.key});

  @override
  State<Marvelcharacters> createState() => _MarvelcharactersState();
}

class _MarvelcharactersState extends State<Marvelcharacters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Characters"),
      ),
      body: Column(
        children: [Text("Hello Superheros")],
      ),
    );
  }
}
