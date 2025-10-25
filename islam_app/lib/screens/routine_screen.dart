import 'package:flutter/material.dart';

class RoutineScreen extends StatefulWidget {
  const RoutineScreen({super.key});

  @override
  State<RoutineScreen> createState() => _RoutineScreenState();
}

class _RoutineScreenState extends State<RoutineScreen> {
  final List<Map<String, dynamic>> _tasks = [
    {'task': 'Fajr Prayer', 'completed': true},
    {'task': 'Read-Al-Quran', 'completed': true},
    {'task': 'Morning-Dhikr', 'completed': true},
    {'task': 'Morning-Alms', 'completed': true},
    {'task': 'Dhuha Prayer', 'completed': false},
    {'task': 'Dzuhr Prayer', 'completed': false},
    {'task': 'Asr Prayer', 'completed': false},
    {'task': 'Magrib Prayer', 'completed': false},
    {'task': 'Isha Prayer', 'completed': false},
    {'task': 'Tarawih Prayer', 'completed': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routine'),
        backgroundColor: const Color(0xFF4A44E1),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            color: const Color(0xFF4A44E1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(7, (index) {
                final day = DateTime.now().add(Duration(days: index));
                final isSelected = index == 0;
                return Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(
                        ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'][day.weekday % 7],
                        style: TextStyle(
                          color: isSelected ? const Color(0xFF4A44E1) : Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${day.day}',
                        style: TextStyle(
                          color: isSelected ? const Color(0xFF4A44E1) : Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Your Routine',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '4/12',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _tasks.length,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                  title: Text(_tasks[index]['task']),
                  value: _tasks[index]['completed'],
                  onChanged: (bool? value) {
                    setState(() {
                      _tasks[index]['completed'] = value!;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
