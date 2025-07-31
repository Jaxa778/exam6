import 'package:flutter/material.dart';

import 'widgets.dart';

class RestaurantCardsWidget extends StatelessWidget {
  const RestaurantCardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: RestaurantCard(
              title: 'Yapona Mama',
              subtitle: 'Panosiya • ★ 4.7',
              deliveryTime: '👥 50 - 60 daqiqa',
              imagePath: 'assets/yapona_mama.jpg',
              backgroundColor: Colors.orange[50]!,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: GarashCard(),
          ),
        ],
      ),
    );
  }
}