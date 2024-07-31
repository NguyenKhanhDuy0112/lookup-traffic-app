class Vehicle {
  final String vehicleNumber;
  final String vehicleType;
  final String brand;
  final String model;
  final String color;
  final int yearOfManufacture;
  final String imageUrl;

  Vehicle({
    required this.vehicleNumber,
    required this.vehicleType,
    required this.brand,
    required this.model,
    required this.color,
    required this.yearOfManufacture,
    this.imageUrl = '',
  });
}
