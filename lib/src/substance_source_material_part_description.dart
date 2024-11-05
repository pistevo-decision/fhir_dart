part of '../fhir_dart.dart';

/// To do.
class SubstanceSourceMaterialPartDescription extends BackboneElement
    implements FhirResource {
  /// Entity of anatomical origin of source material within an organism.
  final CodeableConcept? fhirPart;

  /// The detailed anatomic location when the part can be extracted from different anatomical locations of the organism. Multiple alternative locations may apply.
  final CodeableConcept? partLocation;
  SubstanceSourceMaterialPartDescription({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.fhirPart,
    this.partLocation,
  });

  @override
  factory SubstanceSourceMaterialPartDescription.fromJson(
      Map<String, dynamic> json) {
    return SubstanceSourceMaterialPartDescription(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirPart: json['part'] != null
          ? CodeableConcept.fromJson(
              (json['part'] as Map).cast<String, dynamic>())
          : null,
      partLocation: json['partLocation'] != null
          ? CodeableConcept.fromJson(
              (json['partLocation'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'part': fhirPart?.toJson(),
        'partLocation': partLocation?.toJson(),
      };

  @override
  SubstanceSourceMaterialPartDescription copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? fhirPart,
    CodeableConcept? partLocation,
  }) {
    return SubstanceSourceMaterialPartDescription(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      fhirPart: fhirPart ?? this.fhirPart,
      partLocation: partLocation ?? this.partLocation,
    );
  }
}
