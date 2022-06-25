import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

void milk(){
  print("hello");
}

void andro(){
  print("andro");
}

void gliese(){
  print("gliese");
}

void hd(){
  print("hd");
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Splash Screen',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => primaryHomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Image.asset('assets/splash.png', width: 1200),
    );
  }
}

class primaryHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.black,
              child: Image.asset('assets/primaryHome.png', width: 1200)
            ),
            Align(
             alignment: Alignment(-1, -0.4),
              child: GestureDetector(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => milkyInfo()));},
                child: Container(
                    child: Image.asset('assets/milkyWay.png', fit: BoxFit.cover, width: 250)
                )
              )
            ),
            Align(
              alignment: Alignment(1, -0.3),
              child: GestureDetector(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => andromedaInfo()));},
                child: Container(
                  child: Image.asset('assets/andromeda.png', fit: BoxFit.cover, width: 200)
                )
              )
            ),
            Align(
              alignment: Alignment(-0.8, 0.5),
              child: GestureDetector(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => glieseInfo()));},
                child: Container(
                  child: Image.asset('assets/gliese.png', fit: BoxFit.cover, width: 150)
                )
              )
            ),
            Align(
              alignment: Alignment(0.8, 0.5),
              child: GestureDetector(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => hdPlanetInfo()));},
                child: Container(
                  child: Image.asset('assets/hdPlanet.png', fit: BoxFit.cover, width: 150)
                )
              )
            )
          ],
        )
      )
    );
  }
}

class milkyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
                color: Colors.black,
                child: Image.asset('assets/milkyInfo.png', width: 1200)
            ),
            Align(
              alignment: Alignment(-1.0, -0.95),
              child: BackButton(
                color: Colors.white,
                onPressed: () {Navigator.pop(context);},
              )
            )
          ],
        )
      )
    );
  }
}

class andromedaInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(
              children: [
                Container(
                    color: Colors.black,
                    child: Image.asset('assets/andromedaInfo.png', width: 1200)
                ),
                Align(
                    alignment: Alignment(-1.0, -0.95),
                    child: BackButton(
                      color: Colors.white,
                      onPressed: () {Navigator.pop(context);},
                    )
                ),
              ],
            )
        )
    );
  }
}

class glieseInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(
              children: [
                Container(
                    color: Colors.black,
                    child: Image.asset('assets/glieseInfo.png', width: 1200)
                ),
                Align(
                    alignment: Alignment(-1.0, -0.9),
                    child: BackButton(
                      color: Colors.white,
                      onPressed: () {Navigator.pop(context);},
                    )
                ),
              ],
            )
        )
    );
  }
}

class hdPlanetInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(
              children: [
                Container(
                    color: Colors.black,
                    child: Image.asset('assets/hdInfo.png', width: 1200)
                ),
                Align(
                    alignment: Alignment(-1.0, -0.9),
                    child: BackButton(
                      color: Colors.white,
                      onPressed: () {Navigator.pop(context);},
                    )
                ),
              ],
            )
        )
    );
  }
}