import 'package:shop/models/vehicle_model.dart';

class TrafficViolation {
  final Vehicle vehicle;
  final String violationDate;
  final String violationType;
  final String location;
  final double fineAmount;
  final int pointsDeducted;
  final String status;
  final String createdAt;

  TrafficViolation({
    required this.vehicle,
    required this.violationDate,
    required this.violationType,
    required this.location,
    required this.fineAmount,
    required this.pointsDeducted,
    required this.status,
    required this.createdAt,
  });
}
