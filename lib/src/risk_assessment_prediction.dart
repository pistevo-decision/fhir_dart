part of '../fhir_dart.dart';

/// Outcome predicted
/// Describes the expected outcome for the subject.
/// Multiple repetitions can be used to identify the same type of outcome in different timeframes as well as different types of outcomes.
class RiskAssessmentPrediction extends BackboneElement implements FhirResource {
  /// Possible outcome for the subject
  /// One of the potential outcomes for the patient (e.g. remission, death,  a particular condition).
  final CodeableConcept? outcome;

  /// Likelihood of specified outcome
  /// Indicates how likely the outcome is (in the specified timeframe).
  /// If range is used, it represents the lower and upper bounds of certainty; e.g. 40-60%  Decimal values are expressed as percentages as well (max = 100).
  final num? probabilityDecimal;

  /// Likelihood of specified outcome
  /// Indicates how likely the outcome is (in the specified timeframe).
  /// If range is used, it represents the lower and upper bounds of certainty; e.g. 40-60%  Decimal values are expressed as percentages as well (max = 100).
  final Range? probabilityRange;

  /// Likelihood of specified outcome as a qualitative value
  /// Indicates how likely the outcome is (in the specified timeframe), expressed as a qualitative value (e.g. low, medium, or high).
  final CodeableConcept? qualitativeRisk;

  /// Explanation of prediction
  /// Additional information explaining the basis for the prediction.
  final String? rationale;

  /// Relative likelihood
  /// Indicates the risk for this particular subject (with their specific characteristics) divided by the risk of the population in general.  (Numbers greater than 1 = higher risk than the population, numbers less than 1 = lower risk.).
  final num? relativeRisk;

  /// Timeframe or age range
  /// Indicates the period of time or age range of the subject to which the specified probability applies.
  /// If not specified, the risk applies "over the subject's lifespan".
  final Period? whenPeriod;

  /// Timeframe or age range
  /// Indicates the period of time or age range of the subject to which the specified probability applies.
  /// If not specified, the risk applies "over the subject's lifespan".
  final Range? whenRange;
  RiskAssessmentPrediction({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.outcome,
    this.probabilityDecimal,
    this.probabilityRange,
    this.qualitativeRisk,
    this.rationale,
    this.relativeRisk,
    this.whenPeriod,
    this.whenRange,
  });

  @override
  factory RiskAssessmentPrediction.fromJson(Map<String, dynamic> json) {
    return RiskAssessmentPrediction(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      outcome: json['outcome'] != null
          ? CodeableConcept.fromJson(
              (json['outcome'] as Map).cast<String, dynamic>())
          : null,
      probabilityDecimal: json['probabilityDecimal'] as num?,
      probabilityRange: json['probabilityRange'] != null
          ? Range.fromJson(
              (json['probabilityRange'] as Map).cast<String, dynamic>())
          : null,
      qualitativeRisk: json['qualitativeRisk'] != null
          ? CodeableConcept.fromJson(
              (json['qualitativeRisk'] as Map).cast<String, dynamic>())
          : null,
      rationale: json['rationale'] as String?,
      relativeRisk: json['relativeRisk'] as num?,
      whenPeriod: json['whenPeriod'] != null
          ? Period.fromJson((json['whenPeriod'] as Map).cast<String, dynamic>())
          : null,
      whenRange: json['whenRange'] != null
          ? Range.fromJson((json['whenRange'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'outcome': outcome?.toJson(),
        'probabilityDecimal': probabilityDecimal,
        'probabilityRange': probabilityRange?.toJson(),
        'qualitativeRisk': qualitativeRisk?.toJson(),
        'rationale': rationale,
        'relativeRisk': relativeRisk,
        'whenPeriod': whenPeriod?.toJson(),
        'whenRange': whenRange?.toJson(),
      };

  @override
  RiskAssessmentPrediction copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? outcome,
    num? probabilityDecimal,
    Range? probabilityRange,
    CodeableConcept? qualitativeRisk,
    String? rationale,
    num? relativeRisk,
    Period? whenPeriod,
    Range? whenRange,
  }) {
    return RiskAssessmentPrediction(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      outcome: outcome ?? this.outcome,
      probabilityDecimal: probabilityDecimal ?? this.probabilityDecimal,
      probabilityRange: probabilityRange ?? this.probabilityRange,
      qualitativeRisk: qualitativeRisk ?? this.qualitativeRisk,
      rationale: rationale ?? this.rationale,
      relativeRisk: relativeRisk ?? this.relativeRisk,
      whenPeriod: whenPeriod ?? this.whenPeriod,
      whenRange: whenRange ?? this.whenRange,
    );
  }
}
