import 'package:flutter/material.dart';
import 'package:flutter_application_11/screens/details.dart';

class DetailScreen1 extends StatelessWidget {
  const DetailScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Hero(
      tag: "flower1",
      child: Details(
          image: "assets/images/flower1.png",
          name: "House Shape \n ClosePlant",
          price: "\$45"),
    );
  }
}

class DetailScreen2 extends StatelessWidget {
  const DetailScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Hero(
      tag: "flower2",
      child: Details(
          image: "assets/images/flower2.png",
          name: "Glass Water",
          price: "\$60"),
    );
  }
}
