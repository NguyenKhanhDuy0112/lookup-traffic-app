import 'package:flutter/material.dart';
import 'package:shop/components/vehicle/vehicle_card.dart'; // Ensure this path is correct
import 'package:shop/constants.dart';
import 'package:shop/models/vehicle_model.dart'; // Ensure this path is correct

class VehicleScreen extends StatelessWidget {
  const VehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Vehicle> vehicles = [
      Vehicle(
        vehicleNumber: 'ABC123',
        vehicleType: 'Sedan',
        brand: 'Toyota',
        model: 'Camry',
        color: 'Blue',
        yearOfManufacture: 2020,
        imageUrl:
            'https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGNhcnxlbnwwfHwwfHx8MA%3D%3D', // Real image URL
      ),
      Vehicle(
        vehicleNumber: 'XYZ789',
        vehicleType: 'SUV',
        brand: 'Honda',
        model: 'CR-V',
        color: 'Black',
        yearOfManufacture: 2019,
        imageUrl:
            'https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGNhcnxlbnwwfHwwfHx8MA%3D%3D', // Real image URL
      ),
      Vehicle(
        vehicleNumber: 'LMN456',
        vehicleType: 'Hatchback',
        brand: 'Ford',
        model: 'Focus',
        color: 'Red',
        yearOfManufacture: 2021,
        imageUrl:
            'https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGNhcnxlbnwwfHwwfHx8MA%3D%3D', // Real image URL
      ),
      Vehicle(
        vehicleNumber: 'OPQ012',
        vehicleType: 'Coupe',
        brand: 'BMW',
        model: 'M4',
        color: 'White',
        yearOfManufacture: 2018,
        imageUrl:
            'https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGNhcnxlbnwwfHwwfHx8MA%3D%3D', // Real image URL
      ),
      // Add more vehicle data as needed
    ];

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
