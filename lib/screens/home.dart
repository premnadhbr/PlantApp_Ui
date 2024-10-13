import 'package:flutter/material.dart';
import 'package:flutter_application_11/models/product.dart';
import 'package:flutter_application_11/screens/details.dart';
import 'package:flutter_application_11/utils/const.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              sideBar(),
              bodyParts(size, context),
            ],
          ),
          Positioned(
            child: Text(
              "Plants",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            top: 135,
            left: 29,
          ),
          Positioned(
            child: Icon(
              Icons.search,
              size: 40,
              color: Colors.black,
            ),
            top: 45,
            right: 10,
          )
        ],
      ),
    );
  }

  Container bodyParts(Size size, BuildContext context) {
    return Container(
      width: size.width * 0.8,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Details(),
                    ));
              },
              child: const Hero(
                tag: "flower1",
                child: Product(
                    image: "assets/images/flower1.png",
                    name: "House shape clause",
                    price: "45"),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Details(),
                    ));
              },
              child: const Hero(
                tag: "flower2",
                child: Product(
                    image: "assets/images/flower2.png",
                    name: "Glass water",
                    price: "60"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded sideBar() {
    return Expanded(
      child: Container(
        color: secondaryColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                top: 30,
              ),
              child: Image.asset(
                "assets/images/more icon.png",
                width: 60,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Green',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 110,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 14,
              ),
              child: RotatedBox(
                quarterTurns: 3,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: ".",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: primaryColor),
                      ),
                      TextSpan(
                          text: "Shape class",
                          style: TextStyle(
                            color: primaryColor,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: RotatedBox(
                quarterTurns: 3,
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Indore Plants",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: RotatedBox(
                quarterTurns: 3,
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Green Plants",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
                top: 110,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: primaryColor,
                ),
                width: 60,
                height: 70,
                child: const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
