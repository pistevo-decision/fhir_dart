part of '../fhir_dart.dart';

/// Overall costs associated with the plan.
class InsurancePlanPlanGeneralCost extends BackboneElement
    implements FhirResource {
  /// Additional cost information
  /// Additional information about the general costs associated with this plan.
  final String? comment;

  /// Cost value
  /// Value of the cost.
  final Money? cost;

  /// Number of enrollees
  /// Number of participants enrolled in the plan.
  final int? groupSize;

  /// Type of cost.
  final CodeableConcept? type;
  InsurancePlanPlanGeneralCost({
    this.comment,
    this.cost,
    super.fhirExtension,
    this.groupSize,
    super.id,
    super.modifierExtension,
    this.type,
  });

  @override
  factory InsurancePlanPlanGeneralCost.fromJson(Map<String, dynamic> json) {
    return InsurancePlanPlanGeneralCost(
      comment: json['comment'] as String?,
      cost: json['cost'] != null
          ? Money.fromJson(json['cost'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupSize: json['groupSize'] as int?,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'comment': comment,
        'cost': cost?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'groupSize': groupSize,
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
      };

  @override
  InsurancePlanPlanGeneralCost copyWith({
    String? comment,
    Money? cost,
    List<Extension>? fhirExtension,
    int? groupSize,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
  }) {
    return InsurancePlanPlanGeneralCost(
      comment: comment ?? this.comment,
      cost: cost ?? this.cost,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      groupSize: groupSize ?? this.groupSize,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
    );
  }
}
