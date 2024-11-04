part of '../fhir_dart.dart';

/// What was the result per exposure?
/// A description of the results for each exposure considered in the effect estimate.
class EffectEvidenceSynthesisResultsByExposure extends BackboneElement
    implements FhirResource {
  /// Description of results by exposure
  /// Human-readable summary of results by exposure state.
  final String? description;

  /// exposure | exposure-alternative
  /// Whether these results are for the exposure state or alternative exposure state.
  final String?
      exposureState; // Possible values: 'exposure', 'exposure-alternative'
  /// Risk evidence synthesis
  /// Reference to a RiskEvidenceSynthesis resource.
  final Reference riskEvidenceSynthesis;

  /// Variant exposure states
  /// Used to define variant exposure states such as low-risk state.
  final CodeableConcept? variantState;
  EffectEvidenceSynthesisResultsByExposure({
    this.description,
    this.exposureState,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.riskEvidenceSynthesis,
    this.variantState,
  });

  @override
  factory EffectEvidenceSynthesisResultsByExposure.fromJson(
      Map<String, dynamic> json) {
    return EffectEvidenceSynthesisResultsByExposure(
      description: json['description'] as String?,
      exposureState: json['exposureState'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      riskEvidenceSynthesis: Reference.fromJson(
          json['riskEvidenceSynthesis'] as Map<String, dynamic>),
      variantState: json['variantState'] != null
          ? CodeableConcept.fromJson(
              json['variantState'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'exposureState': exposureState,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'riskEvidenceSynthesis': riskEvidenceSynthesis.toJson(),
        'variantState': variantState?.toJson(),
      };

  @override
  EffectEvidenceSynthesisResultsByExposure copyWith({
    String? description,
    String? exposureState,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? riskEvidenceSynthesis,
    CodeableConcept? variantState,
  }) {
    return EffectEvidenceSynthesisResultsByExposure(
      description: description ?? this.description,
      exposureState: exposureState ?? this.exposureState,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      riskEvidenceSynthesis:
          riskEvidenceSynthesis ?? this.riskEvidenceSynthesis,
      variantState: variantState ?? this.variantState,
    );
  }
}
