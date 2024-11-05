part of '../fhir_dart.dart';

/// Plan details
/// Details about an insurance plan.
class InsurancePlanPlan extends BackboneElement implements FhirResource {
  /// Where product applies
  /// The geographic region in which a health insurance plan's benefits apply.
  final List<Reference>? coverageArea;

  /// Overall costs associated with the plan.
  final List<InsurancePlanPlanGeneralCost>? generalCost;

  /// Business Identifier for Product
  /// Business identifiers assigned to this health insurance plan which remain constant as the resource is updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// What networks provide coverage
  /// Reference to the network that providing the type of coverage.
  /// Networks are represented as a hierarchy of organization resources.
  final List<Reference>? network;

  /// Specific costs
  /// Costs associated with the coverage provided by the product.
  final List<InsurancePlanPlanSpecificCost>? specificCost;

  /// Type of plan. For example, "Platinum" or "High Deductable".
  final CodeableConcept? type;
  InsurancePlanPlan({
    this.coverageArea,
    super.fhirExtension,
    this.generalCost,
    super.id,
    this.identifier,
    super.modifierExtension,
    this.network,
    this.specificCost,
    this.type,
  });

  @override
  factory InsurancePlanPlan.fromJson(Map<String, dynamic> json) {
    return InsurancePlanPlan(
      coverageArea: (json['coverageArea'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      generalCost: (json['generalCost'] as List<dynamic>?)
          ?.map((e) => InsurancePlanPlanGeneralCost.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      network: (json['network'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      specificCost: (json['specificCost'] as List<dynamic>?)
          ?.map((e) => InsurancePlanPlanSpecificCost.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'coverageArea': coverageArea?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'generalCost': generalCost?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'network': network?.map((e) => e.toJson()).toList(),
        'specificCost': specificCost?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
      };

  @override
  InsurancePlanPlan copyWith({
    List<Reference>? coverageArea,
    List<Extension>? fhirExtension,
    List<InsurancePlanPlanGeneralCost>? generalCost,
    String? id,
    List<Identifier>? identifier,
    List<Extension>? modifierExtension,
    List<Reference>? network,
    List<InsurancePlanPlanSpecificCost>? specificCost,
    CodeableConcept? type,
  }) {
    return InsurancePlanPlan(
      coverageArea: coverageArea ?? this.coverageArea,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      generalCost: generalCost ?? this.generalCost,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      network: network ?? this.network,
      specificCost: specificCost ?? this.specificCost,
      type: type ?? this.type,
    );
  }
}
