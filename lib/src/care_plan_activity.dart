part of '../fhir_dart.dart';

/// Action to occur as part of plan
/// Identifies a planned action to occur as part of the plan.  For example, a medication to be used, lab tests to perform, self-monitoring, education, etc.
class CarePlanActivity extends BackboneElement implements FhirResource {
  /// In-line definition of activity
  /// A simple summary of a planned activity suitable for a general care plan system (e.g. form driven) that doesn't know about specific resources such as procedure etc.
  final CarePlanActivityDetail? detail;

  /// Results of the activity
  /// Identifies the outcome at the point when the status of the activity is assessed.  For example, the outcome of an education activity could be patient understands (or not).
  /// Note that this should not duplicate the activity status (e.g. completed or in progress).
  final List<CodeableConcept>? outcomeCodeableConcept;

  /// Appointment, Encounter, Procedure, etc.
  /// Details of the outcome or action resulting from the activity.  The reference to an "event" resource, such as Procedure or Encounter or Observation, is the result/outcome of the activity itself.  The activity can be conveyed using CarePlan.activity.detail OR using the CarePlan.activity.reference (a reference to a “request” resource).
  /// The activity outcome is independent of the outcome of the related goal(s).  For example, if the goal is to achieve a target body weight of 150 lbs and an activity is defined to diet, then the activity outcome could be calories consumed whereas the goal outcome is an observation for the actual body weight measured.
  final List<Reference>? outcomeReference;

  /// Comments about the activity status/progress
  /// Notes about the adherence/status/progress of the activity.
  /// This element should NOT be used to describe the activity to be performed - that occurs either within the resource pointed to by activity.detail.reference or in activity.detail.description.
  final List<Annotation>? progress;

  /// Activity details defined in specific resource
  /// The details of the proposed activity represented in a specific resource.
  /// Standard extension exists ([resource-pertainsToGoal](extension-resource-pertainstogoal.html)) that allows goals to be referenced from any of the referenced resources in CarePlan.activity.reference.
  /// The goal should be visible when the resource referenced by CarePlan.activity.reference is viewed independently from the CarePlan.  Requests that are pointed to by a CarePlan using this element should *not* point to this CarePlan using the "basedOn" element.  i.e. Requests that are part of a CarePlan are not "based on" the CarePlan.
  final Reference? reference;
  CarePlanActivity({
    this.detail,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.outcomeCodeableConcept,
    this.outcomeReference,
    this.progress,
    this.reference,
  });

  @override
  factory CarePlanActivity.fromJson(Map<String, dynamic> json) {
    return CarePlanActivity(
      detail: json['detail'] != null
          ? CarePlanActivityDetail.fromJson(
              json['detail'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      outcomeCodeableConcept: (json['outcomeCodeableConcept'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      outcomeReference: (json['outcomeReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      progress: (json['progress'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList(),
      reference: json['reference'] != null
          ? Reference.fromJson(json['reference'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'detail': detail?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'outcomeCodeableConcept':
            outcomeCodeableConcept?.map((e) => e.toJson()).toList(),
        'outcomeReference': outcomeReference?.map((e) => e.toJson()).toList(),
        'progress': progress?.map((e) => e.toJson()).toList(),
        'reference': reference?.toJson(),
      };

  @override
  CarePlanActivity copyWith({
    CarePlanActivityDetail? detail,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<CodeableConcept>? outcomeCodeableConcept,
    List<Reference>? outcomeReference,
    List<Annotation>? progress,
    Reference? reference,
  }) {
    return CarePlanActivity(
      detail: detail ?? this.detail,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      outcomeCodeableConcept:
          outcomeCodeableConcept ?? this.outcomeCodeableConcept,
      outcomeReference: outcomeReference ?? this.outcomeReference,
      progress: progress ?? this.progress,
      reference: reference ?? this.reference,
    );
  }
}
