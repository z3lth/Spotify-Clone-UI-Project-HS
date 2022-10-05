import 'package:flutter/material.dart';

import './models/cards.dart';

const DUMMY_CARDS = const [
  cards(
    id: 'c1',
    title: 'Italian',
    color: Color(0xFF2A2A2A),
  ),
  cards(
    id: 'c2',
    title: 'Quick & Easy',
    color: Color(0xFF2A2A2A),
  ),
  cards(
    id: 'c3',
    title: 'Hamburgers',
    color: Color(0xFF2A2A2A),
  ),
  cards(
    id: 'c4',
    title: 'German',
    color: Color(0xFF2A2A2A),
  ),
  cards(
    id: 'c5',
    title: 'Light & Lovely',
    color: Color(0xFF2A2A2A),
  ),
  cards(
    id: 'c6',
    title: 'Exotic',
    color: Color(0xFF2A2A2A),
  ),
];

List<String> list = [
  "Liked Songs",
  "This is Lauv",
  "Conan Gray",
  "Daily Mix 4",
  "reputation",
  "This is M83"
];

class PhotoItem {
  final String image;

  PhotoItem(this.image);
}

final List<PhotoItem> pics = [
  PhotoItem(
      "https://i1.sndcdn.com/artworks-4Lu85Xrs7UjJ4wVq-vuI2zg-t500x500.jpg"),
  PhotoItem("https://i.scdn.co/image/ab67706f00000003310e7c5644267901413da113"),
  PhotoItem("https://i.scdn.co/image/ab6761610000e5ebd3a1193ab04e0fb2b297e619"),
  PhotoItem(
      "https://pbs.twimg.com/media/CtcVNESWIAEYGWI.jpg" /*"https://ph-files.imgix.net/cbbf111b-fccf-48a7-8505-bedc7b5d5272.png?auto=format"*/),
  PhotoItem("https://i.scdn.co/image/ab67616d0000b273da5d5aeeabacacc1263c0f4b"),
  PhotoItem("https://i.scdn.co/image/ab6761610000e5eb5f5afb81942abd41d32dc2b5"),
];


class TrendingData extends StatelessWidget {
  final ImageProvider image;
  final String label;
  const TrendingData({Key key, this.image, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: image),
        SizedBox(height: 10,),
        Text(label)
      ],
    );
    
  }
}
