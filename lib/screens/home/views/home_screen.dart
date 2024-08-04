import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/offer_carousel_and_categories.dart';
import 'components/user_profile_section.dart';
import 'package:shop/state/auth_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authState = Provider.of<AuthState>(context);
    final userProfile = authState.userProfile;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserProfileSection(userProfile: userProfile),
            ),
            SliverToBoxAdapter(
              child: OffersCarouselAndCategories(),
            ),
          ],
        ),
      ),
    );
  }
}
