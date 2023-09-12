import 'package:google_maps_webapi/geocoding.dart';
import 'package:json_annotation/json_annotation.dart';

part 'picked_address.g.dart';

@JsonSerializable()
class PickedAddress {
  final Geometry? geometry;
  final String? addressLine;
  final String? countryName;
  final String? countryCode;
  final String? featureName;
  final String? postalCode;
  final String? adminArea;
  final String? subAdminArea;
  final String? locality;
  final String? subLocality;

  /// Route
  final String? thoroughfare;

  /// Street Number
  final String? subThoroughfare;

  PickedAddress({
    this.geometry,
    this.addressLine,
    this.countryName,
    this.countryCode,
    this.featureName,
    this.postalCode,
    this.adminArea,
    this.subAdminArea,
    this.locality,
    this.subLocality,
    this.thoroughfare,
    this.subThoroughfare,
  });

  factory PickedAddress.fromGeocodingResult(GeocodingResult geocodingResult) {
    AddressComponent? search(String type) {
      try {
        return geocodingResult.addressComponents.firstWhere(
          (component) => component.types.contains(type),
        );
      } on StateError catch (_) {
        return null;
      }
    }

    final country = search('country');

    return PickedAddress(
      geometry: geocodingResult.geometry,
      addressLine: geocodingResult.formattedAddress,
      countryName: country?.longName,
      countryCode: country?.shortName,
      featureName:
          search('featureName')?.longName ?? geocodingResult.formattedAddress,
      postalCode: search('postal_code')?.longName,
      adminArea: search('administrative_area_level_1')?.longName,
      subAdminArea: search('administrative_area_level_2')?.longName,
      locality: search('locality')?.longName,
      subLocality:
          (search('sublocality') ?? search('sublocality_level_1'))?.longName,
      thoroughfare: search('route')?.longName,
      subThoroughfare: search('street_number')?.longName,
    );
  }

  factory PickedAddress.fromJson(Map<String, dynamic> json) =>
      _$PickedAddressFromJson(json);
  Map<String, dynamic> toJson() => _$PickedAddressToJson(this);
}
