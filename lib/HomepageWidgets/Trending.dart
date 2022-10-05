import 'package:flutter/material.dart';
import '../dummydata.dart';

class Trending extends StatelessWidget {
  const Trending({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 15 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 10, left: 1.5),
              child: Text("Made for Noah", textAlign: TextAlign.left, style: TextStyle(fontSize: 28,
                              color: Colors.white,
                              letterSpacing: -1,
                              fontFamily: 'CircularStd',
                              fontWeight: FontWeight.w900),),),
              Padding(
                padding: const EdgeInsets.all(1.5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      TrendingData(image: NetworkImage("https://dailymix-images.scdn.co/v2/img/ab6761610000e5eb80c7323d8b64397c278f86df/1/en/large"), label: "Niall Horan, R.City, \nNelly Furtado and more",),
                      SizedBox(width:16),
                      TrendingData(image: NetworkImage("https://dailymix-images.scdn.co/v2/img/289c7f686f5b78ceeb224453cf9a15697a678a79/2/en/large"), label: "One Direction, Lauv, 5\nSeconds of Summer a...",),
                      SizedBox(width:16),
                      TrendingData(image: NetworkImage("https://dailymix-images.scdn.co/v2/img/ab6761610000e5eb64d74f5985cb66b2f7b60e93/3/en/large"), label: "The Strokes, M83,\nCurrent Joys and more",),
                      SizedBox(width:16),
                      TrendingData(image: NetworkImage("https://dailymix-images.scdn.co/v2/img/ab6761610000e5eb288ac05481cedc5bddb5b11b/4/en/large"), label: "Maroon 5 Brandt\nOrange, keshi and more",),
                      SizedBox(width:16),
                      TrendingData(image: NetworkImage("https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebe07d6b0f2fcc2f2ba6bdc3ce/5/en/large"), label: "Post Malone, The Kid\nLAROI, Drake and more",),
                      SizedBox(width:16),
                      TrendingData(image: NetworkImage("https://dailymix-images.scdn.co/v2/img/ab6761610000e5eb34e5aa6afc1ba147bfbb0677/6/en/large"), label: "Linkin Park, System Of\nA Down, Nickelback a...",),
                      SizedBox(width:16),
                      
                      
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

    ));
    
  }
}

class TrendingData extends StatelessWidget {
  final ImageProvider image;
  final String label;
  const TrendingData({Key key, this.image, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: image, height: 150, width: 150,),
        SizedBox(height: 10,),
        Text(label, style: TextStyle(color: Color(0xff929292), fontSize: 13, fontWeight: FontWeight.bold),)
      ],
    );
    
  }
}