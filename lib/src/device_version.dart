part of '../fhir_dart.dart';

/// The actual design of the device or software version running on the device.
class DeviceVersion extends BackboneElement implements FhirResource {
  /// A single component of the device version.
  final Identifier? component;

  /// The type of the device version.
  final CodeableConcept? type;

  /// The version text.
  final String value;
  DeviceVersion({
    this.component,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.type,
    required this.value,
  });

  @override
  factory DeviceVersion.fromJson(Map<String, dynamic> json) {
    return DeviceVersion(
      component: json['component'] != null
          ? Identifier.fromJson(
              (json['component'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
      value: json['value'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'component': component?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
        'value': value,
      };

  @override
  DeviceVersion copyWith({
    Identifier? component,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
    String? value,
  }) {
    return DeviceVersion(
      component: component ?? this.component,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      value: value ?? this.value,
    );
  }
}
