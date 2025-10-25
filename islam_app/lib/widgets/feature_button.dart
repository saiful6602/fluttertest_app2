import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeatureButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final VoidCallback onTap;

  const FeatureButton({
    super.key,
    required this.iconPath,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F4FF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: SvgPicture.asset(
              iconPath,
              height: 24,
              width: 24,
            ),
          ),
          const SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }
}
