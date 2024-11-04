part of '../fhir_dart.dart';

/// Some parties may be duplicated between the target resource and its provenance.  For instance, the prescriber is usually (but not always) the author of the prescription resource. This resource is defined with close consideration for W3C Provenance.
/// Provenance of a resource is a record that describes entities and processes involved in producing and delivering or otherwise influencing that resource. Provenance provides a critical foundation for assessing authenticity, enabling trust, and allowing reproducibility. Provenance assertions are a form of contextual metadata and can themselves become important records with their own provenance. Provenance statement indicates clinical significance in terms of confidence in authenticity, reliability, and trustworthiness, integrity, and stage in lifecycle (e.g. Document Completion - has the artifact been legally authenticated), all of which may impact security, privacy, and trust policies.
class Provenance extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Provenance';

  /// Activity that occurred
  /// An activity is something that occurs over a period of time and acts upon or with entities; it may include consuming, processing, transforming, modifying, relocating, using, or generating entities.
  final CodeableConcept? activity;

  /// Actor involved
  /// An actor taking a role in an activity  for which it can be assigned some degree of responsibility for the activity taking place.
  /// Several agents may be associated (i.e. has some responsibility for an activity) with an activity and vice-versa.
  final List<ProvenanceAgent> agent;

  /// An entity used in this activity.
  final List<ProvenanceEntity>? entity;

  /// Where the activity occurred, if relevant.
  final Reference? location;

  /// When the activity occurred
  /// The period during which the activity occurred.
  /// The period can be a little arbitrary; where possible, the time should correspond to human assessment of the activity time.
  final String? occurredDateTime;

  /// When the activity occurred
  /// The period during which the activity occurred.
  /// The period can be a little arbitrary; where possible, the time should correspond to human assessment of the activity time.
  final Period? occurredPeriod;

  /// Policy or plan the activity was defined by. Typically, a single activity may have multiple applicable policy documents, such as patient consent, guarantor funding, etc.
  /// For example: Where an OAuth token authorizes, the unique identifier from the OAuth token is placed into the policy element Where a policy engine (e.g. XACML) holds policy logic, the unique policy identifier is placed into the policy element.
  final List<String>? policy;

  /// Reason the activity is occurring
  /// The reason that the activity was taking place.
  final List<CodeableConcept>? reason;

  /// When the activity was recorded / updated
  /// The instant of time at which the activity was recorded.
  /// This can be a little different from the time stamp on the resource if there is a delay between recording the event and updating the provenance and target resource.
  final String recorded;

  /// Signature on target
  /// A digital signature on the target Reference(s). The signer should match a Provenance.agent. The purpose of the signature is indicated.
  final List<Signature>? signature;

  /// Target Reference(s) (usually version specific)
  /// The Reference(s) that were generated or updated by  the activity described in this resource. A provenance can point to more than one target if multiple resources were created/updated by the same activity.
  /// Target references are usually version specific, but might not be, if a version has not been assigned or if the provenance information is part of the set of resources being maintained (i.e. a document). When using the RESTful API, the identity of the resource might not be known (especially not the version specific one); the client may either submit the resource first, and then the provenance, or it may submit both using a single transaction. See the notes on transaction for further discussion.
  final List<Reference> target;
  Provenance({
    this.activity,
    required this.agent,
    super.contained,
    this.entity,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    super.language,
    this.location,
    super.meta,
    super.modifierExtension,
    this.occurredDateTime,
    this.occurredPeriod,
    this.policy,
    this.reason,
    required this.recorded,
    this.signature,
    required this.target,
    super.text,
  });

  @override
  factory Provenance.fromJson(Map<String, dynamic> json) {
    return Provenance(
      activity: json['activity'] != null
          ? CodeableConcept.fromJson(json['activity'] as Map<String, dynamic>)
          : null,
      agent: (json['agent'] as List<dynamic>)
          .map((e) => ProvenanceAgent.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      entity: (json['entity'] as List<dynamic>?)
          ?.map((e) => ProvenanceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      location: json['location'] != null
          ? Reference.fromJson(json['location'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      occurredDateTime: json['occurredDateTime'] as String?,
      occurredPeriod: json['occurredPeriod'] != null
          ? Period.fromJson(json['occurredPeriod'] as Map<String, dynamic>)
          : null,
      policy:
          (json['policy'] as List<dynamic>?)?.map((e) => e as String).toList(),
      reason: (json['reason'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      recorded: json['recorded'] as String,
      signature: (json['signature'] as List<dynamic>?)
          ?.map((e) => Signature.fromJson(e as Map<String, dynamic>))
          .toList(),
      target: (json['target'] as List<dynamic>)
          .map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'activity': activity?.toJson(),
        'agent': agent.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'entity': entity?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'implicitRules': implicitRules,
        'language': language,
        'location': location?.toJson(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'occurredDateTime': occurredDateTime,
        'occurredPeriod': occurredPeriod?.toJson(),
        'policy': policy?.map((e) => e).toList(),
        'reason': reason?.map((e) => e.toJson()).toList(),
        'recorded': recorded,
        'signature': signature?.map((e) => e.toJson()).toList(),
        'target': target.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  Provenance copyWith({
    CodeableConcept? activity,
    List<ProvenanceAgent>? agent,
    List<Resource>? contained,
    List<ProvenanceEntity>? entity,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    String? language,
    Reference? location,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? occurredDateTime,
    Period? occurredPeriod,
    List<String>? policy,
    List<CodeableConcept>? reason,
    String? recorded,
    List<Signature>? signature,
    List<Reference>? target,
    Narrative? text,
  }) {
    return Provenance(
      activity: activity ?? this.activity,
      agent: agent ?? this.agent,
      contained: contained ?? this.contained,
      entity: entity ?? this.entity,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      location: location ?? this.location,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      occurredDateTime: occurredDateTime ?? this.occurredDateTime,
      occurredPeriod: occurredPeriod ?? this.occurredPeriod,
      policy: policy ?? this.policy,
      reason: reason ?? this.reason,
      recorded: recorded ?? this.recorded,
      signature: signature ?? this.signature,
      target: target ?? this.target,
      text: text ?? this.text,
    );
  }
}
