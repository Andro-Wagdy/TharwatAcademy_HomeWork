import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store_app/core/constants/assets.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';
import 'package:grocery_store_app/features/categories/data/models/trending_deal_model.dart';

class TrendingDealItem extends StatelessWidget {
  const TrendingDealItem({super.key, required this.trendingDeal});
  final TrendingDealModel trendingDeal;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: AssetImage(trendingDeal.image),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 14,
            top: 14,
            child: SvgPicture.asset(
              Assets.assetsIconsWishlistIcon,
              fit: .cover,
            ),
          ),
          Positioned(
            left: 14,
            bottom: 14,
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  trendingDeal.title,
                  style: AppStyles.p18W500.copyWith(
                    color: AppColors.primaryText,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  '\$${trendingDeal.price}',

                  style: AppStyles.p14W700.copyWith(
                    color: AppColors.primaryText,
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
