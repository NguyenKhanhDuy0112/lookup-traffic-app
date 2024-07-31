import 'package:flutter/material.dart';

class DriverLicenseCard extends StatelessWidget {
  const DriverLicenseCard({
    super.key,
    required this.licenseNumber,
    required this.licenseType,
    required this.issuedDate,
    required this.expirationDate,
    required this.issuingAuthority,
    required this.press,
  });

  final String licenseNumber;
  final String licenseType;
  final String issuedDate;
  final String expirationDate;
  final String issuingAuthority;
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
                  const Icon(Icons.credit_card, size: 48, color: Colors.white),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      licenseNumber,
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDetailRow("License Type:", licenseType),
                  _buildDetailRow("Issued Date:", issuedDate),
                  _buildDetailRow("Expiration Date:", expirationDate),
                  _buildDetailRow("Issuing Authority:", issuingAuthority),
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
      padding: const EdgeInsets.symmetric(vertical: 6),
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
              style: const TextStyle(
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
