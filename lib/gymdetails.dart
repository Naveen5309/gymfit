import 'package:flutter/material.dart';

class GymDetailsPage extends StatelessWidget {
  final String gymName;
  final String gymAddress;
  final String gymContactNumber;
  final String gymDescription;

  const GymDetailsPage({
    Key? key,
    required this.gymName,
    required this.gymAddress,
    required this.gymContactNumber,
    this.gymDescription = "Join us for a transformative fitness experience!",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gymName),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gym Name
            Text(
              gymName,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 10),

            // Address Section
            const Text(
              "Address:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              gymAddress,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Contact Number Section
            const Text(
              "Contact Number:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              gymContactNumber,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Description Section
            const Text(
              "Description:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              gymDescription,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Button to Contact
            ElevatedButton(
              onPressed: () {
                // Implement functionality to call the gym's contact number
                // Example: launchUrl(Uri(scheme: 'tel', path: gymContactNumber));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text(
                "Call Now",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
