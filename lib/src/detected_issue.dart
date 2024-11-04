part of '../fhir_dart.dart';

/// Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc.
class DetectedIssue extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'DetectedIssue';

  /// The provider or device that identified the issue
  /// Individual or device responsible for the issue being raised.  For example, a decision support application or a pharmacist conducting a medication review.
  final Reference? author;

  /// Issue Category, e.g. drug-drug, duplicate therapy, etc.
  /// Identifies the general type of issue identified.
  final CodeableConcept? code;

  /// Description and context
  /// A textual explanation of the detected issue.
  /// Should focus on information not covered elsewhere as discrete data - no need to duplicate the narrative.
  final String? detail;

  /// Supporting evidence or manifestations that provide the basis for identifying the detected issue such as a GuidanceResponse or MeasureReport.
  final List<DetectedIssueEvidence>? evidence;

  /// When identified
  /// The date or period when the detected issue was initially identified.
  final String? identifiedDateTime;

  /// When identified
  /// The date or period when the detected issue was initially identified.
  final Period? identifiedPeriod;

  /// Unique id for the detected issue
  /// Business identifier associated with the detected issue record.
  final List<Identifier>? identifier;

  /// Problem resource
  /// Indicates the resource representing the current activity or proposed activity that is potentially problematic.
  /// There's an implicit constraint on the number of implicated resources based on DetectedIssue.type; e.g. For drug-drug, there would be more than one.  For timing, there would typically only be one.
  final List<Reference>? implicated;

  /// Step taken to address
  /// Indicates an action that has been taken or is committed to reduce or eliminate the likelihood of the risk identified by the detected issue from manifesting.  Can also reflect an observation of known mitigating factors that may reduce/eliminate the need for any action.
  final List<DetectedIssueMitigation>? mitigation;

  /// Associated patient
  /// Indicates the patient whose record the detected issue is associated with.
  final Reference? patient;

  /// Authority for issue
  /// The literature, knowledge-base or similar reference that describes the propensity for the detected issue identified.
  final String? reference;

  /// Indicates the degree of importance associated with the identified issue based on the potential impact on the patient.
  final String? severity; // Possible values: 'high', 'moderate', 'low'
  /// Indicates the status of the detected issue.
  /// This element is labeled as a modifier because the status contains the codes cancelled and entered-in-error that mark the issue as not currently valid.
  final String
      status; // Possible values: 'registered', 'preliminary', 'final', 'amended', 'corrected', 'cancelled', 'entered-in-error', 'unknown'
  DetectedIssue({
    this.author,
    this.code,
    super.contained,
    this.detail,
    this.evidence,
    super.fhirExtension,
    super.id,
    this.identifiedDateTime,
    this.identifiedPeriod,
    this.identifier,
    this.implicated,
    super.implicitRules,
    super.language,
    super.meta,
    this.mitigation,
    super.modifierExtension,
    this.patient,
    this.reference,
    this.severity,
    required this.status,
    super.text,
  });

  @override
  factory DetectedIssue.fromJson(Map<String, dynamic> json) {
    return DetectedIssue(
      author: json['author'] != null
          ? Reference.fromJson(json['author'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      detail: json['detail'] as String?,
      evidence: (json['evidence'] as List<dynamic>?)
          ?.map(
              (e) => DetectedIssueEvidence.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifiedDateTime: json['identifiedDateTime'] as String?,
      identifiedPeriod: json['identifiedPeriod'] != null
          ? Period.fromJson(json['identifiedPeriod'] as Map<String, dynamic>)
          : null,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicated: (json['implicated'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      mitigation: (json['mitigation'] as List<dynamic>?)
          ?.map((e) =>
              DetectedIssueMitigation.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      patient: json['patient'] != null
          ? Reference.fromJson(json['patient'] as Map<String, dynamic>)
          : null,
      reference: json['reference'] as String?,
      severity: json['severity'] as String?,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'author': author?.toJson(),
        'code': code?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'detail': detail,
        'evidence': evidence?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifiedDateTime': identifiedDateTime,
        'identifiedPeriod': identifiedPeriod?.toJson(),
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicated': implicated?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'mitigation': mitigation?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'patient': patient?.toJson(),
        'reference': reference,
        'severity': severity,
        'status': status,
        'text': text?.toJson(),
      };

  @override
  DetectedIssue copyWith({
    Reference? author,
    CodeableConcept? code,
    List<Resource>? contained,
    String? detail,
    List<DetectedIssueEvidence>? evidence,
    List<Extension>? fhirExtension,
    String? id,
    String? identifiedDateTime,
    Period? identifiedPeriod,
    List<Identifier>? identifier,
    List<Reference>? implicated,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<DetectedIssueMitigation>? mitigation,
    List<Extension>? modifierExtension,
    Reference? patient,
    String? reference,
    String? severity,
    String? status,
    Narrative? text,
  }) {
    return DetectedIssue(
      author: author ?? this.author,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      detail: detail ?? this.detail,
      evidence: evidence ?? this.evidence,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifiedDateTime: identifiedDateTime ?? this.identifiedDateTime,
      identifiedPeriod: identifiedPeriod ?? this.identifiedPeriod,
      identifier: identifier ?? this.identifier,
      implicated: implicated ?? this.implicated,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      mitigation: mitigation ?? this.mitigation,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      patient: patient ?? this.patient,
      reference: reference ?? this.reference,
      severity: severity ?? this.severity,
      status: status ?? this.status,
      text: text ?? this.text,
    );
  }
}
