import 'package:json_annotation/json_annotation.dart';
part 'user_profile_model.g.dart';

@JsonSerializable()
class Vehicle {
  final String id;
  @JsonKey(name: 'vehicle_number')
  final String vehicleNumber;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey(name: 'vehicle_type')
  final String vehicleType;
  final String brand;
  final String model;
  final String color;
  @JsonKey(name: 'year_of_manufacture')
  final int yearOfManufacture;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  Vehicle({
    required this.id,
    required this.vehicleNumber,
    required this.vehicleType,
    required this.imageUrl,
    required this.brand,
    required this.model,
    required this.color,
    required this.yearOfManufacture,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
  Map<String, dynamic> toJson() => _$VehicleToJson(this);
}

@JsonSerializable()
class Violation {
  final String id;
  @JsonKey(name: 'violation_date')
  final DateTime violationDate;
  @JsonKey(name: 'violation_type')
  final String violationType;
  final String location;
  @JsonKey(name: 'fine_amount')
  final int fineAmount;
  @JsonKey(name: 'points_deducted')
  final int pointsDeducted;
  final String status;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  Violation({
    required this.id,
    required this.violationDate,
    required this.violationType,
    required this.location,
    required this.fineAmount,
    required this.pointsDeducted,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Violation.fromJson(Map<String, dynamic> json) =>
      _$ViolationFromJson(json);
  Map<String, dynamic> toJson() => _$ViolationToJson(this);
}

@JsonSerializable()
class License {
  final String id;
  @JsonKey(name: 'license_number')
  final String licenseNumber;
  @JsonKey(name: 'license_type')
  final String licenseType;
  @JsonKey(name: 'issued_date')
  final DateTime issuedDate;
  @JsonKey(name: 'expiration_date')
  final DateTime expirationDate;
  @JsonKey(name: 'issuing_authority')
  final String issuingAuthority;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  License({
    required this.id,
    required this.licenseNumber,
    required this.licenseType,
    required this.issuedDate,
    required this.expirationDate,
    required this.issuingAuthority,
    required this.createdAt,
    required this.updatedAt,
  });

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);
  Map<String, dynamic> toJson() => _$LicenseToJson(this);
}

@JsonSerializable()
class UserProfile {
  final String id;
  final String username;
  final String email;
  final String gender;
  @JsonKey(name: 'full_name')
  final String fullName;
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  final String address;
  final DateTime dob;
  final String cccd;
  final String avatar;
  final List<Vehicle> vehicles;
  final List<Violation> violations;
  final List<License> licenses;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  UserProfile({
    required this.id,
    required this.username,
    required this.email,
    required this.gender,
    required this.fullName,
    required this.phoneNumber,
    required this.address,
    required this.dob,
    required this.cccd,
    required this.avatar,
    required this.vehicles,
    required this.violations,
    required this.licenses,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}
