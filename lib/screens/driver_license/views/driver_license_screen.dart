import 'package:flutter/material.dart';
import 'package:shop/components/license/driver_license_card.dart';

class DriverLicenseScreen extends StatelessWidget {
  const DriverLicenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Driver Licenses',
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
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          DriverLicenseCard(
            licenseNumber: 'D1234567',
            licenseType: 'Standard',
            issuedDate: '2020-01-15',
            expirationDate: '2025-01-15',
            issuingAuthority: 'DMV California',
            press: () {
              // Handle card tap
              Navigator.pushNamed(context, 'detailsScreenRoute');
            },
          ),
          // Add more DriverLicenseCard widgets as needed
        ],
      ),
    );
  }
}
