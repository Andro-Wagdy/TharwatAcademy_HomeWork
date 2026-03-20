import 'package:flutter/material.dart';
import 'package:session14_home_work/widgets/quick_stats_item.dart';

class QuickStatsSection extends StatelessWidget {
  const QuickStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        QuickStatsItem(
          icon: Icon(Icons.people, color: Color(0xff5d3aa0)),
          stat: '1,234',
          description: 'Users',
        ),
        QuickStatsItem(
          icon: Icon(Icons.star, color: Color(0xfffb9705)),
          stat: '4.8',
          description: 'Rating',
        ),
        QuickStatsItem(
          icon: Icon(Icons.trending_up, color: Color(0xff3b86ae)),
          stat: '98%',
          description: 'Success',
        ),
      ],
    );
  }
}
