part of '../fhir_dart.dart';

/// Supporting evidence / manifestations that are the basis of the Condition's verification status, such as evidence that confirmed or refuted the condition.
/// The evidence may be a simple list of coded symptoms/manifestations, or references to observations or formal assessments, or both.
class ConditionEvidence extends BackboneElement implements FhirResource {
  /// Manifestation/symptom
  /// A manifestation or symptom that led to the recording of this condition.
  final List<CodeableConcept>? code;

  /// Supporting information found elsewhere
  /// Links to other relevant information, including pathology reports.
  final List<Reference>? detail;
  ConditionEvidence({
    this.code,
    this.detail,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory ConditionEvidence.fromJson(Map<String, dynamic> json) {
    return ConditionEvidence(
      code: (json['code'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
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
        'code': code?.map((e) => e.toJson()).toList(),
        'detail': detail?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  ConditionEvidence copyWith({
    List<CodeableConcept>? code,
    List<Reference>? detail,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return ConditionEvidence(
      code: code ?? this.code,
      detail: detail ?? this.detail,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
