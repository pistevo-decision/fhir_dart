part of '../fhir_dart.dart';

/// A record of a clinical assessment performed to determine what problem(s) may affect the patient and before planning the treatments or management strategies that are best to manage a patient's condition. Assessments are often 1:1 with a clinical consultation / encounter,  but this varies greatly depending on the clinical workflow. This resource is called "ClinicalImpression" rather than "ClinicalAssessment" to avoid confusion with the recording of assessment tools such as Apgar score.
class ClinicalImpression extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'ClinicalImpression';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// The clinician performing the assessment.
  final Reference? assessor;

  /// Kind of assessment performed
  /// Categorizes the type of clinical assessment performed.
  /// This is present as a place-holder only and may be removed based on feedback/work group opinion.
  final CodeableConcept? code;

  /// When the assessment was documented
  /// Indicates when the documentation of the assessment was complete.
  final String? date;

  /// Why/how the assessment was performed
  /// A summary of the context and/or cause of the assessment - why / where it was performed, and what patient events/status prompted it.
  final String? description;

  /// Time of assessment
  /// The point in time or period over which the subject was assessed.
  /// This SHOULD be accurate to at least the minute, though some assessments only have a known date.
  final String? effectiveDateTime;

  /// Time of assessment
  /// The point in time or period over which the subject was assessed.
  /// This SHOULD be accurate to at least the minute, though some assessments only have a known date.
  final Period? effectivePeriod;

  /// Encounter created as part of
  /// The Encounter during which this ClinicalImpression was created or to which the creation of this record is tightly associated.
  /// This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter.
  final Reference? encounter;

  /// Possible or likely findings and diagnoses
  /// Specific findings or diagnoses that were considered likely or relevant to ongoing treatment.
  final List<ClinicalImpressionFinding>? finding;

  /// Business identifiers assigned to this clinical impression by the performer or other systems which remain constant as the resource is updated and propagates from server to server.
  /// This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number.
  final List<Identifier>? identifier;

  /// One or more sets of investigations (signs, symptoms, etc.). The actual grouping of investigations varies greatly depending on the type and context of the assessment. These investigations may include data generated during the assessment process, or data previously generated and recorded that is pertinent to the outcomes.
  final List<ClinicalImpressionInvestigation>? investigation;

  /// Comments made about the ClinicalImpression
  /// Commentary about the impression, typically recorded after the impression itself was made, though supplemental notes by the original author could also appear.
  /// Don't use this element for content that should more properly appear as one of the specific elements of the impression.
  final List<Annotation>? note;

  /// Reference to last assessment
  /// A reference to the last assessment that was conducted on this patient. Assessments are often/usually ongoing in nature; a care provider (practitioner or team) will make new assessments on an ongoing basis as new data arises or the patient's conditions changes.
  /// It is always likely that multiple previous assessments exist for a patient. The point of quoting a previous assessment is that this assessment is relative to it (see resolved).
  final Reference? previous;

  /// Relevant impressions of patient state
  /// A list of the relevant problems/conditions for a patient.
  /// e.g. The patient is a pregnant, has congestive heart failure, has an ‎Adenocarcinoma, and is allergic to penicillin.
  final List<Reference>? problem;

  /// Estimate of likely outcome.
  final List<CodeableConcept>? prognosisCodeableConcept;

  /// RiskAssessment expressing likely outcome.
  final List<Reference>? prognosisReference;

  /// Clinical Protocol followed
  /// Reference to a specific published clinical protocol that was followed during this assessment, and/or that provides evidence in support of the diagnosis.
  final List<String>? protocol;

  /// Identifies the workflow status of the assessment.
  /// This element is labeled as a modifier because the status contains the code entered-in-error that marks the clinical impression as not currently valid.
  final String
      status; // Possible values: 'in-progress', 'completed', 'entered-in-error'
  /// Reason for current status
  /// Captures the reason for the current state of the ClinicalImpression.
  /// This is generally only used for "exception" statuses such as "not-done", "suspended" or "cancelled".
  /// [distinct reason codes for different statuses can be enforced using invariants if they are universal bindings].
  final CodeableConcept? statusReason;

  /// Patient or group assessed
  /// The patient or group of individuals assessed as part of this record.
  final Reference subject;

  /// Summary of the assessment
  /// A text summary of the investigations and the diagnosis.
  final String? summary;

  /// Information supporting the clinical impression.
  final List<Reference>? supportingInfo;
  ClinicalImpression({
    this.assessor,
    this.code,
    super.contained,
    this.date,
    this.description,
    this.effectiveDateTime,
    this.effectivePeriod,
    this.encounter,
    super.fhirExtension,
    this.finding,
    super.id,
    this.identifier,
    super.implicitRules,
    this.investigation,
    super.language,
    super.meta,
    super.modifierExtension,
    this.note,
    this.previous,
    this.problem,
    this.prognosisCodeableConcept,
    this.prognosisReference,
    this.protocol,
    required this.status,
    this.statusReason,
    required this.subject,
    this.summary,
    this.supportingInfo,
    super.text,
  });

  @override
  factory ClinicalImpression.fromJson(Map<String, dynamic> json) {
    return ClinicalImpression(
      assessor: json['assessor'] != null
          ? Reference.fromJson(
              (json['assessor'] as Map).cast<String, dynamic>())
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              (json['code'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      date: json['date'] as String?,
      description: json['description'] as String?,
      effectiveDateTime: json['effectiveDateTime'] as String?,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              (json['effectivePeriod'] as Map).cast<String, dynamic>())
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              (json['encounter'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      finding: (json['finding'] as List<dynamic>?)
          ?.map((e) => ClinicalImpressionFinding.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      investigation: (json['investigation'] as List<dynamic>?)
          ?.map((e) => ClinicalImpressionInvestigation.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      previous: json['previous'] != null
          ? Reference.fromJson(
              (json['previous'] as Map).cast<String, dynamic>())
          : null,
      problem: (json['problem'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      prognosisCodeableConcept:
          (json['prognosisCodeableConcept'] as List<dynamic>?)
              ?.map((e) =>
                  CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
              .toList(),
      prognosisReference: (json['prognosisReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      protocol: (json['protocol'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: json['status'] as String,
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              (json['statusReason'] as Map).cast<String, dynamic>())
          : null,
      subject:
          Reference.fromJson((json['subject'] as Map).cast<String, dynamic>()),
      summary: json['summary'] as String?,
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'assessor': assessor?.toJson(),
        'code': code?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'date': date,
        'description': description,
        'effectiveDateTime': effectiveDateTime,
        'effectivePeriod': effectivePeriod?.toJson(),
        'encounter': encounter?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'finding': finding?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'investigation': investigation?.map((e) => e.toJson()).toList(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'previous': previous?.toJson(),
        'problem': problem?.map((e) => e.toJson()).toList(),
        'prognosisCodeableConcept':
            prognosisCodeableConcept?.map((e) => e.toJson()).toList(),
        'prognosisReference':
            prognosisReference?.map((e) => e.toJson()).toList(),
        'protocol': protocol?.map((e) => e).toList(),
        'status': status,
        'statusReason': statusReason?.toJson(),
        'subject': subject.toJson(),
        'summary': summary,
        'supportingInfo': supportingInfo?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  ClinicalImpression copyWith({
    Reference? assessor,
    CodeableConcept? code,
    List<Resource>? contained,
    String? date,
    String? description,
    String? effectiveDateTime,
    Period? effectivePeriod,
    Reference? encounter,
    List<Extension>? fhirExtension,
    List<ClinicalImpressionFinding>? finding,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<ClinicalImpressionInvestigation>? investigation,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    Reference? previous,
    List<Reference>? problem,
    List<CodeableConcept>? prognosisCodeableConcept,
    List<Reference>? prognosisReference,
    List<String>? protocol,
    String? status,
    CodeableConcept? statusReason,
    Reference? subject,
    String? summary,
    List<Reference>? supportingInfo,
    Narrative? text,
  }) {
    return ClinicalImpression(
      assessor: assessor ?? this.assessor,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      date: date ?? this.date,
      description: description ?? this.description,
      effectiveDateTime: effectiveDateTime ?? this.effectiveDateTime,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      finding: finding ?? this.finding,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      investigation: investigation ?? this.investigation,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      previous: previous ?? this.previous,
      problem: problem ?? this.problem,
      prognosisCodeableConcept:
          prognosisCodeableConcept ?? this.prognosisCodeableConcept,
      prognosisReference: prognosisReference ?? this.prognosisReference,
      protocol: protocol ?? this.protocol,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      subject: subject ?? this.subject,
      summary: summary ?? this.summary,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      text: text ?? this.text,
    );
  }
}
