import 'package:flutter/material.dart';
import 'package:grocery_store_app/features/categories/data/trending_deals_data.dart';
import 'package:grocery_store_app/features/categories/presentation/ui/widgets/trending_deal_item.dart';

class TrendingDealsGridView extends StatelessWidget {
  const TrendingDealsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return TrendingDealItem(trendingDeal: trendingDeals[index]);
      },
    );
  }
}
