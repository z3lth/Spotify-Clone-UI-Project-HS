import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 16),
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Good evening",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        letterSpacing: -1,
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w900),
                  ),
                  Row(children: [
                    Icon(
                      Icons.notifications_none,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(width: 22),
                    Icon(
                      Icons.history,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(width: 22),
                    Icon(
                      Icons.settings,
                      size: 30,
                      color: Colors.white,
                    )
                  ])
                  // InkWell(
                  // child: Icon(Icons.notifications_none),
                  // onTap: () {}, //not showing up pls fix
                  // )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
