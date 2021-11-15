import 'package:flutter/material.dart';

import 'Card_View.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  static const List<Widget> pageOptions = <Widget>[
    CardView(),
    Text("QUIZ........")
  ];

  void onTappedIndex(int index)
  {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Siraba Chariaw"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
            gradient: LinearGradient(
              colors: [Colors.green, Colors.yellow, Colors.red],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight
            )
          ),
        ),
      ),
      body: Center(
        child: pageOptions.elementAt(selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Acceuil"
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/quiz.png", height: 25, width: 25),
            label: "Quiz"
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onTappedIndex,
      ),
    );
  }
}
