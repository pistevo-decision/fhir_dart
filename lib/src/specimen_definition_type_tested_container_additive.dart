part of '../fhir_dart.dart';

/// Additive associated with container
/// Substance introduced in the kind of container to preserve, maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.
class SpecimenDefinitionTypeTestedContainerAdditive extends BackboneElement
    implements FhirResource {
  /// Additive associated with container
  /// Substance introduced in the kind of container to preserve, maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.
  final CodeableConcept? additiveCodeableConcept;

  /// Additive associated with container
  /// Substance introduced in the kind of container to preserve, maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.
  final Reference? additiveReference;
  SpecimenDefinitionTypeTestedContainerAdditive({
    this.additiveCodeableConcept,
    this.additiveReference,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory SpecimenDefinitionTypeTestedContainerAdditive.fromJson(
      Map<String, dynamic> json) {
    return SpecimenDefinitionTypeTestedContainerAdditive(
      additiveCodeableConcept: json['additiveCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['additiveCodeableConcept'] as Map<String, dynamic>)
          : null,
      additiveReference: json['additiveReference'] != null
          ? Reference.fromJson(
              json['additiveReference'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'additiveCodeableConcept': additiveCodeableConcept?.toJson(),
        'additiveReference': additiveReference?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  SpecimenDefinitionTypeTestedContainerAdditive copyWith({
    CodeableConcept? additiveCodeableConcept,
    Reference? additiveReference,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return SpecimenDefinitionTypeTestedContainerAdditive(
      additiveCodeableConcept:
          additiveCodeableConcept ?? this.additiveCodeableConcept,
      additiveReference: additiveReference ?? this.additiveReference,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
