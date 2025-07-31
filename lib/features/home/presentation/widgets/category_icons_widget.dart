// Category Icons Widget
import 'package:flutter/material.dart';

import '../../../taxi/taxi.dart';
import 'widgets.dart';

class CategoryIconsWidget extends StatelessWidget {
  const CategoryIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          // First row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryIcon(
                icon: Icons.fastfood,
                label: 'Taomlar',
                discount: '-30%',
                color: Colors.orange,
              ),
              CategoryIcon(
                icon: Icons.local_shipping,
                label: 'Yetkazish',
                color: Colors.yellow[700]!,
              ),
            ],
          ),
          SizedBox(height: 16),
          // Second row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryIcon(
                icon: Icons.shopping_basket,
                label: 'Market',
                color: Colors.red,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TaxiScreen()),
                  );
                },
                child: CategoryIcon(
                  icon: Icons.local_taxi,
                  label: 'Taksi - 5 daq',
                  color: Colors.grey[800]!,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          // Third row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SmallCategoryIcon(
                icon: Icons.construction,
                label: 'Samokatlar',
                color: Colors.yellow[700]!,
              ),
              SmallCategoryIcon(
                icon: Icons.favorite,
                label: 'Lavka',
                color: Colors.blue,
              ),
              SmallCategoryIcon(
                icon: Icons.navigation,
                label: 'Navigator',
                color: Colors.orange,
                hasNumber: true,
              ),
              SmallCategoryIcon(
                icon: Icons.flight_takeoff,
                label: 'Yuk uchun',
                color: Colors.orange,
              ),
              SmallCategoryIcon(
                icon: Icons.card_giftcard,
                label: 'Joy!',
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
