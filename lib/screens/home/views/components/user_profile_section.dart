import 'package:flutter/material.dart';
import 'package:shop/models/user_profile_model.dart';

class UserProfileSection extends StatelessWidget {
  final UserProfile? userProfile;

  const UserProfileSection({super.key, required this.userProfile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi, ${userProfile?.fullName ?? 'Guest'}',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Welcome back!',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
