// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vehicle _$VehicleFromJson(Map<String, dynamic> json) => Vehicle(
      id: json['id'] as String,
      vehicleNumber: json['vehicle_number'] as String,
      vehicleType: json['vehicle_type'] as String,
      imageUrl: json['image_url'] as String,
      brand: json['brand'] as String,
      model: json['model'] as String,
      color: json['color'] as String,
      yearOfManufacture: (json['year_of_manufacture'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$VehicleToJson(Vehicle instance) => <String, dynamic>{
      'id': instance.id,
      'vehicle_number': instance.vehicleNumber,
      'image_url': instance.imageUrl,
      'vehicle_type': instance.vehicleType,
      'brand': instance.brand,
      'model': instance.model,
      'color': instance.color,
      'year_of_manufacture': instance.yearOfManufacture,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

Violation _$ViolationFromJson(Map<String, dynamic> json) => Violation(
      id: json['id'] as String,
      violationDate: DateTime.parse(json['violation_date'] as String),
      violationType: json['violation_type'] as String,
      location: json['location'] as String,
      fineAmount: (json['fine_amount'] as num).toInt(),
      pointsDeducted: (json['points_deducted'] as num).toInt(),
      status: json['status'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ViolationToJson(Violation instance) => <String, dynamic>{
      'id': instance.id,
      'violation_date': instance.violationDate.toIso8601String(),
      'violation_type': instance.violationType,
      'location': instance.location,
      'fine_amount': instance.fineAmount,
      'points_deducted': instance.pointsDeducted,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

License _$LicenseFromJson(Map<String, dynamic> json) => License(
      id: json['id'] as String,
      licenseNumber: json['license_number'] as String,
      licenseType: json['license_type'] as String,
      issuedDate: DateTime.parse(json['issued_date'] as String),
      expirationDate: DateTime.parse(json['expiration_date'] as String),
      issuingAuthority: json['issuing_authority'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$LicenseToJson(License instance) => <String, dynamic>{
      'id': instance.id,
      'license_number': instance.licenseNumber,
      'license_type': instance.licenseType,
      'issued_date': instance.issuedDate.toIso8601String(),
      'expiration_date': instance.expirationDate.toIso8601String(),
      'issuing_authority': instance.issuingAuthority,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String,
      fullName: json['full_name'] as String,
      phoneNumber: json['phone_number'] as String,
      address: json['address'] as String,
      dob: DateTime.parse(json['dob'] as String),
      cccd: json['cccd'] as String,
      avatar: json['avatar'] as String,
      vehicles: (json['vehicles'] as List<dynamic>)
          .map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
          .toList(),
      violations: (json['violations'] as List<dynamic>)
          .map((e) => Violation.fromJson(e as Map<String, dynamic>))
          .toList(),
      licenses: (json['licenses'] as List<dynamic>)
          .map((e) => License.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'gender': instance.gender,
      'full_name': instance.fullName,
      'phone_number': instance.phoneNumber,
      'address': instance.address,
      'dob': instance.dob.toIso8601String(),
      'cccd': instance.cccd,
      'avatar': instance.avatar,
      'vehicles': instance.vehicles,
      'violations': instance.violations,
      'licenses': instance.licenses,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
