import 'package:flutter/material.dart';

class Yoga extends StatefulWidget {
  const Yoga({super.key});

  @override
  State<Yoga> createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yoga Classes'),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          GymClassCard(
            title: 'Yoga for Beginners',
            description:
                'A gentle introduction to yoga that will help you improve flexibility and balance.',
            schedule: 'Mon, Wed, Fri - 7:00 AM to 8:00 AM',
            imagePath: 'images/yoga.jpg',
            onEnroll: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Enrolled in Yoga for Beginners')),
              );
            },
          ),
        ],
      ),
    );
  }
}

class GymClassCard extends StatelessWidget {
  final String title;
  final String description;
  final String schedule;
  final String imagePath;
  final VoidCallback onEnroll;

  const GymClassCard({
    required this.title,
    required this.description,
    required this.schedule,
    required this.imagePath,
    required this.onEnroll,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              imagePath,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16, height: 1.5),
                ),
                const SizedBox(height: 8),
                Text(
                  'Schedule: $schedule',
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    onPressed: onEnroll,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    child: const Text('Enroll Now'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
