// lib/screens/parking_slots_screen.dart
import 'package:flutter/material.dart';

class ParkingSlotsScreen extends StatelessWidget {
  // مثال لبيانات المواقف (في الواقع تجي من Firebase)
  final List<Map<String, dynamic>> slots = [
    {'id': 'A1', 'isAvailable': true},
    {'id': 'A2', 'isAvailable': false},
    {'id': 'A3', 'isAvailable': true},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Smart University Parking')),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: slots.length,
        itemBuilder: (context, index) {
          return Card(
            color: slots[index]['isAvailable'] ? Colors.green[100] : Colors.red[100],
            child: Center(
              child: Text('Slot ${slots[index]['id']}', 
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          );
        },
      ),
    );
  }
}
