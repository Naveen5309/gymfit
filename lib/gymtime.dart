import 'package:flutter/material.dart';

class GymTimetablePage extends StatelessWidget {
  final List<ClassDetail> classDetails = [
    ClassDetail("Yoga", "John Doe", "08:00 AM - 09:00 AM"),
    ClassDetail("Weight Lifting", "Jane Smith", "09:30 AM - 10:30 AM"),
    ClassDetail("Zumba", "Mike Johnson", "11:00 AM - 12:00 PM"),
    ClassDetail("Pilates", "Emily Brown", "12:30 PM - 01:30 PM"),
    ClassDetail("Spin Class", "Sarah Wilson", "02:00 PM - 03:00 PM"),
    ClassDetail("Kickboxing", "David Lee", "03:30 PM - 04:30 PM"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gym Class Timetable"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Today's Classes",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: classDetails.length,
                itemBuilder: (context, index) {
                  final classDetail = classDetails[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(
                        classDetail.className,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "${classDetail.instructor}\n${classDetail.timing}",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      isThreeLine: true,
                      contentPadding: const EdgeInsets.all(16),
                      trailing: ElevatedButton(
                        onPressed: () {
                          showMyDialog(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        child: const Text("Join"),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showMyDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            content: Text('hlo'),
          );
        });
  }
}

class ClassDetail {
  final String className;
  final String instructor;
  final String timing;

  ClassDetail(this.className, this.instructor, this.timing);
}
