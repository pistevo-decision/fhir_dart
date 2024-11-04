part of '../fhir_dart.dart';

/// Possible or likely findings and diagnoses
/// Specific findings or diagnoses that were considered likely or relevant to ongoing treatment.
class ClinicalImpressionFinding extends BackboneElement
    implements FhirResource {
  /// Which investigations support finding or diagnosis.
  final String? basis;

  /// What was found
  /// Specific text or code for finding or diagnosis, which may include ruled-out or resolved conditions.
  final CodeableConcept? itemCodeableConcept;

  /// What was found
  /// Specific reference for finding or diagnosis, which may include ruled-out or resolved conditions.
  final Reference? itemReference;
  ClinicalImpressionFinding({
    this.basis,
    super.fhirExtension,
    super.id,
    this.itemCodeableConcept,
    this.itemReference,
    super.modifierExtension,
  });

  @override
  factory ClinicalImpressionFinding.fromJson(Map<String, dynamic> json) {
    return ClinicalImpressionFinding(
      basis: json['basis'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      itemCodeableConcept: json['itemCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['itemCodeableConcept'] as Map<String, dynamic>)
          : null,
      itemReference: json['itemReference'] != null
          ? Reference.fromJson(json['itemReference'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'basis': basis,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'itemCodeableConcept': itemCodeableConcept?.toJson(),
        'itemReference': itemReference?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  ClinicalImpressionFinding copyWith({
    String? basis,
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    List<Extension>? modifierExtension,
  }) {
    return ClinicalImpressionFinding(
      basis: basis ?? this.basis,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
