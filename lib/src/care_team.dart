part of '../fhir_dart.dart';

/// The Care Team includes all the people and organizations who plan to participate in the coordination and delivery of care for a patient.
class CareTeam extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'CareTeam';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Type of team
  /// Identifies what kind of team.  This is to support differentiation between multiple co-existing teams, such as care plan team, episode of care team, longitudinal care team.
  /// There may be multiple axis of categorization and one team may serve multiple purposes.
  final List<CodeableConcept>? category;

  /// Encounter created as part of
  /// The Encounter during which this CareTeam was created or to which the creation of this record is tightly associated.
  /// This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter.
  final Reference? encounter;

  /// External Ids for this team
  /// Business identifiers assigned to this care team by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
  /// This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number.
  final List<Identifier>? identifier;

  /// Organization responsible for the care team
  /// The organization responsible for the care team.
  final List<Reference>? managingOrganization;

  /// Name of the team, such as crisis assessment team
  /// A label for human use intended to distinguish like teams.  E.g. the "red" vs. "green" trauma teams.
  /// The meaning/purpose of the team is conveyed in CareTeam.category.  This element may also convey semantics of the team (e.g. "Red trauma team"), but its primary purpose is to distinguish between identical teams in a human-friendly way.  ("Team 18735" isn't as friendly.).
  final String? name;

  /// Comments made about the CareTeam.
  final List<Annotation>? note;

  /// Members of the team
  /// Identifies all people and organizations who are expected to be involved in the care team.
  final List<CareTeamParticipant>? participant;

  /// Time period team covers
  /// Indicates when the team did (or is intended to) come into effect and end.
  final Period? period;

  /// Why the care team exists
  /// Describes why the care team exists.
  final List<CodeableConcept>? reasonCode;

  /// Why the care team exists
  /// Condition(s) that this care team addresses.
  final List<Reference>? reasonReference;

  /// Indicates the current state of the care team.
  /// This element is labeled as a modifier because the status contains the code entered-in-error that marks the care team as not currently valid.
  final String?
      status; // Possible values: 'proposed', 'active', 'suspended', 'inactive', 'entered-in-error'
  /// Who care team is for
  /// Identifies the patient or group whose intended care is handled by the team.
  final Reference? subject;

  /// A contact detail for the care team (that applies to all members)
  /// A central contact detail for the care team (that applies to all members).
  /// The ContactPoint.use code of home is not appropriate to use. These contacts are not the contact details of individual care team members.
  final List<ContactPoint>? telecom;
  CareTeam({
    this.category,
    super.contained,
    this.encounter,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.managingOrganization,
    super.meta,
    super.modifierExtension,
    this.name,
    this.note,
    this.participant,
    this.period,
    this.reasonCode,
    this.reasonReference,
    this.status,
    this.subject,
    this.telecom,
    super.text,
  });

  @override
  factory CareTeam.fromJson(Map<String, dynamic> json) {
    return CareTeam(
      category: (json['category'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              (json['encounter'] as Map).cast<String, dynamic>())
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
      managingOrganization: (json['managingOrganization'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      participant: (json['participant'] as List<dynamic>?)
          ?.map((e) =>
              CareTeamParticipant.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      period: json['period'] != null
          ? Period.fromJson((json['period'] as Map).cast<String, dynamic>())
          : null,
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String?,
      subject: json['subject'] != null
          ? Reference.fromJson((json['subject'] as Map).cast<String, dynamic>())
          : null,
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map(
              (e) => ContactPoint.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'category': category?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'encounter': encounter?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'managingOrganization':
            managingOrganization?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'note': note?.map((e) => e.toJson()).toList(),
        'participant': participant?.map((e) => e.toJson()).toList(),
        'period': period?.toJson(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'status': status,
        'subject': subject?.toJson(),
        'telecom': telecom?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  CareTeam copyWith({
    List<CodeableConcept>? category,
    List<Resource>? contained,
    Reference? encounter,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    List<Reference>? managingOrganization,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    List<Annotation>? note,
    List<CareTeamParticipant>? participant,
    Period? period,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    String? status,
    Reference? subject,
    List<ContactPoint>? telecom,
    Narrative? text,
  }) {
    return CareTeam(
      category: category ?? this.category,
      contained: contained ?? this.contained,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      note: note ?? this.note,
      participant: participant ?? this.participant,
      period: period ?? this.period,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      telecom: telecom ?? this.telecom,
      text: text ?? this.text,
    );
  }
}
