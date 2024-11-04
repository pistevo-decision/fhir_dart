part of '../fhir_dart.dart';

/// Device capabilities.
class DeviceDefinitionCapability extends BackboneElement
    implements FhirResource {
  /// Description of capability.
  final List<CodeableConcept>? description;

  /// Type of capability.
  final CodeableConcept type;
  DeviceDefinitionCapability({
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.type,
  });

  @override
  factory DeviceDefinitionCapability.fromJson(Map<String, dynamic> json) {
    return DeviceDefinitionCapability(
      description: (json['description'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'description': description?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type.toJson(),
      };

  @override
  DeviceDefinitionCapability copyWith({
    List<CodeableConcept>? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
  }) {
    return DeviceDefinitionCapability(
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
    );
  }
}
