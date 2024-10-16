import 'package:flutter/material.dart';

class GymClassesPage extends StatelessWidget {
  const GymClassesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Our Gym Classes'),
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
          const SizedBox(height: 16),
          GymClassCard(
            title: 'HIIT Workout',
            description:
                'High-Intensity Interval Training designed to burn fat and build endurance.',
            schedule: 'Tue, Thu - 6:00 PM to 7:00 PM',
            imagePath: 'images/hiit.png',
            onEnroll: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Enrolled in HIIT Workout')),
              );
            },
          ),
          const SizedBox(height: 16),
          GymClassCard(
            title: 'Pilates',
            description:
                'Strengthen your core and improve your posture with Pilates exercises.',
            schedule: 'Mon, Wed, Fri - 8:00 AM to 9:00 AM',
            imagePath: 'images/weight.jpg',
            onEnroll: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Enrolled in Pilates')),
              );
            },
          ),
          const SizedBox(height: 16),
          GymClassCard(
            title: 'Zumba',
            description:
                'A fun, dance-based workout that will get your heart pumping and your feet moving.',
            schedule: 'Sat, Sun - 10:00 AM to 11:00 AM',
            imagePath: 'images/zumba.jpg',
            onEnroll: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Enrolled in Zumba')),
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
