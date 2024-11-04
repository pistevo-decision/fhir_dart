part of '../fhir_dart.dart';

 /// Unique Device Identifier (UDI) Barcode string
 /// Unique device identifier (UDI) assigned to device label or package.  Note that the Device may include multiple udiCarriers as it either may include just the udiCarrier for the jurisdiction it is sold, or for multiple jurisdictions it could have been sold.
class DeviceDefinitionUdiDeviceIdentifier extends BackboneElement implements FhirResource {
   /// The identifier that is to be associated with every Device that references this DeviceDefintiion for the issuer and jurisdication porvided in the DeviceDefinition.udiDeviceIdentifier.
  final String deviceIdentifier;
   /// The organization that assigns the identifier algorithm.
  final String issuer;
   /// The jurisdiction to which the deviceIdentifier applies.
  final String jurisdiction;
  DeviceDefinitionUdiDeviceIdentifier({
    required this.deviceIdentifier,
    super.fhirExtension,
    super.id,
    required this.issuer,
    required this.jurisdiction,
    super.modifierExtension,
  });
  
  @override
  factory DeviceDefinitionUdiDeviceIdentifier.fromJson(Map<String, dynamic> json) {
    return DeviceDefinitionUdiDeviceIdentifier(
      deviceIdentifier: json['deviceIdentifier'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      issuer: json['issuer'] as String,
      jurisdiction: json['jurisdiction'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'deviceIdentifier': deviceIdentifier,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'issuer': issuer,
      'jurisdiction': jurisdiction,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  DeviceDefinitionUdiDeviceIdentifier copyWith({
    String? deviceIdentifier,
    List<Extension>? fhirExtension,
    String? id,
    String? issuer,
    String? jurisdiction,
    List<Extension>? modifierExtension,
  }) {
    return DeviceDefinitionUdiDeviceIdentifier(
      deviceIdentifier: deviceIdentifier ?? this.deviceIdentifier,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      issuer: issuer ?? this.issuer,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
