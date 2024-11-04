part of '../fhir_dart.dart';

/// The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties.
class DeviceProperty extends BackboneElement implements FhirResource {
  /// Code that specifies the property DeviceDefinitionPropetyCode (Extensible).
  final CodeableConcept type;

  /// Property value as a code, e.g., NTP4 (synced to NTP).
  final List<CodeableConcept>? valueCode;

  /// Property value as a quantity.
  final List<Quantity>? valueQuantity;
  DeviceProperty({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.type,
    this.valueCode,
    this.valueQuantity,
  });

  @override
  factory DeviceProperty.fromJson(Map<String, dynamic> json) {
    return DeviceProperty(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      valueCode: (json['valueCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      valueQuantity: (json['valueQuantity'] as List<dynamic>?)
          ?.map((e) => Quantity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type.toJson(),
        'valueCode': valueCode?.map((e) => e.toJson()).toList(),
        'valueQuantity': valueQuantity?.map((e) => e.toJson()).toList(),
      };

  @override
  DeviceProperty copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? valueCode,
    List<Quantity>? valueQuantity,
  }) {
    return DeviceProperty(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueCode: valueCode ?? this.valueCode,
      valueQuantity: valueQuantity ?? this.valueQuantity,
    );
  }
}
