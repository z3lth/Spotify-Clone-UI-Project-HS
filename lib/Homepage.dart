import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/HomepageWidgets/Trending.dart';
import './HomepageWidgets/topgrid.dart';
import './HomepageWidgets/Welcome.dart';
import './dummydata.dart';
import 'HomepageWidgets/NewSong.dart';


class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      // ],),
      body: Stack(
          children: <Widget>[ Container(
             //height: double.infinity,
             decoration: BoxDecoration(
               gradient: RadialGradient(
                   colors: [
                     Color(0xFF3909C6),
                     Color(0xFF121212),
                   ],
                   radius: 1.65,
                   center: Alignment(-1, -2), //ADJUST THIS MORE
                   stops: [0.5, 10]),
             ),
           ),
            Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Appbar(),
              topgrid(),
              NewSong(),
              Trending(),
            ],
            ),

            Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: Colors.transparent),
                    child: BottomNavigationBar(
                      currentIndex: 0,
                      items: [
                        BottomNavigationBarItem(
                            icon: Image.asset('assets/Images/home.png', height: 30, width: 30,), label: "Home",),
                        BottomNavigationBarItem(
                            icon: Image.asset('assets/Images/search.png', height: 30, width: 30,), label:"Search"),
                        BottomNavigationBarItem(
                            icon: Image.asset('assets/Images/library.png', height: 30, width: 30,), label: "Library")
                      ],
                      selectedItemColor: Colors.white,
                      selectedLabelStyle:  TextStyle(fontSize: 12,
                              fontFamily: 'CircularStd',
                              fontWeight: FontWeight.normal),
                      unselectedItemColor: Color(0xffAEAEAE),
                      unselectedLabelStyle:  TextStyle(fontSize: 10,
                              fontFamily: 'CircularStd',
                              fontWeight: FontWeight.normal),
                      
                    ))),
          
          ]
        ),);
      
  
  }
}

// Container(
//     decoration: BoxDecoration(
//       gradient: RadialGradient(
//           colors: [
//             Color(0xFF32109B),
//             Colors.black,
//           ],
//           radius: 1.5,
//           center: Alignment(-1, -2), //ADJUST THIS MORE
//           stops: [0.5, 10]),
//     ),
