part of '../fhir_dart.dart';

/// Describes the intention of how one or more practitioners intend to deliver care for a particular patient, group or community for a period of time, possibly limited to care for a specific condition or set of conditions.
class CarePlan extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'CarePlan';

  /// Action to occur as part of plan
  /// Identifies a planned action to occur as part of the plan.  For example, a medication to be used, lab tests to perform, self-monitoring, education, etc.
  final List<CarePlanActivity>? activity;

  /// Health issues this plan addresses
  /// Identifies the conditions/problems/concerns/diagnoses/etc. whose management and/or mitigation are handled by this plan.
  /// When the diagnosis is related to an allergy or intolerance, the Condition and AllergyIntolerance resources can both be used. However, to be actionable for decision support, using Condition alone is not sufficient as the allergy or intolerance condition needs to be represented as an AllergyIntolerance.
  final List<Reference>? addresses;

  /// Who is the designated responsible party
  /// When populated, the author is responsible for the care plan.  The care plan is attributed to the author.
  /// The author may also be a contributor.  For example, an organization can be an author, but not listed as a contributor.
  final Reference? author;

  /// Fulfills CarePlan
  /// A care plan that is fulfilled in whole or in part by this care plan.
  final List<Reference>? basedOn;

  /// Who's involved in plan?
  /// Identifies all people and organizations who are expected to be involved in the care envisioned by this plan.
  final List<Reference>? careTeam;

  /// Type of plan
  /// Identifies what "kind" of plan this is to support differentiation between multiple co-existing plans; e.g. "Home health", "psychiatric", "asthma", "disease management", "wellness plan", etc.
  /// There may be multiple axes of categorization and one plan may serve multiple purposes.  In some cases, this may be redundant with references to CarePlan.concern.
  final List<CodeableConcept>? category;

  /// Who provided the content of the care plan
  /// Identifies the individual(s) or organization who provided the contents of the care plan.
  /// Collaborative care plans may have multiple contributors.
  final List<Reference>? contributor;

  /// Date record was first recorded
  /// Represents when this particular CarePlan record was created in the system, which is often a system-generated date.
  final String? created;

  /// Summary of nature of plan
  /// A description of the scope and nature of the plan.
  final String? description;

  /// Encounter created as part of
  /// The Encounter during which this CarePlan was created or to which the creation of this record is tightly associated.
  /// This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter. CarePlan activities conducted as a result of the care plan may well occur as part of other encounters.
  final Reference? encounter;

  /// Desired outcome of plan
  /// Describes the intended objective(s) of carrying out the care plan.
  /// Goal can be achieving a particular change or merely maintaining a current state or even slowing a decline.
  final List<Reference>? goal;

  /// External Ids for this plan
  /// Business identifiers assigned to this care plan by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
  /// This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number.
  final List<Identifier>? identifier;

  /// Instantiates FHIR protocol or definition
  /// The URL pointing to a FHIR-defined protocol, guideline, questionnaire or other definition that is adhered to in whole or in part by this CarePlan.
  final List<String>? instantiatesCanonical;

  /// Instantiates external protocol or definition
  /// The URL pointing to an externally maintained protocol, guideline, questionnaire or other definition that is adhered to in whole or in part by this CarePlan.
  /// This might be an HTML page, PDF, etc. or could just be a non-resolvable URI identifier.
  final List<String>? instantiatesUri;

  /// Indicates the level of authority/intentionality associated with the care plan and where the care plan fits into the workflow chain.
  /// This element is labeled as a modifier because the intent alters when and how the resource is actually applicable.
  final String intent; // Possible values: 'proposal', 'plan', 'order', 'option'
  /// Comments about the plan
  /// General notes about the care plan not covered elsewhere.
  final List<Annotation>? note;

  /// Part of referenced CarePlan
  /// A larger care plan of which this particular care plan is a component or step.
  /// Each care plan is an independent request, such that having a care plan be part of another care plan can cause issues with cascading statuses.  As such, this element is still being discussed.
  final List<Reference>? partOf;

  /// Time period plan covers
  /// Indicates when the plan did (or is intended to) come into effect and end.
  /// Any activities scheduled as part of the plan should be constrained to the specified period regardless of whether the activities are planned within a single encounter/episode or across multiple encounters/episodes (e.g. the longitudinal management of a chronic condition).
  final Period? period;

  /// CarePlan replaced by this CarePlan
  /// Completed or terminated care plan whose function is taken by this new care plan.
  /// The replacement could be because the initial care plan was immediately rejected (due to an issue) or because the previous care plan was completed, but the need for the action described by the care plan remains ongoing.
  final List<Reference>? replaces;

  /// Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical record.
  /// The unknown code is not to be used to convey other statuses.  The unknown code should be used when one of the statuses applies, but the authoring system doesn't know the current state of the care plan.
  /// This element is labeled as a modifier because the status contains the code entered-in-error that marks the plan as not currently valid.
  final String
      status; // Possible values: 'draft', 'active', 'on-hold', 'revoked', 'completed', 'entered-in-error', 'unknown'
  /// Who the care plan is for
  /// Identifies the patient or group whose intended care is described by the plan.
  final Reference subject;

  /// Information considered as part of plan
  /// Identifies portions of the patient's record that specifically influenced the formation of the plan.  These might include comorbidities, recent procedures, limitations, recent assessments, etc.
  /// Use "concern" to identify specific conditions addressed by the care plan.
  final List<Reference>? supportingInfo;

  /// Human-friendly name for the care plan.
  final String? title;
  CarePlan({
    this.activity,
    this.addresses,
    this.author,
    this.basedOn,
    this.careTeam,
    this.category,
    super.contained,
    this.contributor,
    this.created,
    this.description,
    this.encounter,
    super.fhirExtension,
    this.goal,
    super.id,
    this.identifier,
    super.implicitRules,
    this.instantiatesCanonical,
    this.instantiatesUri,
    required this.intent,
    super.language,
    super.meta,
    super.modifierExtension,
    this.note,
    this.partOf,
    this.period,
    this.replaces,
    required this.status,
    required this.subject,
    this.supportingInfo,
    super.text,
    this.title,
  });

  @override
  factory CarePlan.fromJson(Map<String, dynamic> json) {
    return CarePlan(
      activity: (json['activity'] as List<dynamic>?)
          ?.map((e) => CarePlanActivity.fromJson(e as Map<String, dynamic>))
          .toList(),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      author: json['author'] != null
          ? Reference.fromJson(json['author'] as Map<String, dynamic>)
          : null,
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      contributor: (json['contributor'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: json['created'] as String?,
      description: json['description'] as String?,
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      goal: (json['goal'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      instantiatesCanonical: (json['instantiatesCanonical'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      instantiatesUri: (json['instantiatesUri'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      intent: json['intent'] as String,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      replaces: (json['replaces'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      subject: Reference.fromJson(json['subject'] as Map<String, dynamic>),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      title: json['title'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'activity': activity?.map((e) => e.toJson()).toList(),
        'addresses': addresses?.map((e) => e.toJson()).toList(),
        'author': author?.toJson(),
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'careTeam': careTeam?.map((e) => e.toJson()).toList(),
        'category': category?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'contributor': contributor?.map((e) => e.toJson()).toList(),
        'created': created,
        'description': description,
        'encounter': encounter?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'goal': goal?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'instantiatesCanonical': instantiatesCanonical?.map((e) => e).toList(),
        'instantiatesUri': instantiatesUri?.map((e) => e).toList(),
        'intent': intent,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'partOf': partOf?.map((e) => e.toJson()).toList(),
        'period': period?.toJson(),
        'replaces': replaces?.map((e) => e.toJson()).toList(),
        'status': status,
        'subject': subject.toJson(),
        'supportingInfo': supportingInfo?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'title': title,
      };

  @override
  CarePlan copyWith({
    List<CarePlanActivity>? activity,
    List<Reference>? addresses,
    Reference? author,
    List<Reference>? basedOn,
    List<Reference>? careTeam,
    List<CodeableConcept>? category,
    List<Resource>? contained,
    List<Reference>? contributor,
    String? created,
    String? description,
    Reference? encounter,
    List<Extension>? fhirExtension,
    List<Reference>? goal,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<String>? instantiatesCanonical,
    List<String>? instantiatesUri,
    String? intent,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    List<Reference>? partOf,
    Period? period,
    List<Reference>? replaces,
    String? status,
    Reference? subject,
    List<Reference>? supportingInfo,
    Narrative? text,
    String? title,
  }) {
    return CarePlan(
      activity: activity ?? this.activity,
      addresses: addresses ?? this.addresses,
      author: author ?? this.author,
      basedOn: basedOn ?? this.basedOn,
      careTeam: careTeam ?? this.careTeam,
      category: category ?? this.category,
      contained: contained ?? this.contained,
      contributor: contributor ?? this.contributor,
      created: created ?? this.created,
      description: description ?? this.description,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      goal: goal ?? this.goal,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      intent: intent ?? this.intent,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      partOf: partOf ?? this.partOf,
      period: period ?? this.period,
      replaces: replaces ?? this.replaces,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      text: text ?? this.text,
      title: title ?? this.title,
    );
  }
}
