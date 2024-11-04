part of '../fhir_dart.dart';

 /// A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern.
class Condition extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'Condition';
   /// When in resolution/remission
   /// The date or estimated date that the condition resolved or went into remission. This is called "abatement" because of the many overloaded connotations associated with "remission" or "resolution" - Conditions are never really resolved, but they can abate.
   /// There is no explicit distinction between resolution and remission because in many cases the distinction is not clear. Age is generally used when the patient reports an age at which the Condition abated.  If there is no abatement element, it is unknown whether the condition has resolved or entered remission; applications and users should generally assume that the condition is still valid.  When abatementString exists, it implies the condition is abated.
  final Age? abatementAge;
   /// When in resolution/remission
   /// The date or estimated date that the condition resolved or went into remission. This is called "abatement" because of the many overloaded connotations associated with "remission" or "resolution" - Conditions are never really resolved, but they can abate.
   /// There is no explicit distinction between resolution and remission because in many cases the distinction is not clear. Age is generally used when the patient reports an age at which the Condition abated.  If there is no abatement element, it is unknown whether the condition has resolved or entered remission; applications and users should generally assume that the condition is still valid.  When abatementString exists, it implies the condition is abated.
  final String? abatementDateTime;
   /// When in resolution/remission
   /// The date or estimated date that the condition resolved or went into remission. This is called "abatement" because of the many overloaded connotations associated with "remission" or "resolution" - Conditions are never really resolved, but they can abate.
   /// There is no explicit distinction between resolution and remission because in many cases the distinction is not clear. Age is generally used when the patient reports an age at which the Condition abated.  If there is no abatement element, it is unknown whether the condition has resolved or entered remission; applications and users should generally assume that the condition is still valid.  When abatementString exists, it implies the condition is abated.
  final Period? abatementPeriod;
   /// When in resolution/remission
   /// The date or estimated date that the condition resolved or went into remission. This is called "abatement" because of the many overloaded connotations associated with "remission" or "resolution" - Conditions are never really resolved, but they can abate.
   /// There is no explicit distinction between resolution and remission because in many cases the distinction is not clear. Age is generally used when the patient reports an age at which the Condition abated.  If there is no abatement element, it is unknown whether the condition has resolved or entered remission; applications and users should generally assume that the condition is still valid.  When abatementString exists, it implies the condition is abated.
  final Range? abatementRange;
   /// When in resolution/remission
   /// The date or estimated date that the condition resolved or went into remission. This is called "abatement" because of the many overloaded connotations associated with "remission" or "resolution" - Conditions are never really resolved, but they can abate.
   /// There is no explicit distinction between resolution and remission because in many cases the distinction is not clear. Age is generally used when the patient reports an age at which the Condition abated.  If there is no abatement element, it is unknown whether the condition has resolved or entered remission; applications and users should generally assume that the condition is still valid.  When abatementString exists, it implies the condition is abated.
  final String? abatementString;
   /// Person who asserts this condition
   /// Individual who is making the condition statement.
  final Reference? asserter;
   /// Anatomical location, if relevant
   /// The anatomical location where this condition manifests itself.
   /// Only used if not implicit in code found in Condition.code. If the use case requires attributes from the BodySite resource (e.g. to identify and track separately) then use the standard extension [bodySite](extension-bodysite.html).  May be a summary code, or a reference to a very precise definition of the location, or both.
  final List<CodeableConcept>? bodySite;
   /// problem-list-item | encounter-diagnosis
   /// A category assigned to the condition.
   /// The categorization is often highly contextual and may appear poorly differentiated or not very useful in other contexts.
  final List<CodeableConcept>? category;
   /// active | recurrence | relapse | inactive | remission | resolved
   /// The clinical status of the condition.
   /// The data type is CodeableConcept because clinicalStatus has some clinical judgment involved, such that there might need to be more specificity than the required FHIR value set allows. For example, a SNOMED coding might allow for additional specificity.
  final CodeableConcept? clinicalStatus;
   /// Identification of the condition, problem or diagnosis.
  final CodeableConcept? code;
   /// Encounter created as part of
   /// The Encounter during which this Condition was created or to which the creation of this record is tightly associated.
   /// This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter. This record indicates the encounter this particular record is associated with.  In the case of a "new" diagnosis reflecting ongoing/revised information about the condition, this might be distinct from the first encounter in which the underlying condition was first "known".
  final Reference? encounter;
   /// Supporting evidence / manifestations that are the basis of the Condition's verification status, such as evidence that confirmed or refuted the condition.
   /// The evidence may be a simple list of coded symptoms/manifestations, or references to observations or formal assessments, or both.
  final List<ConditionEvidence>? evidence;
   /// External Ids for this condition
   /// Business identifiers assigned to this condition by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
   /// This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number.
  final List<Identifier>? identifier;
   /// Additional information about the Condition. This is a general notes/comments entry  for description of the Condition, its diagnosis and prognosis.
  final List<Annotation>? note;
   /// Estimated or actual date,  date-time, or age
   /// Estimated or actual date or date-time  the condition began, in the opinion of the clinician.
   /// Age is generally used when the patient reports an age at which the Condition began to occur.
  final Age? onsetAge;
   /// Estimated or actual date,  date-time, or age
   /// Estimated or actual date or date-time  the condition began, in the opinion of the clinician.
   /// Age is generally used when the patient reports an age at which the Condition began to occur.
  final String? onsetDateTime;
   /// Estimated or actual date,  date-time, or age
   /// Estimated or actual date or date-time  the condition began, in the opinion of the clinician.
   /// Age is generally used when the patient reports an age at which the Condition began to occur.
  final Period? onsetPeriod;
   /// Estimated or actual date,  date-time, or age
   /// Estimated or actual date or date-time  the condition began, in the opinion of the clinician.
   /// Age is generally used when the patient reports an age at which the Condition began to occur.
  final Range? onsetRange;
   /// Estimated or actual date,  date-time, or age
   /// Estimated or actual date or date-time  the condition began, in the opinion of the clinician.
   /// Age is generally used when the patient reports an age at which the Condition began to occur.
  final String? onsetString;
   /// Date record was first recorded
   /// The recordedDate represents when this particular Condition record was created in the system, which is often a system-generated date.
  final String? recordedDate;
   /// Who recorded the condition
   /// Individual who recorded the record and takes responsibility for its content.
  final Reference? recorder;
   /// Subjective severity of condition
   /// A subjective assessment of the severity of the condition as evaluated by the clinician.
   /// Coding of the severity with a terminology is preferred, where possible.
  final CodeableConcept? severity;
   /// Stage/grade, usually assessed formally
   /// Clinical stage or grade of a condition. May include formal severity assessments.
  final List<ConditionStage>? stage;
   /// Who has the condition?
   /// Indicates the patient or group who the condition record is associated with.
  final Reference subject;
   /// unconfirmed | provisional | differential | confirmed | refuted | entered-in-error
   /// The verification status to support the clinical status of the condition.
   /// verificationStatus is not required.  For example, when a patient has abdominal pain in the ED, there is not likely going to be a verification status.
   /// The data type is CodeableConcept because verificationStatus has some clinical judgment involved, such that there might need to be more specificity than the required FHIR value set allows. For example, a SNOMED coding might allow for additional specificity.
  final CodeableConcept? verificationStatus;
  Condition({
    this.abatementAge,
    this.abatementDateTime,
    this.abatementPeriod,
    this.abatementRange,
    this.abatementString,
    this.asserter,
    this.bodySite,
    this.category,
    this.clinicalStatus,
    this.code,
    super.contained,
    this.encounter,
    this.evidence,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.note,
    this.onsetAge,
    this.onsetDateTime,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.recordedDate,
    this.recorder,
    this.severity,
    this.stage,
    required this.subject,
    super.text,
    this.verificationStatus,
  });
  
  @override
  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      abatementAge: json['abatementAge'] != null ? Age.fromJson(json['abatementAge'] as Map<String, dynamic>) : null,
      abatementDateTime: json['abatementDateTime'] as String?,
      abatementPeriod: json['abatementPeriod'] != null ? Period.fromJson(json['abatementPeriod'] as Map<String, dynamic>) : null,
      abatementRange: json['abatementRange'] != null ? Range.fromJson(json['abatementRange'] as Map<String, dynamic>) : null,
      abatementString: json['abatementString'] as String?,
      asserter: json['asserter'] != null ? Reference.fromJson(json['asserter'] as Map<String, dynamic>) : null,
      bodySite: (json['bodySite'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      category: (json['category'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      clinicalStatus: json['clinicalStatus'] != null ? CodeableConcept.fromJson(json['clinicalStatus'] as Map<String, dynamic>) : null,
      code: json['code'] != null ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>) : null,
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      encounter: json['encounter'] != null ? Reference.fromJson(json['encounter'] as Map<String, dynamic>) : null,
      evidence: (json['evidence'] as List<dynamic>?)?.map((e) => ConditionEvidence.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      note: (json['note'] as List<dynamic>?)?.map((e) => Annotation.fromJson(e as Map<String, dynamic>)).toList(),
      onsetAge: json['onsetAge'] != null ? Age.fromJson(json['onsetAge'] as Map<String, dynamic>) : null,
      onsetDateTime: json['onsetDateTime'] as String?,
      onsetPeriod: json['onsetPeriod'] != null ? Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>) : null,
      onsetRange: json['onsetRange'] != null ? Range.fromJson(json['onsetRange'] as Map<String, dynamic>) : null,
      onsetString: json['onsetString'] as String?,
      recordedDate: json['recordedDate'] as String?,
      recorder: json['recorder'] != null ? Reference.fromJson(json['recorder'] as Map<String, dynamic>) : null,
      severity: json['severity'] != null ? CodeableConcept.fromJson(json['severity'] as Map<String, dynamic>) : null,
      stage: (json['stage'] as List<dynamic>?)?.map((e) => ConditionStage.fromJson(e as Map<String, dynamic>)).toList(),
      subject: Reference.fromJson(json['subject'] as Map<String, dynamic>),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
      verificationStatus: json['verificationStatus'] != null ? CodeableConcept.fromJson(json['verificationStatus'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'abatementAge': abatementAge?.toJson(),
      'abatementDateTime': abatementDateTime,
      'abatementPeriod': abatementPeriod?.toJson(),
      'abatementRange': abatementRange?.toJson(),
      'abatementString': abatementString,
      'asserter': asserter?.toJson(),
      'bodySite': bodySite?.map((e) => e.toJson()).toList(),
      'category': category?.map((e) => e.toJson()).toList(),
      'clinicalStatus': clinicalStatus?.toJson(),
      'code': code?.toJson(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'encounter': encounter?.toJson(),
      'evidence': evidence?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'note': note?.map((e) => e.toJson()).toList(),
      'onsetAge': onsetAge?.toJson(),
      'onsetDateTime': onsetDateTime,
      'onsetPeriod': onsetPeriod?.toJson(),
      'onsetRange': onsetRange?.toJson(),
      'onsetString': onsetString,
      'recordedDate': recordedDate,
      'recorder': recorder?.toJson(),
      'severity': severity?.toJson(),
      'stage': stage?.map((e) => e.toJson()).toList(),
      'subject': subject.toJson(),
      'text': text?.toJson(),
      'verificationStatus': verificationStatus?.toJson(),
    };
  
  @override
  Condition copyWith({
    Age? abatementAge,
    String? abatementDateTime,
    Period? abatementPeriod,
    Range? abatementRange,
    String? abatementString,
    Reference? asserter,
    List<CodeableConcept>? bodySite,
    List<CodeableConcept>? category,
    CodeableConcept? clinicalStatus,
    CodeableConcept? code,
    List<Resource>? contained,
    Reference? encounter,
    List<ConditionEvidence>? evidence,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    Age? onsetAge,
    String? onsetDateTime,
    Period? onsetPeriod,
    Range? onsetRange,
    String? onsetString,
    String? recordedDate,
    Reference? recorder,
    CodeableConcept? severity,
    List<ConditionStage>? stage,
    Reference? subject,
    Narrative? text,
    CodeableConcept? verificationStatus,
  }) {
    return Condition(
      abatementAge: abatementAge ?? this.abatementAge,
      abatementDateTime: abatementDateTime ?? this.abatementDateTime,
      abatementPeriod: abatementPeriod ?? this.abatementPeriod,
      abatementRange: abatementRange ?? this.abatementRange,
      abatementString: abatementString ?? this.abatementString,
      asserter: asserter ?? this.asserter,
      bodySite: bodySite ?? this.bodySite,
      category: category ?? this.category,
      clinicalStatus: clinicalStatus ?? this.clinicalStatus,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      encounter: encounter ?? this.encounter,
      evidence: evidence ?? this.evidence,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      onsetAge: onsetAge ?? this.onsetAge,
      onsetDateTime: onsetDateTime ?? this.onsetDateTime,
      onsetPeriod: onsetPeriod ?? this.onsetPeriod,
      onsetRange: onsetRange ?? this.onsetRange,
      onsetString: onsetString ?? this.onsetString,
      recordedDate: recordedDate ?? this.recordedDate,
      recorder: recorder ?? this.recorder,
      severity: severity ?? this.severity,
      stage: stage ?? this.stage,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      verificationStatus: verificationStatus ?? this.verificationStatus,
    );
  }
}
