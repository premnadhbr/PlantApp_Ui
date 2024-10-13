import 'package:flutter/material.dart';
import 'package:flutter_application_11/utils/const.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.85,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top,
                        left: 16,
                        right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.arrow_back_ios,
                            size: 30,
                          ),
                        ),
                        Image.asset(
                          "assets/images/filter icon.png",
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: Text(
                      "House shape \nclause plant",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 42),
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/images/flower1.png",
                          width: MediaQuery.of(context).size.width,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 250,
                          ),
                          child: Container(
                            height: 22,
                            width: 8,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 276,
                          ),
                          child: Container(
                            height: 10,
                            width: 8,
                            decoration: BoxDecoration(
                              color: Colors.pink[100],
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 290,
                          ),
                          child: Container(
                            height: 10,
                            width: 8,
                            decoration: BoxDecoration(
                              color: Colors.pink[100],
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 305,
                          ),
                          child: Container(
                            height: 10,
                            width: 8,
                            decoration: BoxDecoration(
                              color: Colors.pink[100],
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            left: 32,
            top: 270,
            child: Text(
              "\$45",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Positioned(
              top: 150,
              right: 40,
              child: Icon(
                Icons.favorite_border,
                size: 32,
                color: primaryColor,
              )),
          Positioned(
            top: 450,
            right: 0,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(40))),
              child: const Icon(
                Icons.add_circle,
                color: Colors.white54,
                size: 50,
              ),
            ),
          )
        ],
      ),
    );
  }
}
