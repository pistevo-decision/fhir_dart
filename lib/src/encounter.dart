part of '../fhir_dart.dart';

/// An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient.
class Encounter extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Encounter';

  /// The set of accounts that may be used for billing for this Encounter.
  /// The billing system may choose to allocate billable items associated with the Encounter to different referenced Accounts based on internal business rules.
  final List<Reference>? account;

  /// The appointment that scheduled this encounter.
  final List<Reference>? appointment;

  /// The ServiceRequest that initiated this encounter
  /// The request this encounter satisfies (e.g. incoming referral or procedure request).
  final List<Reference>? basedOn;

  /// Classification of patient encounter
  /// Concepts representing classification of patient encounter such as ambulatory (outpatient), inpatient, emergency, home health or others due to local variations.
  final Coding fhirClass;

  /// List of past encounter classes
  /// The class history permits the tracking of the encounters transitions without needing to go  through the resource history.  This would be used for a case where an admission starts of as an emergency encounter, then transitions into an inpatient scenario. Doing this and not restarting a new encounter ensures that any lab/diagnostic results can more easily follow the patient and not require re-processing and not get lost or cancelled during a kind of discharge from emergency to inpatient.
  final List<EncounterClassHistory>? classHistory;

  /// The list of diagnosis relevant to this encounter.
  final List<EncounterDiagnosis>? diagnosis;

  /// Episode(s) of care that this encounter should be recorded against
  /// Where a specific encounter should be classified as a part of a specific episode(s) of care this field should be used. This association can facilitate grouping of related encounters together for a specific purpose, such as government reporting, issue tracking, association via a common problem.  The association is recorded on the encounter as these are typically created after the episode of care and grouped on entry rather than editing the episode of care to append another encounter to it (the episode of care could span years).
  final List<Reference>? episodeOfCare;

  /// Details about the admission to a healthcare service.
  /// An Encounter may cover more than just the inpatient stay. Contexts such as outpatients, community clinics, and aged care facilities are also included.
  /// The duration recorded in the period of this encounter covers the entire scope of this hospitalization record.
  final EncounterHospitalization? hospitalization;

  /// Identifier(s) by which this encounter is known.
  final List<Identifier>? identifier;

  /// Quantity of time the encounter lasted (less time absent)
  /// Quantity of time the encounter lasted. This excludes the time during leaves of absence.
  /// May differ from the time the Encounter.period lasted because of leave of absence.
  final Duration? length;

  /// List of locations where the patient has been
  /// List of locations where  the patient has been during this encounter.
  /// Virtual encounters can be recorded in the Encounter by specifying a location reference to a location of type "kind" such as "client's home" and an encounter.class = "virtual".
  final List<EncounterLocation>? location;

  /// List of participants involved in the encounter
  /// The list of people responsible for providing the service.
  final List<EncounterParticipant>? participant;

  /// Another Encounter this encounter is part of
  /// Another Encounter of which this encounter is a part of (administratively or in time).
  /// This is also used for associating a child's encounter back to the mother's encounter.
  /// Refer to the Notes section in the Patient resource for further details.
  final Reference? partOf;

  /// The start and end time of the encounter.
  /// If not (yet) known, the end of the Period may be omitted.
  final Period? period;

  /// Indicates the urgency of the encounter.
  final CodeableConcept? priority;

  /// Coded reason the encounter takes place
  /// Reason the encounter takes place, expressed as a code. For admissions, this can be used for a coded admission diagnosis.
  /// For systems that need to know which was the primary diagnosis, these will be marked with the standard extension primaryDiagnosis (which is a sequence value rather than a flag, 1 = primary diagnosis).
  final List<CodeableConcept>? reasonCode;

  /// Reason the encounter takes place (reference)
  /// Reason the encounter takes place, expressed as a code. For admissions, this can be used for a coded admission diagnosis.
  /// For systems that need to know which was the primary diagnosis, these will be marked with the standard extension primaryDiagnosis (which is a sequence value rather than a flag, 1 = primary diagnosis).
  final List<Reference>? reasonReference;

  /// The organization (facility) responsible for this encounter
  /// The organization that is primarily responsible for this Encounter's services. This MAY be the same as the organization on the Patient record, however it could be different, such as if the actor performing the services was from an external organization (which may be billed seperately) for an external consultation.  Refer to the example bundle showing an abbreviated set of Encounters for a colonoscopy.
  final Reference? serviceProvider;

  /// Specific type of service
  /// Broad categorization of the service that is to be provided (e.g. cardiology).
  final CodeableConcept? serviceType;

  /// planned | arrived | triaged | in-progress | onleave | finished | cancelled +.
  /// Note that internal business rules will determine the appropriate transitions that may occur between statuses (and also classes).
  final String
      status; // Possible values: 'planned', 'arrived', 'triaged', 'in-progress', 'onleave', 'finished', 'cancelled', 'entered-in-error', 'unknown'
  /// List of past encounter statuses
  /// The status history permits the encounter resource to contain the status history without needing to read through the historical versions of the resource, or even have the server store them.
  /// The current status is always found in the current version of the resource, not the status history.
  final List<EncounterStatusHistory>? statusHistory;

  /// The patient or group present at the encounter.
  /// While the encounter is always about the patient, the patient might not actually be known in all contexts of use, and there may be a group of patients that could be anonymous (such as in a group therapy for Alcoholics Anonymous - where the recording of the encounter could be used for billing on the number of people/staff and not important to the context of the specific patients) or alternately in veterinary care a herd of sheep receiving treatment (where the animals are not individually tracked).
  final Reference? subject;

  /// Specific type of encounter (e.g. e-mail consultation, surgical day-care, skilled nursing, rehabilitation).
  /// Since there are many ways to further classify encounters, this element is 0..*.
  final List<CodeableConcept>? type;
  Encounter({
    this.account,
    this.appointment,
    this.basedOn,
    required this.fhirClass,
    this.classHistory,
    super.contained,
    this.diagnosis,
    this.episodeOfCare,
    super.fhirExtension,
    this.hospitalization,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.length,
    this.location,
    super.meta,
    super.modifierExtension,
    this.participant,
    this.partOf,
    this.period,
    this.priority,
    this.reasonCode,
    this.reasonReference,
    this.serviceProvider,
    this.serviceType,
    required this.status,
    this.statusHistory,
    this.subject,
    super.text,
    this.type,
  });

  @override
  factory Encounter.fromJson(Map<String, dynamic> json) {
    return Encounter(
      account: (json['account'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      appointment: (json['appointment'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirClass: Coding.fromJson(json['class'] as Map<String, dynamic>),
      classHistory: (json['classHistory'] as List<dynamic>?)
          ?.map(
              (e) => EncounterClassHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map((e) => EncounterDiagnosis.fromJson(e as Map<String, dynamic>))
          .toList(),
      episodeOfCare: (json['episodeOfCare'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      hospitalization: json['hospitalization'] != null
          ? EncounterHospitalization.fromJson(
              json['hospitalization'] as Map<String, dynamic>)
          : null,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      length: json['length'] != null
          ? Duration.fromJson(json['length'] as Map<String, dynamic>)
          : null,
      location: (json['location'] as List<dynamic>?)
          ?.map((e) => EncounterLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      participant: (json['participant'] as List<dynamic>?)
          ?.map((e) => EncounterParticipant.fromJson(e as Map<String, dynamic>))
          .toList(),
      partOf: json['partOf'] != null
          ? Reference.fromJson(json['partOf'] as Map<String, dynamic>)
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      priority: json['priority'] != null
          ? CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>)
          : null,
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceProvider: json['serviceProvider'] != null
          ? Reference.fromJson(json['serviceProvider'] as Map<String, dynamic>)
          : null,
      serviceType: json['serviceType'] != null
          ? CodeableConcept.fromJson(
              json['serviceType'] as Map<String, dynamic>)
          : null,
      status: json['status'] as String,
      statusHistory: (json['statusHistory'] as List<dynamic>?)
          ?.map(
              (e) => EncounterStatusHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
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
        'appointment': appointment?.map((e) => e.toJson()).toList(),
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'class': fhirClass.toJson(),
        'classHistory': classHistory?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'diagnosis': diagnosis?.map((e) => e.toJson()).toList(),
        'episodeOfCare': episodeOfCare?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'hospitalization': hospitalization?.toJson(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'length': length?.toJson(),
        'location': location?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'participant': participant?.map((e) => e.toJson()).toList(),
        'partOf': partOf?.toJson(),
        'period': period?.toJson(),
        'priority': priority?.toJson(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'serviceProvider': serviceProvider?.toJson(),
        'serviceType': serviceType?.toJson(),
        'status': status,
        'statusHistory': statusHistory?.map((e) => e.toJson()).toList(),
        'subject': subject?.toJson(),
        'text': text?.toJson(),
        'type': type?.map((e) => e.toJson()).toList(),
      };

  @override
  Encounter copyWith({
    List<Reference>? account,
    List<Reference>? appointment,
    List<Reference>? basedOn,
    Coding? fhirClass,
    List<EncounterClassHistory>? classHistory,
    List<Resource>? contained,
    List<EncounterDiagnosis>? diagnosis,
    List<Reference>? episodeOfCare,
    List<Extension>? fhirExtension,
    EncounterHospitalization? hospitalization,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Duration? length,
    List<EncounterLocation>? location,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<EncounterParticipant>? participant,
    Reference? partOf,
    Period? period,
    CodeableConcept? priority,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    Reference? serviceProvider,
    CodeableConcept? serviceType,
    String? status,
    List<EncounterStatusHistory>? statusHistory,
    Reference? subject,
    Narrative? text,
    List<CodeableConcept>? type,
  }) {
    return Encounter(
      account: account ?? this.account,
      appointment: appointment ?? this.appointment,
      basedOn: basedOn ?? this.basedOn,
      fhirClass: fhirClass ?? this.fhirClass,
      classHistory: classHistory ?? this.classHistory,
      contained: contained ?? this.contained,
      diagnosis: diagnosis ?? this.diagnosis,
      episodeOfCare: episodeOfCare ?? this.episodeOfCare,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      hospitalization: hospitalization ?? this.hospitalization,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      length: length ?? this.length,
      location: location ?? this.location,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      participant: participant ?? this.participant,
      partOf: partOf ?? this.partOf,
      period: period ?? this.period,
      priority: priority ?? this.priority,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      serviceProvider: serviceProvider ?? this.serviceProvider,
      serviceType: serviceType ?? this.serviceType,
      status: status ?? this.status,
      statusHistory: statusHistory ?? this.statusHistory,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
