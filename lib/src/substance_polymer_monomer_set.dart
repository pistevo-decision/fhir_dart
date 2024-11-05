part of '../fhir_dart.dart';

/// Todo.
class SubstancePolymerMonomerSet extends BackboneElement
    implements FhirResource {
  /// Todo.
  final CodeableConcept? ratioType;

  /// Todo.
  final List<SubstancePolymerMonomerSetStartingMaterial>? startingMaterial;
  SubstancePolymerMonomerSet({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.ratioType,
    this.startingMaterial,
  });

  @override
  factory SubstancePolymerMonomerSet.fromJson(Map<String, dynamic> json) {
    return SubstancePolymerMonomerSet(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      ratioType: json['ratioType'] != null
          ? CodeableConcept.fromJson(
              (json['ratioType'] as Map).cast<String, dynamic>())
          : null,
      startingMaterial: (json['startingMaterial'] as List<dynamic>?)
          ?.map((e) => SubstancePolymerMonomerSetStartingMaterial.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'ratioType': ratioType?.toJson(),
        'startingMaterial': startingMaterial?.map((e) => e.toJson()).toList(),
      };

  @override
  SubstancePolymerMonomerSet copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? ratioType,
    List<SubstancePolymerMonomerSetStartingMaterial>? startingMaterial,
  }) {
    return SubstancePolymerMonomerSet(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      ratioType: ratioType ?? this.ratioType,
      startingMaterial: startingMaterial ?? this.startingMaterial,
    );
  }
}
