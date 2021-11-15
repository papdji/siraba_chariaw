// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siraba_chariaw/PanneauContent/DetailsPanneau.dart';

class CardView extends StatefulWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: ListView(
        children: [
          const SizedBox(height: 15),
          Container(
            margin: const EdgeInsets.only(top: 100),
            padding: const EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height - 50,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              childAspectRatio: 1.0,
              children: [
                makeCard("assets/images/danger/1.png", "Panneau 1"),
                makeCard("assets/images/danger/2.png", "Panneau 2"),
                makeCard("assets/images/danger/3.png", "Panneau 3"),
                makeCard("assets/images/danger/4.png", "Panneau 4"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget makeCard(String imagePath, String nomPanneau)
  {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 5, left: 20, right: 5),
      child: InkWell(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsPanneau()));},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5
              )
            ],
            color: Colors.white
          ),
          child: Column(
            children: [
              Image.asset(imagePath, height: 150, width: 150),
              Text(nomPanneau)
            ],
          ),
        ),
      ),
    );
  }
}
