import 'package:flutter/material.dart';

class NewSong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.network(
                      'https://i.scdn.co/image/ab6761610000e5eb9e3acf1eaf3b8846e836f441',
                      height: 50.0,
                      width: 50.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "NEW RELEASE FROM",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white60,
                              letterSpacing: 1,
                              fontFamily: 'CircularStd',
                              fontWeight: FontWeight.w100),
                        ),
                        Text(
                          "Taylor Swift",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              letterSpacing: -1,
                              fontFamily: 'CircularStd',
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 15, right: 16),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8)),
                      child: Image.network(
                        'https://i.scdn.co/image/ab67616d0000b2731d433d7ef2eaa3091e326528',
                        height: 150.0,
                        width: 150.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "This Love (Taylor's \nVersion)",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                letterSpacing: -0.25,
                                height: 1.3,
                                fontFamily: 'CircularStd',
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Single ∙ Taylor Swift",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white60,
                                letterSpacing: 0,
                                fontFamily: 'CircularStd',
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.favorite_border,
                                color: Colors.white70,
                                size: 28,
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Icon(
                                Icons.play_circle_filled_rounded,
                                color: Colors.white,
                                size: 38,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
