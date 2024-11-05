part of '../fhir_dart.dart';

/// Applicable diagnosis
/// Patient diagnosis for which care is sought.
class CoverageEligibilityRequestItemDiagnosis extends BackboneElement
    implements FhirResource {
  /// Nature of illness or problem
  /// The nature of illness or problem in a coded form or as a reference to an external defined Condition.
  final CodeableConcept? diagnosisCodeableConcept;

  /// Nature of illness or problem
  /// The nature of illness or problem in a coded form or as a reference to an external defined Condition.
  final Reference? diagnosisReference;
  CoverageEligibilityRequestItemDiagnosis({
    this.diagnosisCodeableConcept,
    this.diagnosisReference,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory CoverageEligibilityRequestItemDiagnosis.fromJson(
      Map<String, dynamic> json) {
    return CoverageEligibilityRequestItemDiagnosis(
      diagnosisCodeableConcept: json['diagnosisCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['diagnosisCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      diagnosisReference: json['diagnosisReference'] != null
          ? Reference.fromJson(
              (json['diagnosisReference'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'diagnosisCodeableConcept': diagnosisCodeableConcept?.toJson(),
        'diagnosisReference': diagnosisReference?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  CoverageEligibilityRequestItemDiagnosis copyWith({
    CodeableConcept? diagnosisCodeableConcept,
    Reference? diagnosisReference,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return CoverageEligibilityRequestItemDiagnosis(
      diagnosisCodeableConcept:
          diagnosisCodeableConcept ?? this.diagnosisCodeableConcept,
      diagnosisReference: diagnosisReference ?? this.diagnosisReference,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
