part of '../fhir_dart.dart';

/// Supporting evidence or manifestations that provide the basis for identifying the detected issue such as a GuidanceResponse or MeasureReport.
class DetectedIssueEvidence extends BackboneElement implements FhirResource {
  /// Manifestation
  /// A manifestation that led to the recording of this detected issue.
  final List<CodeableConcept>? code;

  /// Supporting information
  /// Links to resources that constitute evidence for the detected issue such as a GuidanceResponse or MeasureReport.
  final List<Reference>? detail;
  DetectedIssueEvidence({
    this.code,
    this.detail,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory DetectedIssueEvidence.fromJson(Map<String, dynamic> json) {
    return DetectedIssueEvidence(
      code: (json['code'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
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
        'code': code?.map((e) => e.toJson()).toList(),
        'detail': detail?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  DetectedIssueEvidence copyWith({
    List<CodeableConcept>? code,
    List<Reference>? detail,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return DetectedIssueEvidence(
      code: code ?? this.code,
      detail: detail ?? this.detail,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
