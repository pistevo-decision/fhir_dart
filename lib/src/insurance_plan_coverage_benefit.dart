part of '../fhir_dart.dart';

 /// List of benefits
 /// Specific benefits under this type of coverage.
class InsurancePlanCoverageBenefit extends BackboneElement implements FhirResource {
   /// Benefit limits
   /// The specific limits on the benefit.
  final List<InsurancePlanCoverageBenefitLimit>? limit;
   /// Referral requirements
   /// The referral requirements to have access/coverage for this benefit.
  final String? requirement;
   /// Type of benefit (primary care; speciality care; inpatient; outpatient).
  final CodeableConcept type;
  InsurancePlanCoverageBenefit({
    super.fhirExtension,
    super.id,
    this.limit,
    super.modifierExtension,
    this.requirement,
    required this.type,
  });
  
  @override
  factory InsurancePlanCoverageBenefit.fromJson(Map<String, dynamic> json) {
    return InsurancePlanCoverageBenefit(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      limit: (json['limit'] as List<dynamic>?)?.map((e) => InsurancePlanCoverageBenefitLimit.fromJson(e as Map<String, dynamic>)).toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      requirement: json['requirement'] as String?,
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'limit': limit?.map((e) => e.toJson()).toList(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'requirement': requirement,
      'type': type.toJson(),
    };
  
  @override
  InsurancePlanCoverageBenefit copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<InsurancePlanCoverageBenefitLimit>? limit,
    List<Extension>? modifierExtension,
    String? requirement,
    CodeableConcept? type,
  }) {
    return InsurancePlanCoverageBenefit(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      limit: limit ?? this.limit,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      requirement: requirement ?? this.requirement,
      type: type ?? this.type,
    );
  }
}
