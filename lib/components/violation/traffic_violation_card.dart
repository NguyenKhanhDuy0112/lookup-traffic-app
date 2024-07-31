import 'package:flutter/material.dart';
import 'package:shop/models/vehicle_model.dart';

class TrafficViolationCard extends StatelessWidget {
  const TrafficViolationCard({
    Key? key,
    required this.vehicle,
    required this.violationDate,
    required this.violationType,
    required this.location,
    required this.fineAmount,
    required this.pointsDeducted,
    required this.status,
    required this.createdAt,
    required this.press,
  }) : super(key: key);

  final Vehicle vehicle;
  final String violationDate;
  final String violationType;
  final String location;
  final double fineAmount;
  final int pointsDeducted;
  final String status;
  final String createdAt;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 3, 155, 148),
                    Color.fromARGB(255, 0, 151, 156)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      vehicle.imageUrl.isNotEmpty
                          ? vehicle.imageUrl
                          : 'https://via.placeholder.com/80',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(Icons.error, size: 80);
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          vehicle.brand,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          vehicle.model,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                        Text(
                          '${vehicle.vehicleType}, ${vehicle.color}, ${vehicle.yearOfManufacture}',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.white70,
                                  ),
                        ),
                        Text(
                          'Number: ${vehicle.vehicleNumber}',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.white70,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDetailRow("Violation Date:", violationDate),
                  _buildDetailRow("Violation Type:", violationType),
                  _buildDetailRow("Location:", location),
                  _buildDetailRow(
                      "Fine Amount:", "\$${fineAmount.toStringAsFixed(2)}"),
                  _buildDetailRow(
                      "Points Deducted:", pointsDeducted.toString()),
                  _buildDetailRow("Status:", status),
                  _buildDetailRow("Created At:", createdAt),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[700],
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
