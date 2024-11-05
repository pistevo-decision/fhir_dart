part of '../fhir_dart.dart';

/// Goal can be achieving a particular change or merely maintaining a current state or even slowing a decline.
/// Describes the intended objective(s) for a patient, group or organization care, for example, weight loss, restoring an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
class Goal extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Goal';

  /// in-progress | improving | worsening | no-change | achieved | sustaining | not-achieved | no-progress | not-attainable
  /// Describes the progression, or lack thereof, towards the goal against the target.
  final CodeableConcept? achievementStatus;

  /// Issues addressed by this goal
  /// The identified conditions and other health record elements that are intended to be addressed by the goal.
  final List<Reference>? addresses;

  /// E.g. Treatment, dietary, behavioral, etc.
  /// Indicates a category the goal falls within.
  final List<CodeableConcept>? category;

  /// Code or text describing goal
  /// Human-readable and/or coded description of a specific desired objective of care, such as "control blood pressure" or "negotiate an obstacle course" or "dance with child at wedding".
  /// If no code is available, use CodeableConcept.text.
  final CodeableConcept description;

  /// Who's responsible for creating Goal?
  /// Indicates whose goal this is - patient goal, practitioner goal, etc.
  /// This is the individual responsible for establishing the goal, not necessarily who recorded it.  (For that, use the Provenance resource.).
  final Reference? expressedBy;

  /// External Ids for this goal
  /// Business identifiers assigned to this goal by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
  /// This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number.
  final List<Identifier>? identifier;

  /// The state of the goal throughout its lifecycle.
  /// This element is labeled as a modifier because the lifecycleStatus contains codes that mark the resource as not currently valid.
  final String
      lifecycleStatus; // Possible values: 'proposed', 'planned', 'accepted', 'active', 'on-hold', 'completed', 'cancelled', 'entered-in-error', 'rejected'
  /// Comments about the goal
  /// Any comments related to the goal.
  /// May be used for progress notes, concerns or other related information that doesn't actually describe the goal itself.
  final List<Annotation>? note;

  /// What result was achieved regarding the goal?
  /// Identifies the change (or lack of change) at the point when the status of the goal is assessed.
  /// Note that this should not duplicate the goal status.
  final List<CodeableConcept>? outcomeCode;

  /// Observation that resulted from goal
  /// Details of what's changed (or not changed).
  /// The goal outcome is independent of the outcome of the related activities.  For example, if the Goal is to achieve a target body weight of 150 lb and a care plan activity is defined to diet, then the care plan’s activity outcome could be calories consumed whereas goal outcome is an observation for the actual body weight measured.
  final List<Reference>? outcomeReference;

  /// high-priority | medium-priority | low-priority
  /// Identifies the mutually agreed level of importance associated with reaching/sustaining the goal.
  /// Extensions are available to track priorities as established by each participant (i.e. Priority from the patient's perspective, different practitioners' perspectives, family member's perspectives)
  /// The ordinal extension on Coding can be used to convey a numerically comparable ranking to priority.  (Keep in mind that different coding systems may use a "low value=important".
  final CodeableConcept? priority;

  /// When goal pursuit begins
  /// The date or event after which the goal should begin being pursued.
  final CodeableConcept? startCodeableConcept;

  /// When goal pursuit begins
  /// The date or event after which the goal should begin being pursued.
  final String? startDate;

  /// When goal status took effect
  /// Identifies when the current status.  I.e. When initially created, when achieved, when cancelled, etc.
  /// To see the date for past statuses, query history.
  final String? statusDate;

  /// Reason for current status
  /// Captures the reason for the current status.
  /// This will typically be captured for statuses such as rejected, on-hold or cancelled, but could be present for others.
  final String? statusReason;

  /// Who this goal is intended for
  /// Identifies the patient, group or organization for whom the goal is being established.
  final Reference subject;

  /// Target outcome for the goal
  /// Indicates what should be done by when.
  /// When multiple targets are present for a single goal instance, all targets must be met for the overall goal to be met.
  final List<GoalTarget>? target;
  Goal({
    this.achievementStatus,
    this.addresses,
    this.category,
    super.contained,
    required this.description,
    this.expressedBy,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    required this.lifecycleStatus,
    super.meta,
    super.modifierExtension,
    this.note,
    this.outcomeCode,
    this.outcomeReference,
    this.priority,
    this.startCodeableConcept,
    this.startDate,
    this.statusDate,
    this.statusReason,
    required this.subject,
    this.target,
    super.text,
  });

  @override
  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(
      achievementStatus: json['achievementStatus'] != null
          ? CodeableConcept.fromJson(
              (json['achievementStatus'] as Map).cast<String, dynamic>())
          : null,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      description: CodeableConcept.fromJson(
          (json['description'] as Map).cast<String, dynamic>()),
      expressedBy: json['expressedBy'] != null
          ? Reference.fromJson(
              (json['expressedBy'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      lifecycleStatus: json['lifecycleStatus'] as String,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      outcomeCode: (json['outcomeCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      outcomeReference: (json['outcomeReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      priority: json['priority'] != null
          ? CodeableConcept.fromJson(
              (json['priority'] as Map).cast<String, dynamic>())
          : null,
      startCodeableConcept: json['startCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['startCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      startDate: json['startDate'] as String?,
      statusDate: json['statusDate'] as String?,
      statusReason: json['statusReason'] as String?,
      subject:
          Reference.fromJson((json['subject'] as Map).cast<String, dynamic>()),
      target: (json['target'] as List<dynamic>?)
          ?.map((e) => GoalTarget.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'achievementStatus': achievementStatus?.toJson(),
        'addresses': addresses?.map((e) => e.toJson()).toList(),
        'category': category?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'description': description.toJson(),
        'expressedBy': expressedBy?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'lifecycleStatus': lifecycleStatus,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'outcomeCode': outcomeCode?.map((e) => e.toJson()).toList(),
        'outcomeReference': outcomeReference?.map((e) => e.toJson()).toList(),
        'priority': priority?.toJson(),
        'startCodeableConcept': startCodeableConcept?.toJson(),
        'startDate': startDate,
        'statusDate': statusDate,
        'statusReason': statusReason,
        'subject': subject.toJson(),
        'target': target?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  Goal copyWith({
    CodeableConcept? achievementStatus,
    List<Reference>? addresses,
    List<CodeableConcept>? category,
    List<Resource>? contained,
    CodeableConcept? description,
    Reference? expressedBy,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    String? lifecycleStatus,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    List<CodeableConcept>? outcomeCode,
    List<Reference>? outcomeReference,
    CodeableConcept? priority,
    CodeableConcept? startCodeableConcept,
    String? startDate,
    String? statusDate,
    String? statusReason,
    Reference? subject,
    List<GoalTarget>? target,
    Narrative? text,
  }) {
    return Goal(
      achievementStatus: achievementStatus ?? this.achievementStatus,
      addresses: addresses ?? this.addresses,
      category: category ?? this.category,
      contained: contained ?? this.contained,
      description: description ?? this.description,
      expressedBy: expressedBy ?? this.expressedBy,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      lifecycleStatus: lifecycleStatus ?? this.lifecycleStatus,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      outcomeCode: outcomeCode ?? this.outcomeCode,
      outcomeReference: outcomeReference ?? this.outcomeReference,
      priority: priority ?? this.priority,
      startCodeableConcept: startCodeableConcept ?? this.startCodeableConcept,
      startDate: startDate ?? this.startDate,
      statusDate: statusDate ?? this.statusDate,
      statusReason: statusReason ?? this.statusReason,
      subject: subject ?? this.subject,
      target: target ?? this.target,
      text: text ?? this.text,
    );
  }
}
