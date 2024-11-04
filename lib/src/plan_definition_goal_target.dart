part of '../fhir_dart.dart';

/// Target outcome for the goal
/// Indicates what should be done and within what timeframe.
class PlanDefinitionGoalTarget extends BackboneElement implements FhirResource {
  /// The target value to be achieved
  /// The target value of the measure to be achieved to signify fulfillment of the goal, e.g. 150 pounds or 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any value at or above the low value.
  final CodeableConcept? detailCodeableConcept;

  /// The target value to be achieved
  /// The target value of the measure to be achieved to signify fulfillment of the goal, e.g. 150 pounds or 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any value at or above the low value.
  final Quantity? detailQuantity;

  /// The target value to be achieved
  /// The target value of the measure to be achieved to signify fulfillment of the goal, e.g. 150 pounds or 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any value at or above the low value.
  final Range? detailRange;

  /// Reach goal within
  /// Indicates the timeframe after the start of the goal in which the goal should be met.
  final Duration? due;

  /// The parameter whose value is to be tracked, e.g. body weight, blood pressure, or hemoglobin A1c level.
  final CodeableConcept? measure;
  PlanDefinitionGoalTarget({
    this.detailCodeableConcept,
    this.detailQuantity,
    this.detailRange,
    this.due,
    super.fhirExtension,
    super.id,
    this.measure,
    super.modifierExtension,
  });

  @override
  factory PlanDefinitionGoalTarget.fromJson(Map<String, dynamic> json) {
    return PlanDefinitionGoalTarget(
      detailCodeableConcept: json['detailCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['detailCodeableConcept'] as Map<String, dynamic>)
          : null,
      detailQuantity: json['detailQuantity'] != null
          ? Quantity.fromJson(json['detailQuantity'] as Map<String, dynamic>)
          : null,
      detailRange: json['detailRange'] != null
          ? Range.fromJson(json['detailRange'] as Map<String, dynamic>)
          : null,
      due: json['due'] != null
          ? Duration.fromJson(json['due'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      measure: json['measure'] != null
          ? CodeableConcept.fromJson(json['measure'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'detailCodeableConcept': detailCodeableConcept?.toJson(),
        'detailQuantity': detailQuantity?.toJson(),
        'detailRange': detailRange?.toJson(),
        'due': due?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'measure': measure?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  PlanDefinitionGoalTarget copyWith({
    CodeableConcept? detailCodeableConcept,
    Quantity? detailQuantity,
    Range? detailRange,
    Duration? due,
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? measure,
    List<Extension>? modifierExtension,
  }) {
    return PlanDefinitionGoalTarget(
      detailCodeableConcept:
          detailCodeableConcept ?? this.detailCodeableConcept,
      detailQuantity: detailQuantity ?? this.detailQuantity,
      detailRange: detailRange ?? this.detailRange,
      due: due ?? this.due,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      measure: measure ?? this.measure,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
