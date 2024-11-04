part of '../fhir_dart.dart';

 /// A substance used to create the material(s) of which the device is made.
class DeviceDefinitionMaterial extends BackboneElement implements FhirResource {
   /// Whether the substance is a known or suspected allergen.
  final bool? allergenicIndicator;
   /// Indicates an alternative material of the device.
  final bool? alternate;
   /// The substance.
  final CodeableConcept substance;
  DeviceDefinitionMaterial({
    this.allergenicIndicator,
    this.alternate,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.substance,
  });
  
  @override
  factory DeviceDefinitionMaterial.fromJson(Map<String, dynamic> json) {
    return DeviceDefinitionMaterial(
      allergenicIndicator: json['allergenicIndicator'] as bool?,
      alternate: json['alternate'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      substance: CodeableConcept.fromJson(json['substance'] as Map<String, dynamic>),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'allergenicIndicator': allergenicIndicator,
      'alternate': alternate,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'substance': substance.toJson(),
    };
  
  @override
  DeviceDefinitionMaterial copyWith({
    bool? allergenicIndicator,
    bool? alternate,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? substance,
  }) {
    return DeviceDefinitionMaterial(
      allergenicIndicator: allergenicIndicator ?? this.allergenicIndicator,
      alternate: alternate ?? this.alternate,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substance: substance ?? this.substance,
    );
  }
}
