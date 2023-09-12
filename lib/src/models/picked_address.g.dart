// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picked_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickedAddress _$PickedAddressFromJson(Map<String, dynamic> json) =>
    PickedAddress(
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      addressLine: json['addressLine'] as String?,
      countryName: json['countryName'] as String?,
      countryCode: json['countryCode'] as String?,
      featureName: json['featureName'] as String?,
      postalCode: json['postalCode'] as String?,
      adminArea: json['adminArea'] as String?,
      subAdminArea: json['subAdminArea'] as String?,
      locality: json['locality'] as String?,
      subLocality: json['subLocality'] as String?,
      thoroughfare: json['thoroughfare'] as String?,
      subThoroughfare: json['subThoroughfare'] as String?,
    );

Map<String, dynamic> _$PickedAddressToJson(PickedAddress instance) =>
    <String, dynamic>{
      'geometry': instance.geometry,
      'addressLine': instance.addressLine,
      'countryName': instance.countryName,
      'countryCode': instance.countryCode,
      'featureName': instance.featureName,
      'postalCode': instance.postalCode,
      'adminArea': instance.adminArea,
      'subAdminArea': instance.subAdminArea,
      'locality': instance.locality,
      'subLocality': instance.subLocality,
      'thoroughfare': instance.thoroughfare,
      'subThoroughfare': instance.subThoroughfare,
    };
