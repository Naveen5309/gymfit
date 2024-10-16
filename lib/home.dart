import 'package:flutter/material.dart';
import 'package:testoday/abouts.dart';
import 'package:testoday/classes.dart';
import 'package:testoday/gymdetails.dart';
import 'package:testoday/gymtime.dart';

class GymHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Custom Header Section
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                color: Colors.black,
                child: Row(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.fitness_center, color: Colors.orange),
                        SizedBox(width: 8),
                        Text('GYMFIT', style: TextStyle(color: Colors.orange)),
                      ],
                    ),
                    Expanded(
                      // width: 300,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text("Home",
                                  style: TextStyle(color: Colors.orange)),
                            ),
                            const SizedBox(width: 10),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => AboutUsPage()),
                                );
                              },
                              child: const Text("About Us",
                                  style: TextStyle(color: Colors.orange)),
                            ),
                            const SizedBox(width: 10),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => GymClassesPage()),
                                );
                              },
                              child: const Text("Classes",
                                  style: TextStyle(color: Colors.orange)),
                            ),
                            const SizedBox(width: 10),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const GymDetailsPage(
                                      gymName: "GYMFIT",
                                      gymAddress:
                                          "123 Fitness St, Fit City, 12345",
                                      gymContactNumber: "+1 234 567 8900",
                                    ),
                                  ),
                                );
                              },
                              child: const Text("Contact",
                                  style: TextStyle(color: Colors.orange)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Banner Section
              Stack(
                children: [
                  Container(
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "images/gym_banner.jpg"), // Ensure this image exists
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 300,
                    color: Colors.black.withOpacity(0.6),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Welcome to GYMFIT",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Join us and transform your fitness journey",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GymTimetablePage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                          ),
                          child: const Text(
                            "Get Started",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Featured Programs Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Featured Programs",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildProgramCard(
                          title: "Weight Lifting",
                          image:
                              "images/weight.jpg", // Updated to use local asset
                        ),
                        buildProgramCard(
                          title: "Yoga Classes",
                          image:
                              "images/yoga.jpg", // Updated to use local asset
                        ),
                        buildProgramCard(
                          title: "Cardio Blast",
                          image:
                              "images/cardio.jpg", // Updated to use local asset
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Our Trainers Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Meet Our Trainers",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildTrainerCard("John Doe", "Senior Trainer",
                              "images/trainner.webp"),
                          buildTrainerCard("Jane Smith", "Yoga Expert",
                              "images/trainner2.webp"),
                          buildTrainerCard("Mike Johnson", "Cardio Specialist",
                              "images/trainner3.jpg"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Testimonials Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "What Our Members Say",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Column(
                      children: [
                        buildTestimonialCard(
                            "Great gym with excellent trainers!",
                            "images/gymmembers.jpeg"), // Updated to local asset
                        buildTestimonialCard(
                            "Amazing classes, highly recommend!",
                            "images/classes.jpeg"), // Updated to local asset
                      ],
                    ),
                  ],
                ),
              ),

              // Call to Action Section
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  color: Colors.orange,
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    children: [
                      const Text(
                        "Details of our GYMFIT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GymDetailsPage(
                                gymName: "GYMFIT",
                                gymAddress: "123 Fitness St, Fit City, 12345",
                                gymContactNumber: "+1 234 567 8900",
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                        ),
                        child: const Text(
                          "See Details",
                          style: TextStyle(color: Colors.orange, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build a program card with asset image
  Widget buildProgramCard({required String title, required String image}) {
    return Expanded(
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(image,
                height: 100, fit: BoxFit.cover), // Changed to asset image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build a trainer card with asset image
  Widget buildTrainerCard(String name, String title, String image) {
    return Card(
      margin: const EdgeInsets.only(right: 16),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(image,
                height: 100,
                width: 100,
                fit: BoxFit.cover), // Changed to asset image
          ),
          const SizedBox(height: 8),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(title, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  // Helper method to build a testimonial card with asset image
  Widget buildTestimonialCard(String text, String image) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(image), // Changed to asset image
        ),
        title: Text(text),
      ),
    );
  }
}
