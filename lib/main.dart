import 'package:flutter/material.dart';
import './Homepage.dart';
import './dummydata.dart';
import './HomepageWidgets/NewSong.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Good Afternoon',
      theme: ThemeData(
          //bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Color(0xFF121212)),
          primarySwatch: Colors.green,
          fontFamily: 'CircularStd',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
                headline1: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              )),
      home: Homepage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Homepage(),
          ],
        ),
      ),
    );
  }
}
