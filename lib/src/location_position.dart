part of '../fhir_dart.dart';

 /// The absolute geographic location of the Location, expressed using the WGS84 datum (This is the same co-ordinate system used in KML).
class LocationPosition extends BackboneElement implements FhirResource {
   /// Altitude with WGS84 datum
   /// Altitude. The value domain and the interpretation are the same as for the text of the altitude element in KML (see notes below).
  final num? altitude;
   /// Latitude with WGS84 datum
   /// Latitude. The value domain and the interpretation are the same as for the text of the latitude element in KML (see notes below).
  final num latitude;
   /// Longitude with WGS84 datum
   /// Longitude. The value domain and the interpretation are the same as for the text of the longitude element in KML (see notes below).
  final num longitude;
  LocationPosition({
    this.altitude,
    super.fhirExtension,
    super.id,
    required this.latitude,
    required this.longitude,
    super.modifierExtension,
  });
  
  @override
  factory LocationPosition.fromJson(Map<String, dynamic> json) {
    return LocationPosition(
      altitude: json['altitude'] as num?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      latitude: json['latitude'] as num,
      longitude: json['longitude'] as num,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'altitude': altitude,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'latitude': latitude,
      'longitude': longitude,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  LocationPosition copyWith({
    num? altitude,
    List<Extension>? fhirExtension,
    String? id,
    num? latitude,
    num? longitude,
    List<Extension>? modifierExtension,
  }) {
    return LocationPosition(
      altitude: altitude ?? this.altitude,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
