part of '../fhir_dart.dart';

 /// Based on IHE-ATNA.
 /// A record of an event made for purposes of maintaining a security log. Typical uses include detection of intrusion attempts and monitoring for inappropriate usage.
class AuditEvent extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'AuditEvent';
   /// Type of action performed during the event
   /// Indicator for type of action performed during the event that generated the audit.
  final String? action; // Possible values: 'C', 'R', 'U', 'D', 'E'
   /// Actor involved in the event
   /// An actor taking an active role in the event or activity that is logged.
   /// Several agents may be associated (i.e. have some responsibility for an activity) with an event or activity.
   /// For example, an activity may be initiated by one user for other users or involve more than one user. However, only one user may be the initiator/requestor for the activity.
  final List<AuditEventAgent> agent;
   /// Data or objects used
   /// Specific instances of data or objects that have been accessed.
   /// Required unless the values for event identification, agent identification, and audit source identification are sufficient to document the entire auditable event. Because events may have more than one entity, this group can be a repeating set of values.
  final List<AuditEventEntity>? entity;
   /// Whether the event succeeded or failed
   /// Indicates whether the event succeeded or failed.
   /// In some cases a "success" may be partial, for example, an incomplete or interrupted transfer of a radiological study. For the purpose of establishing accountability, these distinctions are not relevant.
  final String? outcome; // Possible values: '0', '4', '8', '12'
   /// Description of the event outcome
   /// A free text description of the outcome of the event.
  final String? outcomeDesc;
   /// When the activity occurred
   /// The period during which the activity occurred.
   /// The period can be a little arbitrary; where possible, the time should correspond to human assessment of the activity time.
  final Period? period;
   /// The purposeOfUse of the event
   /// The purposeOfUse (reason) that was used during the event being recorded.
   /// Use AuditEvent.agent.purposeOfUse when you know that it is specific to the agent, otherwise use AuditEvent.purposeOfEvent. For example, during a machine-to-machine transfer it might not be obvious to the audit system who caused the event, but it does know why.
  final List<CodeableConcept>? purposeOfEvent;
   /// Time when the event was recorded
   /// The time when the event was recorded.
   /// In a distributed system, some sort of common time base (e.g. an NTP [RFC1305] server) is a good implementation tactic.
  final String recorded;
   /// Audit Event Reporter
   /// The system that is reporting the event.
   /// Since multi-tier, distributed, or composite applications make source identification ambiguous, this collection of fields may repeat for each application or process actively involved in the event. For example, multiple value-sets can identify participating web servers, application processes, and database server threads in an n-tier distributed application. Passive event participants (e.g. low-level network transports) need not be identified.
  final AuditEventSource source;
   /// More specific type/id for the event
   /// Identifier for the category of event.
  final List<Coding>? subtype;
   /// Type/identifier of event
   /// Identifier for a family of the event.  For example, a menu item, program, rule, policy, function code, application name or URL. It identifies the performed function.
  final Coding type;
  AuditEvent({
    this.action,
    required this.agent,
    super.contained,
    this.entity,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.outcome,
    this.outcomeDesc,
    this.period,
    this.purposeOfEvent,
    required this.recorded,
    required this.source,
    this.subtype,
    super.text,
    required this.type,
  });
  
  @override
  factory AuditEvent.fromJson(Map<String, dynamic> json) {
    return AuditEvent(
      action: json['action'] as String?,
      agent: (json['agent'] as List<dynamic>).map((e) => AuditEventAgent.fromJson(e as Map<String, dynamic>)).toList(),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      entity: (json['entity'] as List<dynamic>?)?.map((e) => AuditEventEntity.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      outcome: json['outcome'] as String?,
      outcomeDesc: json['outcomeDesc'] as String?,
      period: json['period'] != null ? Period.fromJson(json['period'] as Map<String, dynamic>) : null,
      purposeOfEvent: (json['purposeOfEvent'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      recorded: json['recorded'] as String,
      source: AuditEventSource.fromJson(json['source'] as Map<String, dynamic>),
      subtype: (json['subtype'] as List<dynamic>?)?.map((e) => Coding.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
      type: Coding.fromJson(json['type'] as Map<String, dynamic>),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'action': action,
      'agent': agent.map((e) => e.toJson()).toList(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'entity': entity?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'implicitRules': implicitRules,
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'outcome': outcome,
      'outcomeDesc': outcomeDesc,
      'period': period?.toJson(),
      'purposeOfEvent': purposeOfEvent?.map((e) => e.toJson()).toList(),
      'recorded': recorded,
      'source': source.toJson(),
      'subtype': subtype?.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
      'type': type.toJson(),
    };
  
  @override
  AuditEvent copyWith({
    String? action,
    List<AuditEventAgent>? agent,
    List<Resource>? contained,
    List<AuditEventEntity>? entity,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? outcome,
    String? outcomeDesc,
    Period? period,
    List<CodeableConcept>? purposeOfEvent,
    String? recorded,
    AuditEventSource? source,
    List<Coding>? subtype,
    Narrative? text,
    Coding? type,
  }) {
    return AuditEvent(
      action: action ?? this.action,
      agent: agent ?? this.agent,
      contained: contained ?? this.contained,
      entity: entity ?? this.entity,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      outcome: outcome ?? this.outcome,
      outcomeDesc: outcomeDesc ?? this.outcomeDesc,
      period: period ?? this.period,
      purposeOfEvent: purposeOfEvent ?? this.purposeOfEvent,
      recorded: recorded ?? this.recorded,
      source: source ?? this.source,
      subtype: subtype ?? this.subtype,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
