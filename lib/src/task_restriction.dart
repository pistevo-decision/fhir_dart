part of '../fhir_dart.dart';

 /// Constraints on fulfillment tasks
 /// If the Task.focus is a request resource and the task is seeking fulfillment (i.e. is asking for the request to be actioned), this element identifies any limitations on what parts of the referenced request should be actioned.
class TaskRestriction extends BackboneElement implements FhirResource {
   /// When fulfillment sought
   /// Over what time-period is fulfillment sought.
   /// Note that period.high is the due date representing the time by which the task should be completed.
  final Period? period;
   /// For whom is fulfillment sought?
   /// For requests that are targeted to more than on potential recipient/target, for whom is fulfillment sought?
  final List<Reference>? recipient;
   /// How many times to repeat
   /// Indicates the number of times the requested action should occur.
  final int? repetitions;
  TaskRestriction({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.period,
    this.recipient,
    this.repetitions,
  });
  
  @override
  factory TaskRestriction.fromJson(Map<String, dynamic> json) {
    return TaskRestriction(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      period: json['period'] != null ? Period.fromJson(json['period'] as Map<String, dynamic>) : null,
      recipient: (json['recipient'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      repetitions: json['repetitions'] as int?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'period': period?.toJson(),
      'recipient': recipient?.map((e) => e.toJson()).toList(),
      'repetitions': repetitions,
    };
  
  @override
  TaskRestriction copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Period? period,
    List<Reference>? recipient,
    int? repetitions,
  }) {
    return TaskRestriction(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      recipient: recipient ?? this.recipient,
      repetitions: repetitions ?? this.repetitions,
    );
  }
}
