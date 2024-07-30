import 'package:flutter/material.dart';
import 'package:lookup_traffic_app/screens/HomeScreen/components/offer_carousel_and_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: OffersCarouselAndCategories()),
          ],
        ),
      ),
    );
  }
}
