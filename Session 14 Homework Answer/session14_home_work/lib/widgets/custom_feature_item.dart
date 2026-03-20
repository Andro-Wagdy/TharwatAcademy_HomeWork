import 'package:flutter/material.dart';

class CustomFeatureItem extends StatelessWidget {
  const CustomFeatureItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.iconBackgroundColor,
  });
  final Icon icon;
  final String title;
  final String description;
  final Color iconBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 10),
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
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: iconBackgroundColor,
            ),
            child: icon,
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color(0xff140d15),
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 2),
              Text(
                description,
                style: TextStyle(color: Color(0xffa5a5a5), fontSize: 14),
              ),
            ],
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xffc1c1c1)),
        ],
      ),
    );
  }
}
