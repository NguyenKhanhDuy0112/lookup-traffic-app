import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/license/driver_license_card.dart';
import 'package:shop/models/user_profile_model.dart';
import 'package:shop/state/auth_state.dart';
import 'package:intl/intl.dart';

class DriverLicenseScreen extends StatelessWidget {
  const DriverLicenseScreen({super.key});

  String formatDate(DateTime date) {
    final DateFormat formatter = DateFormat('MM/dd/yyyy');
    return formatter.format(date);
  }

  @override
  Widget build(BuildContext context) {
    final authState = Provider.of<AuthState>(context);
    final List<License> licenses = authState.userProfile?.licenses ?? [];

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
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: licenses.length,
        itemBuilder: (BuildContext context, int index) {
          final license = licenses[index];
          return DriverLicenseCard(
            licenseNumber: license.licenseNumber,
            licenseType: license.licenseType,
            issuedDate: formatDate(license.issuedDate),
            expirationDate: formatDate(license.expirationDate),
            issuingAuthority: license.issuingAuthority,
            press: () {
              Navigator.pushNamed(context, 'detailsScreenRoute',
                  arguments: license);
            },
          );
        },
      ),
    );
  }
}
