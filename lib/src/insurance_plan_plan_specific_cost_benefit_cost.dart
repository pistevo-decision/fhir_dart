part of '../fhir_dart.dart';

/// List of the costs associated with a specific benefit.
class InsurancePlanPlanSpecificCostBenefitCost extends BackboneElement
    implements FhirResource {
  /// in-network | out-of-network | other
  /// Whether the cost applies to in-network or out-of-network providers (in-network; out-of-network; other).
  final CodeableConcept? applicability;

  /// Additional information about the cost, such as information about funding sources (e.g. HSA, HRA, FSA, RRA).
  final List<CodeableConcept>? qualifiers;

  /// Type of cost (copay; individual cap; family cap; coinsurance; deductible).
  final CodeableConcept type;

  /// The actual cost value. (some of the costs may be represented as percentages rather than currency, e.g. 10% coinsurance).
  final Quantity? value;
  InsurancePlanPlanSpecificCostBenefitCost({
    this.applicability,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.qualifiers,
    required this.type,
    this.value,
  });

  @override
  factory InsurancePlanPlanSpecificCostBenefitCost.fromJson(
      Map<String, dynamic> json) {
    return InsurancePlanPlanSpecificCostBenefitCost(
      applicability: json['applicability'] != null
          ? CodeableConcept.fromJson(
              json['applicability'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      qualifiers: (json['qualifiers'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      value: json['value'] != null
          ? Quantity.fromJson(json['value'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'applicability': applicability?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'qualifiers': qualifiers?.map((e) => e.toJson()).toList(),
        'type': type.toJson(),
        'value': value?.toJson(),
      };

  @override
  InsurancePlanPlanSpecificCostBenefitCost copyWith({
    CodeableConcept? applicability,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<CodeableConcept>? qualifiers,
    CodeableConcept? type,
    Quantity? value,
  }) {
    return InsurancePlanPlanSpecificCostBenefitCost(
      applicability: applicability ?? this.applicability,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      qualifiers: qualifiers ?? this.qualifiers,
      type: type ?? this.type,
      value: value ?? this.value,
    );
  }
}
