import 'package:flutter/material.dart';
import 'package:shop/components/violation/traffic_violation_card.dart'; // Ensure this path is correct
import 'package:shop/models/vehicle_model.dart'; // Make sure the path is correct
import 'package:shop/models/violation_model.dart'; // Make sure the path is correct
import 'package:shop/route/route_constants.dart';

import '../../../constants.dart';

class TrafficViolationScreen extends StatelessWidget {
  const TrafficViolationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TrafficViolation> dummyViolations = [
      TrafficViolation(
        vehicle: Vehicle(
          vehicleNumber: 'ABC123',
          vehicleType: 'Sedan',
          brand: 'Toyota',
          model: 'Camry',
          color: 'Blue',
          yearOfManufacture: 2020,
          imageUrl:
              'https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?w=500&auto=format&fit=crop&q=60', // Add a real image URL
        ),
        violationDate: '2024-07-01',
        violationType: 'Speeding',
        location: 'Main Street',
        fineAmount: 150.00,
        pointsDeducted: 2,
        status: 'Unpaid',
        createdAt: '2024-07-01',
      ),
      TrafficViolation(
        vehicle: Vehicle(
          vehicleNumber: 'XYZ789',
          vehicleType: 'SUV',
          brand: 'Honda',
          model: 'CR-V',
          color: 'Black',
          yearOfManufacture: 2019,
          imageUrl:
              'https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?w=500&auto=format&fit=crop&q=60',
        ),
        violationDate: '2024-07-15',
        violationType: 'Parking',
        location: '2nd Avenue',
        fineAmount: 75.00,
        pointsDeducted: 1,
        status: 'Paid',
        createdAt: '2024-07-15',
      ),
      TrafficViolation(
        vehicle: Vehicle(
          vehicleNumber: 'LMN456',
          vehicleType: 'Hatchback',
          brand: 'Ford',
          model: 'Fiesta',
          color: 'Red',
          yearOfManufacture: 2021,
          imageUrl:
              'https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?w=500&auto=format&fit=crop&q=60',
        ),
        violationDate: '2024-07-20',
        violationType: 'Running Red Light',
        location: 'Elm Street',
        fineAmount: 200.00,
        pointsDeducted: 3,
        status: 'Unpaid',
        createdAt: '2024-07-20',
      ),
      TrafficViolation(
        vehicle: Vehicle(
          vehicleNumber: 'OPQ123',
          vehicleType: 'Coupe',
          brand: 'BMW',
          model: 'M3',
          color: 'White',
          yearOfManufacture: 2022,
          imageUrl:
              'https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?w=500&auto=format&fit=crop&q=60',
        ),
        violationDate: '2024-07-25',
        violationType: 'Expired Registration',
        location: '5th Avenue',
        fineAmount: 100.00,
        pointsDeducted: 0,
        status: 'Paid',
        createdAt: '2024-07-25',
      ),
    ];

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
        itemCount: dummyViolations.length,
        itemBuilder: (BuildContext context, int index) {
          final violation = dummyViolations[index];
          return TrafficViolationCard(
            vehicle: violation.vehicle,
            violationDate: violation.violationDate,
            violationType: violation.violationType,
            location: violation.location,
            fineAmount: violation.fineAmount,
            pointsDeducted: violation.pointsDeducted,
            status: violation.status,
            createdAt: violation.createdAt,
            press: () {
              Navigator.pushNamed(context, productDetailsScreenRoute);
            },
          );
        },
      ),
    );
  }
}
