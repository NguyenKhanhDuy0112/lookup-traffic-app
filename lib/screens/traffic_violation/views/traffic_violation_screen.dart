import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/violation/traffic_violation_card.dart';
import 'package:shop/models/user_profile_model.dart';
import 'package:shop/state/auth_state.dart';

import '../../../constants.dart';

class TrafficViolationScreen extends StatelessWidget {
  const TrafficViolationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authState = Provider.of<AuthState>(context);
    final List<Violation> violations = authState.userProfile?.violations ?? [];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Traffic Violations',
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding),
        itemCount: violations.length,
        itemBuilder: (BuildContext context, int index) {
          final violation = violations[index];
          return TrafficViolationCard(
            violation: violation,
          );
        },
      ),
    );
  }
}
