// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DetailsPanneauContent extends StatefulWidget {
  const DetailsPanneauContent({Key? key, required this.imgPath}) : super(key: key);
  final String imgPath;

  @override
  _DetailsPanneauContentState createState() => _DetailsPanneauContentState();
}

class _DetailsPanneauContentState extends State<DetailsPanneauContent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset(widget.imgPath, height: 100, width: 100),
        const SizedBox(height: 20),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Sous panneau 1')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Sous panneau 2')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Sous panneau 1')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Sous panneau 4')),
        ),
      ],
    );
  }
}
