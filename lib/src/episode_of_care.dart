part of '../fhir_dart.dart';

/// An association between a patient and an organization / healthcare provider(s) during which time encounters may occur. The managing organization assumes a level of responsibility for the patient during this time.
class EpisodeOfCare extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'EpisodeOfCare';

  /// The set of accounts that may be used for billing for this EpisodeOfCare.
  /// The billing system may choose to allocate billable items associated with the EpisodeOfCare to different referenced Accounts based on internal business rules.
  final List<Reference>? account;

  /// Care manager/care coordinator for the patient
  /// The practitioner that is the care manager/care coordinator for this patient.
  final Reference? careManager;

  /// The list of diagnosis relevant to this episode of care.
  final List<EpisodeOfCareDiagnosis>? diagnosis;

  /// Business Identifier(s) relevant for this EpisodeOfCare
  /// The EpisodeOfCare may be known by different identifiers for different contexts of use, such as when an external agency is tracking the Episode for funding purposes.
  final List<Identifier>? identifier;

  /// Organization that assumes care
  /// The organization that has assumed the specific responsibilities for the specified duration.
  final Reference? managingOrganization;

  /// The patient who is the focus of this episode of care.
  final Reference patient;

  /// Interval during responsibility is assumed
  /// The interval during which the managing organization assumes the defined responsibility.
  final Period? period;

  /// Originating Referral Request(s)
  /// Referral Request(s) that are fulfilled by this EpisodeOfCare, incoming referrals.
  final List<Reference>? referralRequest;

  /// planned | waitlist | active | onhold | finished | cancelled.
  /// This element is labeled as a modifier because the status contains codes that mark the episode as not currently valid.
  final String
      status; // Possible values: 'planned', 'waitlist', 'active', 'onhold', 'finished', 'cancelled', 'entered-in-error'
  /// Past list of status codes (the current status may be included to cover the start date of the status)
  /// The history of statuses that the EpisodeOfCare has been through (without requiring processing the history of the resource).
  final List<EpisodeOfCareStatusHistory>? statusHistory;

  /// Other practitioners facilitating this episode of care
  /// The list of practitioners that may be facilitating this episode of care for specific purposes.
  final List<Reference>? team;

  /// Type/class  - e.g. specialist referral, disease management
  /// A classification of the type of episode of care; e.g. specialist referral, disease management, type of funded care.
  /// The type can be very important in processing as this could be used in determining if the EpisodeOfCare is relevant to specific government reporting, or other types of classifications.
  final List<CodeableConcept>? type;
  EpisodeOfCare({
    this.account,
    this.careManager,
    super.contained,
    this.diagnosis,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.managingOrganization,
    super.meta,
    super.modifierExtension,
    required this.patient,
    this.period,
    this.referralRequest,
    required this.status,
    this.statusHistory,
    this.team,
    super.text,
    this.type,
  });

  @override
  factory EpisodeOfCare.fromJson(Map<String, dynamic> json) {
    return EpisodeOfCare(
      account: (json['account'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      careManager: json['careManager'] != null
          ? Reference.fromJson(json['careManager'] as Map<String, dynamic>)
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map(
              (e) => EpisodeOfCareDiagnosis.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      managingOrganization: json['managingOrganization'] != null
          ? Reference.fromJson(
              json['managingOrganization'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      referralRequest: (json['referralRequest'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      statusHistory: (json['statusHistory'] as List<dynamic>?)
          ?.map((e) =>
              EpisodeOfCareStatusHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      team: (json['team'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'account': account?.map((e) => e.toJson()).toList(),
        'careManager': careManager?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'diagnosis': diagnosis?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'managingOrganization': managingOrganization?.toJson(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'patient': patient.toJson(),
        'period': period?.toJson(),
        'referralRequest': referralRequest?.map((e) => e.toJson()).toList(),
        'status': status,
        'statusHistory': statusHistory?.map((e) => e.toJson()).toList(),
        'team': team?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'type': type?.map((e) => e.toJson()).toList(),
      };

  @override
  EpisodeOfCare copyWith({
    List<Reference>? account,
    Reference? careManager,
    List<Resource>? contained,
    List<EpisodeOfCareDiagnosis>? diagnosis,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Reference? managingOrganization,
    Meta? meta,
    List<Extension>? modifierExtension,
    Reference? patient,
    Period? period,
    List<Reference>? referralRequest,
    String? status,
    List<EpisodeOfCareStatusHistory>? statusHistory,
    List<Reference>? team,
    Narrative? text,
    List<CodeableConcept>? type,
  }) {
    return EpisodeOfCare(
      account: account ?? this.account,
      careManager: careManager ?? this.careManager,
      contained: contained ?? this.contained,
      diagnosis: diagnosis ?? this.diagnosis,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      patient: patient ?? this.patient,
      period: period ?? this.period,
      referralRequest: referralRequest ?? this.referralRequest,
      status: status ?? this.status,
      statusHistory: statusHistory ?? this.statusHistory,
      team: team ?? this.team,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
