part of '../fhir_dart.dart';

/// Benefits list
/// List of the specific benefits under this category of benefit.
class InsurancePlanPlanSpecificCostBenefit extends BackboneElement
    implements FhirResource {
  /// List of the costs associated with a specific benefit.
  final List<InsurancePlanPlanSpecificCostBenefitCost>? cost;

  /// Type of specific benefit (preventative; primary care office visit; speciality office visit; hospitalization; emergency room; urgent care).
  final CodeableConcept type;
  InsurancePlanPlanSpecificCostBenefit({
    this.cost,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.type,
  });

  @override
  factory InsurancePlanPlanSpecificCostBenefit.fromJson(
      Map<String, dynamic> json) {
    return InsurancePlanPlanSpecificCostBenefit(
      cost: (json['cost'] as List<dynamic>?)
          ?.map((e) => InsurancePlanPlanSpecificCostBenefitCost.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: CodeableConcept.fromJson(
          (json['type'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'cost': cost?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type.toJson(),
      };

  @override
  InsurancePlanPlanSpecificCostBenefit copyWith({
    List<InsurancePlanPlanSpecificCostBenefitCost>? cost,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
  }) {
    return InsurancePlanPlanSpecificCostBenefit(
      cost: cost ?? this.cost,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
    );
  }
}
