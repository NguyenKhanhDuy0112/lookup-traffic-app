import 'package:flutter/material.dart';
import 'package:shop/models/vehicle_model.dart';

import '../../constants.dart';

class VehicleCard extends StatelessWidget {
  final Vehicle vehicle;
  final VoidCallback press;

  const VehicleCard({
    super.key,
    required this.vehicle,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize:
            const Size(150, 150), // Adjusted size to accommodate content
        maximumSize: const Size(150, 470),
        backgroundColor: Colors.white,
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.2, // Adjusted for better image display
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                  child: Image.network(
                    vehicle.imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.4),
                        Colors.transparent
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                    ),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  vehicle.vehicleNumber.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black87,
                          ) ??
                      const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                ),
                const SizedBox(height: defaultPadding / 2),
                Text(
                  'Type: ${vehicle.vehicleType}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[600],
                          ) ??
                      TextStyle(
                        color: Colors.grey[600],
                      ),
                ),
                Text(
                  'Brand: ${vehicle.brand}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[600],
                          ) ??
                      TextStyle(
                        color: Colors.grey[600],
                      ),
                ),
                Text(
                  'Model: ${vehicle.model}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[600],
                          ) ??
                      TextStyle(
                        color: Colors.grey[600],
                      ),
                ),
                Text(
                  'Color: ${vehicle.color}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[600],
                          ) ??
                      TextStyle(
                        color: Colors.grey[600],
                      ),
                ),
                Text(
                  'Year: ${vehicle.yearOfManufacture}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[600],
                          ) ??
                      TextStyle(
                        color: Colors.grey[600],
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
