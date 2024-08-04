import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shop/models/user_profile_model.dart';

class TrafficViolationCard extends StatelessWidget {
  const TrafficViolationCard({
    super.key,
    required this.violation,
  });

  final Violation violation;

  String formatDate(DateTime date) {
    final DateFormat formatter = DateFormat('MM/dd/yyyy');
    return formatter.format(date);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: press,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDetailRow(
                      "Violation Date:", formatDate(violation.violationDate)),
                  _buildDetailRow("Violation Type:", violation.violationType),
                  _buildDetailRow("Location:", violation.location),
                  _buildDetailRow("Fine Amount:",
                      "\$${violation.fineAmount.toStringAsFixed(2)}"),
                  _buildDetailRow(
                      "Points Deducted:", violation.pointsDeducted.toString()),
                  _buildDetailRow("Status:", violation.status),
                  _buildDetailRow(
                      "Created At:", formatDate(violation.createdAt)),
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
