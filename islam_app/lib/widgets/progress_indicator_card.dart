import 'package:flutter/material.dart';

class ProgressIndicatorCard extends StatelessWidget {
  const ProgressIndicatorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F4FF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const SizedBox(
            height: 60,
            width: 60,
            child: CircularProgressIndicator(
              value: 0.34,
              strokeWidth: 8,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(const Color(0xFF4A44E1)),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '34% Completed',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Daily activities',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
