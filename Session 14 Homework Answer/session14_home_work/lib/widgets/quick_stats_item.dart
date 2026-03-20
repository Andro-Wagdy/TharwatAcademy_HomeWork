import 'package:flutter/material.dart';

class QuickStatsItem extends StatelessWidget {
  const QuickStatsItem({
    super.key,
    required this.stat,
    required this.icon,
    required this.description,
  });
  final String stat;
  final Icon icon;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: 105,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          SizedBox(height: 6),
          Text(
            stat,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            description,
            style: TextStyle(color: Color(0xffa5a5a5), fontSize: 12),
          ),
        ],
      ),
    );
  }
}
