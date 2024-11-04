part of '../fhir_dart.dart';

/// Specific eligibility requirements required to use the service
/// Does this service have specific eligibility requirements that need to be met in order to use the service?
class HealthcareServiceEligibility extends BackboneElement
    implements FhirResource {
  /// Coded value for the eligibility.
  final CodeableConcept? code;

  /// Describes the eligibility conditions for the service.
  /// The description of service eligibility should, in general, not exceed one or two paragraphs. It should be sufficient for a prospective consumer to determine if they are likely to be eligible or not. Where eligibility requirements and conditions are complex, it may simply be noted that an eligibility assessment is required. Where eligibility is determined by an outside source, such as an Act of Parliament, this should be noted, preferably with a reference to a commonly available copy of the source document such as a web page.
  final String? comment;
  HealthcareServiceEligibility({
    this.code,
    this.comment,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory HealthcareServiceEligibility.fromJson(Map<String, dynamic> json) {
    return HealthcareServiceEligibility(
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      comment: json['comment'] as String?,
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
        'code': code?.toJson(),
        'comment': comment,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  HealthcareServiceEligibility copyWith({
    CodeableConcept? code,
    String? comment,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return HealthcareServiceEligibility(
      code: code ?? this.code,
      comment: comment ?? this.comment,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
