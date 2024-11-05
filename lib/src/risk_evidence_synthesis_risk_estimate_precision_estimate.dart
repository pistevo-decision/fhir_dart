part of '../fhir_dart.dart';

/// How precise the estimate is
/// A description of the precision of the estimate for the effect.
class RiskEvidenceSynthesisRiskEstimatePrecisionEstimate extends BackboneElement
    implements FhirResource {
  /// Lower bound of confidence interval.
  final num? from;

  /// Level of confidence interval
  /// Use 95 for a 95% confidence interval.
  final num? level;

  /// Upper bound of confidence interval.
  final num? to;

  /// Type of precision estimate
  /// Examples include confidence interval and interquartile range.
  final CodeableConcept? type;
  RiskEvidenceSynthesisRiskEstimatePrecisionEstimate({
    super.fhirExtension,
    this.from,
    super.id,
    this.level,
    super.modifierExtension,
    this.to,
    this.type,
  });

  @override
  factory RiskEvidenceSynthesisRiskEstimatePrecisionEstimate.fromJson(
      Map<String, dynamic> json) {
    return RiskEvidenceSynthesisRiskEstimatePrecisionEstimate(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      from: json['from'] as num?,
      id: json['id'] as String?,
      level: json['level'] as num?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      to: json['to'] as num?,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'from': from,
        'id': id,
        'level': level,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'to': to,
        'type': type?.toJson(),
      };

  @override
  RiskEvidenceSynthesisRiskEstimatePrecisionEstimate copyWith({
    List<Extension>? fhirExtension,
    num? from,
    String? id,
    num? level,
    List<Extension>? modifierExtension,
    num? to,
    CodeableConcept? type,
  }) {
    return RiskEvidenceSynthesisRiskEstimatePrecisionEstimate(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      from: from ?? this.from,
      id: id ?? this.id,
      level: level ?? this.level,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      to: to ?? this.to,
      type: type ?? this.type,
    );
  }
}
