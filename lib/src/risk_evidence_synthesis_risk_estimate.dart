part of '../fhir_dart.dart';

 /// What was the estimated risk
 /// The estimated risk of the outcome.
class RiskEvidenceSynthesisRiskEstimate extends BackboneElement implements FhirResource {
   /// Sample size for group measured
   /// The sample size for the group that was measured for this risk estimate.
  final int? denominatorCount;
   /// Description of risk estimate
   /// Human-readable summary of risk estimate.
  final String? description;
   /// Number with the outcome
   /// The number of group members with the outcome of interest.
  final int? numeratorCount;
   /// How precise the estimate is
   /// A description of the precision of the estimate for the effect.
  final List<RiskEvidenceSynthesisRiskEstimatePrecisionEstimate>? precisionEstimate;
   /// Type of risk estimate
   /// Examples include proportion and mean.
  final CodeableConcept? type;
   /// What unit is the outcome described in?
   /// Specifies the UCUM unit for the outcome.
  final CodeableConcept? unitOfMeasure;
   /// Point estimate
   /// The point estimate of the risk estimate.
  final num? value;
  RiskEvidenceSynthesisRiskEstimate({
    this.denominatorCount,
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.numeratorCount,
    this.precisionEstimate,
    this.type,
    this.unitOfMeasure,
    this.value,
  });
  
  @override
  factory RiskEvidenceSynthesisRiskEstimate.fromJson(Map<String, dynamic> json) {
    return RiskEvidenceSynthesisRiskEstimate(
      denominatorCount: json['denominatorCount'] as int?,
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      numeratorCount: json['numeratorCount'] as int?,
      precisionEstimate: (json['precisionEstimate'] as List<dynamic>?)?.map((e) => RiskEvidenceSynthesisRiskEstimatePrecisionEstimate.fromJson(e as Map<String, dynamic>)).toList(),
      type: json['type'] != null ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>) : null,
      unitOfMeasure: json['unitOfMeasure'] != null ? CodeableConcept.fromJson(json['unitOfMeasure'] as Map<String, dynamic>) : null,
      value: json['value'] as num?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'denominatorCount': denominatorCount,
      'description': description,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'numeratorCount': numeratorCount,
      'precisionEstimate': precisionEstimate?.map((e) => e.toJson()).toList(),
      'type': type?.toJson(),
      'unitOfMeasure': unitOfMeasure?.toJson(),
      'value': value,
    };
  
  @override
  RiskEvidenceSynthesisRiskEstimate copyWith({
    int? denominatorCount,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    int? numeratorCount,
    List<RiskEvidenceSynthesisRiskEstimatePrecisionEstimate>? precisionEstimate,
    CodeableConcept? type,
    CodeableConcept? unitOfMeasure,
    num? value,
  }) {
    return RiskEvidenceSynthesisRiskEstimate(
      denominatorCount: denominatorCount ?? this.denominatorCount,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      numeratorCount: numeratorCount ?? this.numeratorCount,
      precisionEstimate: precisionEstimate ?? this.precisionEstimate,
      type: type ?? this.type,
      unitOfMeasure: unitOfMeasure ?? this.unitOfMeasure,
      value: value ?? this.value,
    );
  }
}
