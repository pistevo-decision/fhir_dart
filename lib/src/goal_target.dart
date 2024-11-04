part of '../fhir_dart.dart';

 /// Target outcome for the goal
 /// Indicates what should be done by when.
 /// When multiple targets are present for a single goal instance, all targets must be met for the overall goal to be met.
class GoalTarget extends BackboneElement implements FhirResource {
   /// The target value to be achieved
   /// The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
   /// A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Goal.target.measure defines a coded value.
  final bool? detailBoolean;
   /// The target value to be achieved
   /// The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
   /// A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Goal.target.measure defines a coded value.
  final CodeableConcept? detailCodeableConcept;
   /// The target value to be achieved
   /// The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
   /// A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Goal.target.measure defines a coded value.
  final int? detailInteger;
   /// The target value to be achieved
   /// The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
   /// A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Goal.target.measure defines a coded value.
  final Quantity? detailQuantity;
   /// The target value to be achieved
   /// The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
   /// A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Goal.target.measure defines a coded value.
  final Range? detailRange;
   /// The target value to be achieved
   /// The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
   /// A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Goal.target.measure defines a coded value.
  final Ratio? detailRatio;
   /// The target value to be achieved
   /// The target value of the focus to be achieved to signify the fulfillment of the goal, e.g. 150 pounds, 7.0%. Either the high or low or both values of the range can be specified. When a low value is missing, it indicates that the goal is achieved at any focus value at or below the high value. Similarly, if the high value is missing, it indicates that the goal is achieved at any focus value at or above the low value.
   /// A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Goal.target.measure defines a coded value.
  final String? detailString;
   /// Reach goal on or before
   /// Indicates either the date or the duration after start by which the goal should be met.
  final String? dueDate;
   /// Reach goal on or before
   /// Indicates either the date or the duration after start by which the goal should be met.
  final Duration? dueDuration;
   /// The parameter whose value is being tracked, e.g. body weight, blood pressure, or hemoglobin A1c level.
  final CodeableConcept? measure;
  GoalTarget({
    this.detailBoolean,
    this.detailCodeableConcept,
    this.detailInteger,
    this.detailQuantity,
    this.detailRange,
    this.detailRatio,
    this.detailString,
    this.dueDate,
    this.dueDuration,
    super.fhirExtension,
    super.id,
    this.measure,
    super.modifierExtension,
  });
  
  @override
  factory GoalTarget.fromJson(Map<String, dynamic> json) {
    return GoalTarget(
      detailBoolean: json['detailBoolean'] as bool?,
      detailCodeableConcept: json['detailCodeableConcept'] != null ? CodeableConcept.fromJson(json['detailCodeableConcept'] as Map<String, dynamic>) : null,
      detailInteger: json['detailInteger'] as int?,
      detailQuantity: json['detailQuantity'] != null ? Quantity.fromJson(json['detailQuantity'] as Map<String, dynamic>) : null,
      detailRange: json['detailRange'] != null ? Range.fromJson(json['detailRange'] as Map<String, dynamic>) : null,
      detailRatio: json['detailRatio'] != null ? Ratio.fromJson(json['detailRatio'] as Map<String, dynamic>) : null,
      detailString: json['detailString'] as String?,
      dueDate: json['dueDate'] as String?,
      dueDuration: json['dueDuration'] != null ? Duration.fromJson(json['dueDuration'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      measure: json['measure'] != null ? CodeableConcept.fromJson(json['measure'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'detailBoolean': detailBoolean,
      'detailCodeableConcept': detailCodeableConcept?.toJson(),
      'detailInteger': detailInteger,
      'detailQuantity': detailQuantity?.toJson(),
      'detailRange': detailRange?.toJson(),
      'detailRatio': detailRatio?.toJson(),
      'detailString': detailString,
      'dueDate': dueDate,
      'dueDuration': dueDuration?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'measure': measure?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  GoalTarget copyWith({
    bool? detailBoolean,
    CodeableConcept? detailCodeableConcept,
    int? detailInteger,
    Quantity? detailQuantity,
    Range? detailRange,
    Ratio? detailRatio,
    String? detailString,
    String? dueDate,
    Duration? dueDuration,
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? measure,
    List<Extension>? modifierExtension,
  }) {
    return GoalTarget(
      detailBoolean: detailBoolean ?? this.detailBoolean,
      detailCodeableConcept: detailCodeableConcept ?? this.detailCodeableConcept,
      detailInteger: detailInteger ?? this.detailInteger,
      detailQuantity: detailQuantity ?? this.detailQuantity,
      detailRange: detailRange ?? this.detailRange,
      detailRatio: detailRatio ?? this.detailRatio,
      detailString: detailString ?? this.detailString,
      dueDate: dueDate ?? this.dueDate,
      dueDuration: dueDuration ?? this.dueDuration,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      measure: measure ?? this.measure,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
