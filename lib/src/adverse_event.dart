part of '../fhir_dart.dart';

 /// Actual or  potential/avoided event causing unintended physical injury resulting from or contributed to by medical care, a research study or other healthcare setting factors that requires additional monitoring, treatment, or hospitalization, or that results in death.
class AdverseEvent extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'AdverseEvent';
   /// actual | potential
   /// Whether the event actually happened, or just had the potential to. Note that this is independent of whether anyone was affected or harmed or how severely.
  final String actuality; // Possible values: 'actual', 'potential'
   /// product-problem | product-quality | product-use-error | wrong-dose | incorrect-prescribing-information | wrong-technique | wrong-route-of-administration | wrong-rate | wrong-duration | wrong-time | expired-drug | medical-device-use-error | problem-different-manufacturer | unsafe-physical-environment
   /// The overall type of event, intended for search and filtering purposes.
  final List<CodeableConcept>? category;
   /// Who  was involved in the adverse event or the potential adverse event
   /// Parties that may or should contribute or have contributed information to the adverse event, which can consist of one or more activities.  Such information includes information leading to the decision to perform the activity and how to perform the activity (e.g. consultant), information that the activity itself seeks to reveal (e.g. informant of clinical history), or information about what activity was performed (e.g. informant witness).
  final List<Reference>? contributor;
   /// When the event occurred
   /// The date (and perhaps time) when the adverse event occurred.
  final String? date;
   /// When the event was detected
   /// Estimated or actual date the AdverseEvent began, in the opinion of the reporter.
  final String? detected;
   /// Encounter created as part of
   /// The Encounter during which AdverseEvent was created or to which the creation of this record is tightly associated.
   /// This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter.  For example, if a medication administration was considered an adverse event because it resulted in a rash, then the encounter when the medication administration was given is the context.  If the patient reports the AdverseEvent during a second encounter, that second encounter is not the context.
  final Reference? encounter;
   /// Type of the event itself in relation to the subject
   /// This element defines the specific type of event that occurred or that was prevented from occurring.
  final CodeableConcept? event;
   /// Business identifier for the event
   /// Business identifiers assigned to this adverse event by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
   /// This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number.
  final Identifier? identifier;
   /// Location where adverse event occurred
   /// The information about where the adverse event occurred.
  final Reference? location;
   /// resolved | recovering | ongoing | resolvedWithSequelae | fatal | unknown
   /// Describes the type of outcome from the adverse event.
  final CodeableConcept? outcome;
   /// When the event was recorded
   /// The date on which the existence of the AdverseEvent was first recorded.
   /// The recordedDate represents the date when this particular AdverseEvent record was created in the system, not the date of the most recent update.  The date of the last record modification can be retrieved from the resource metadata.
  final String? recordedDate;
   /// Who recorded the adverse event
   /// Information on who recorded the adverse event.  May be the patient or a practitioner.
  final Reference? recorder;
   /// AdverseEvent.referenceDocument.
  final List<Reference>? referenceDocument;
   /// Effect on the subject due to this event
   /// Includes information about the reaction that occurred as a result of exposure to a substance (for example, a drug or a chemical).
  final List<Reference>? resultingCondition;
   /// Seriousness of the event
   /// Assessment whether this event was of real importance.
  final CodeableConcept? seriousness;
   /// mild | moderate | severe
   /// Describes the severity of the adverse event, in relation to the subject. Contrast to AdverseEvent.seriousness - a severe rash might not be serious, but a mild heart problem is.
  final CodeableConcept? severity;
   /// AdverseEvent.study.
  final List<Reference>? study;
   /// Subject impacted by event
   /// This subject or group impacted by the event.
   /// If AdverseEvent.resultingCondition differs among members of the group, then use Patient as the subject.
  final Reference subject;
   /// AdverseEvent.subjectMedicalHistory.
  final List<Reference>? subjectMedicalHistory;
   /// The suspected agent causing the adverse event
   /// Describes the entity that is suspected to have caused the adverse event.
  final List<AdverseEventSuspectEntity>? suspectEntity;
  AdverseEvent({
    required this.actuality,
    this.category,
    super.contained,
    this.contributor,
    this.date,
    this.detected,
    this.encounter,
    this.event,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.location,
    super.meta,
    super.modifierExtension,
    this.outcome,
    this.recordedDate,
    this.recorder,
    this.referenceDocument,
    this.resultingCondition,
    this.seriousness,
    this.severity,
    this.study,
    required this.subject,
    this.subjectMedicalHistory,
    this.suspectEntity,
    super.text,
  });
  
  @override
  factory AdverseEvent.fromJson(Map<String, dynamic> json) {
    return AdverseEvent(
      actuality: json['actuality'] as String,
      category: (json['category'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      contributor: (json['contributor'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      date: json['date'] as String?,
      detected: json['detected'] as String?,
      encounter: json['encounter'] != null ? Reference.fromJson(json['encounter'] as Map<String, dynamic>) : null,
      event: json['event'] != null ? CodeableConcept.fromJson(json['event'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>) : null,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      location: json['location'] != null ? Reference.fromJson(json['location'] as Map<String, dynamic>) : null,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      outcome: json['outcome'] != null ? CodeableConcept.fromJson(json['outcome'] as Map<String, dynamic>) : null,
      recordedDate: json['recordedDate'] as String?,
      recorder: json['recorder'] != null ? Reference.fromJson(json['recorder'] as Map<String, dynamic>) : null,
      referenceDocument: (json['referenceDocument'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      resultingCondition: (json['resultingCondition'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      seriousness: json['seriousness'] != null ? CodeableConcept.fromJson(json['seriousness'] as Map<String, dynamic>) : null,
      severity: json['severity'] != null ? CodeableConcept.fromJson(json['severity'] as Map<String, dynamic>) : null,
      study: (json['study'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      subject: Reference.fromJson(json['subject'] as Map<String, dynamic>),
      subjectMedicalHistory: (json['subjectMedicalHistory'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      suspectEntity: (json['suspectEntity'] as List<dynamic>?)?.map((e) => AdverseEventSuspectEntity.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'actuality': actuality,
      'category': category?.map((e) => e.toJson()).toList(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'contributor': contributor?.map((e) => e.toJson()).toList(),
      'date': date,
      'detected': detected,
      'encounter': encounter?.toJson(),
      'event': event?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.toJson(),
      'implicitRules': implicitRules,
      'language': language,
      'location': location?.toJson(),
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'outcome': outcome?.toJson(),
      'recordedDate': recordedDate,
      'recorder': recorder?.toJson(),
      'referenceDocument': referenceDocument?.map((e) => e.toJson()).toList(),
      'resultingCondition': resultingCondition?.map((e) => e.toJson()).toList(),
      'seriousness': seriousness?.toJson(),
      'severity': severity?.toJson(),
      'study': study?.map((e) => e.toJson()).toList(),
      'subject': subject.toJson(),
      'subjectMedicalHistory': subjectMedicalHistory?.map((e) => e.toJson()).toList(),
      'suspectEntity': suspectEntity?.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
    };
  
  @override
  AdverseEvent copyWith({
    String? actuality,
    List<CodeableConcept>? category,
    List<Resource>? contained,
    List<Reference>? contributor,
    String? date,
    String? detected,
    Reference? encounter,
    CodeableConcept? event,
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    String? implicitRules,
    String? language,
    Reference? location,
    Meta? meta,
    List<Extension>? modifierExtension,
    CodeableConcept? outcome,
    String? recordedDate,
    Reference? recorder,
    List<Reference>? referenceDocument,
    List<Reference>? resultingCondition,
    CodeableConcept? seriousness,
    CodeableConcept? severity,
    List<Reference>? study,
    Reference? subject,
    List<Reference>? subjectMedicalHistory,
    List<AdverseEventSuspectEntity>? suspectEntity,
    Narrative? text,
  }) {
    return AdverseEvent(
      actuality: actuality ?? this.actuality,
      category: category ?? this.category,
      contained: contained ?? this.contained,
      contributor: contributor ?? this.contributor,
      date: date ?? this.date,
      detected: detected ?? this.detected,
      encounter: encounter ?? this.encounter,
      event: event ?? this.event,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      location: location ?? this.location,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      outcome: outcome ?? this.outcome,
      recordedDate: recordedDate ?? this.recordedDate,
      recorder: recorder ?? this.recorder,
      referenceDocument: referenceDocument ?? this.referenceDocument,
      resultingCondition: resultingCondition ?? this.resultingCondition,
      seriousness: seriousness ?? this.seriousness,
      severity: severity ?? this.severity,
      study: study ?? this.study,
      subject: subject ?? this.subject,
      subjectMedicalHistory: subjectMedicalHistory ?? this.subjectMedicalHistory,
      suspectEntity: suspectEntity ?? this.suspectEntity,
      text: text ?? this.text,
    );
  }
}
