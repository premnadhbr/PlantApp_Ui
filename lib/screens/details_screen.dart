import 'package:flutter/material.dart';
import 'package:flutter_application_11/utils/const.dart';

class Details extends StatelessWidget {
  final String name, image, price;
  const Details(
      {super.key,
      required this.image,
      required this.name,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context)
                  .size
                  .height, // Full height for the container
              width: MediaQuery.of(context).size.width,
              color: primaryColor,
              child: const Padding(
                padding: EdgeInsets.only(
                  left: 24,
                  bottom: 24,
                  // Add padding from the bottom
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment
                          .end, // Aligns the content to the bottom
                      children: [
                        Text(
                          "Height",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors
                                .white, // Ensure text is visible with contrast
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "40cm - 50cm",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors
                                .white, // Ensure text is visible with contrast
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment
                          .end, // Aligns the content to the bottom
                      children: [
                        Text(
                          "Pot",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors
                                .white, // Ensure text is visible with contrast
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Self watering pot",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors
                                .white, // Ensure text is visible with contrast
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment
                          .end, // Aligns the content to the bottom
                      children: [
                        Text(
                          "Temperature",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors
                                .white, // Ensure text is visible with contrast
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "18c - 25c",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors
                                .white, // Ensure text is visible with contrast
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
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
                          onTap: () {
                            Navigator.pop(context);
                          },
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
                  Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: Text(
                      name,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
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
                          image,
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
          Positioned(
            left: 32,
            top: 270,
            child: Text(
              "\$${price}",
              style: const TextStyle(
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
