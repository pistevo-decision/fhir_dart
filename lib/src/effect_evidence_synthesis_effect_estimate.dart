part of '../fhir_dart.dart';

/// What was the estimated effect
/// The estimated effect of the exposure variant.
class EffectEvidenceSynthesisEffectEstimate extends BackboneElement
    implements FhirResource {
  /// Description of effect estimate
  /// Human-readable summary of effect estimate.
  final String? description;

  /// How precise the estimate is
  /// A description of the precision of the estimate for the effect.
  final List<EffectEvidenceSynthesisEffectEstimatePrecisionEstimate>?
      precisionEstimate;

  /// Type of efffect estimate
  /// Examples include relative risk and mean difference.
  final CodeableConcept? type;

  /// What unit is the outcome described in?
  /// Specifies the UCUM unit for the outcome.
  final CodeableConcept? unitOfMeasure;

  /// Point estimate
  /// The point estimate of the effect estimate.
  final num? value;

  /// Variant exposure states
  /// Used to define variant exposure states such as low-risk state.
  final CodeableConcept? variantState;
  EffectEvidenceSynthesisEffectEstimate({
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.precisionEstimate,
    this.type,
    this.unitOfMeasure,
    this.value,
    this.variantState,
  });

  @override
  factory EffectEvidenceSynthesisEffectEstimate.fromJson(
      Map<String, dynamic> json) {
    return EffectEvidenceSynthesisEffectEstimate(
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      precisionEstimate: (json['precisionEstimate'] as List<dynamic>?)
          ?.map((e) =>
              EffectEvidenceSynthesisEffectEstimatePrecisionEstimate.fromJson(
                  (e as Map).cast<String, dynamic>()))
          .toList(),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
      unitOfMeasure: json['unitOfMeasure'] != null
          ? CodeableConcept.fromJson(
              (json['unitOfMeasure'] as Map).cast<String, dynamic>())
          : null,
      value: json['value'] as num?,
      variantState: json['variantState'] != null
          ? CodeableConcept.fromJson(
              (json['variantState'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'precisionEstimate': precisionEstimate?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
        'unitOfMeasure': unitOfMeasure?.toJson(),
        'value': value,
        'variantState': variantState?.toJson(),
      };

  @override
  EffectEvidenceSynthesisEffectEstimate copyWith({
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<EffectEvidenceSynthesisEffectEstimatePrecisionEstimate>?
        precisionEstimate,
    CodeableConcept? type,
    CodeableConcept? unitOfMeasure,
    num? value,
    CodeableConcept? variantState,
  }) {
    return EffectEvidenceSynthesisEffectEstimate(
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      precisionEstimate: precisionEstimate ?? this.precisionEstimate,
      type: type ?? this.type,
      unitOfMeasure: unitOfMeasure ?? this.unitOfMeasure,
      value: value ?? this.value,
      variantState: variantState ?? this.variantState,
    );
  }
}
