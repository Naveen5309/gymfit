import 'package:flutter/material.dart';

class GymApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.fitness_center, color: Colors.orange),
                    SizedBox(width: 8),
                    Text('GYMFIT', style: TextStyle(color: Colors.orange)),
                  ],
                ),
                SizedBox(
                    width: 30), // Space between the logo and navigation links
                Row(
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.orange,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "About Us",
                      style: TextStyle(fontSize: 23, color: Colors.orange),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Our Trainers",
                      style: TextStyle(fontSize: 23, color: Colors.orange),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Classes",
                      style: TextStyle(fontSize: 23, color: Colors.orange),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Contact",
                      style: TextStyle(fontSize: 23, color: Colors.orange),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Our Timings",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.orange,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "8:00am - 5:00pm",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Banner Section
              Stack(
                children: [
                  // Image.network(
                  //   'https://your-image-url.com/banner.jpg', // Placeholder for the background image
                  //   width: double.infinity,
                  //   height: 400,
                  //   fit: BoxFit.cover,
                  // ),
                  Container(
                    width: double.infinity,
                    height: 400,
                    color: Colors.black.withOpacity(0.5), // Dark overlay
                  ),
                  Positioned(
                    left: 20,
                    right: 20,
                    bottom: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "GYMFIT FITNESS CENTER",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 15),
                              ),
                              child: const Text("Contact"),
                            ),
                            const SizedBox(width: 20),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 15),
                                side: const BorderSide(color: Colors.white),
                              ),
                              child: const Text(
                                "Read More",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // Business Hours Section
            ],
          ),
        ),
      ),
    );
  }
}
