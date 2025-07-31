import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Yandex Go',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Home Screen', style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Category Icons Section
              CategoryIconsWidget(),
              SizedBox(height: 20),
              // Search Bar
              SearchBarWidget(),
              SizedBox(height: 20),
              // Location and Recent Section
              LocationWidget(),
              SizedBox(height: 20),
              // Restaurant Cards
              RestaurantCardsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
