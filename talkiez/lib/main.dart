import 'package:flutter/material.dart';
import 'package:talkiez/Bloc.dart';
import 'dart:async';
import 'package:talkiez/Language.dart';
import 'Interests.dart';
import 'VideoListView.dart';
import 'model.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: new Splash(),
));

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Center(
        child: Container(
/*
         child: Text("hello"),
*/
          child: Image.asset("assets/talkiezlogo.PNG"),
        ),
      ),
    ),);

  }
  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Interests()
    )
    );
  }
}


