part of '../fhir_dart.dart';

/// Specific costs
/// Costs associated with the coverage provided by the product.
class InsurancePlanPlanSpecificCost extends BackboneElement
    implements FhirResource {
  /// Benefits list
  /// List of the specific benefits under this category of benefit.
  final List<InsurancePlanPlanSpecificCostBenefit>? benefit;

  /// General category of benefit (Medical; Dental; Vision; Drug; Mental Health; Substance Abuse; Hospice, Home Health).
  final CodeableConcept category;
  InsurancePlanPlanSpecificCost({
    this.benefit,
    required this.category,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory InsurancePlanPlanSpecificCost.fromJson(Map<String, dynamic> json) {
    return InsurancePlanPlanSpecificCost(
      benefit: (json['benefit'] as List<dynamic>?)
          ?.map((e) => InsurancePlanPlanSpecificCostBenefit.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      category: CodeableConcept.fromJson(
          (json['category'] as Map).cast<String, dynamic>()),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'benefit': benefit?.map((e) => e.toJson()).toList(),
        'category': category.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  InsurancePlanPlanSpecificCost copyWith({
    List<InsurancePlanPlanSpecificCostBenefit>? benefit,
    CodeableConcept? category,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return InsurancePlanPlanSpecificCost(
      benefit: benefit ?? this.benefit,
      category: category ?? this.category,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
