import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/vehicle/vehicle_card.dart';
import 'package:shop/constants.dart';
import 'package:shop/models/user_profile_model.dart';
import 'package:shop/state/auth_state.dart';

class VehicleScreen extends StatelessWidget {
  const VehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authState = Provider.of<AuthState>(context);
    final List<Vehicle> vehicles = authState.userProfile?.vehicles ?? [];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Vehicles',
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
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding),
        itemCount: vehicles.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: defaultPadding); // Space between items
        },
        itemBuilder: (BuildContext context, int index) {
          final vehicle = vehicles[index];
          return VehicleCard(
            vehicle: vehicle,
            press: () {
              // Define what happens when the card is pressed
              Navigator.pushNamed(context, '/vehicleDetails',
                  arguments: vehicle);
            },
          );
        },
      ),
    );
  }
}
