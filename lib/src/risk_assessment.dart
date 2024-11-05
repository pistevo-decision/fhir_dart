part of '../fhir_dart.dart';

/// An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
class RiskAssessment extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'RiskAssessment';

  /// Request fulfilled by this assessment
  /// A reference to the request that is fulfilled by this risk assessment.
  final Reference? basedOn;

  /// Information used in assessment
  /// Indicates the source data considered as part of the assessment (for example, FamilyHistory, Observations, Procedures, Conditions, etc.).
  final List<Reference>? basis;

  /// Type of assessment
  /// The type of the risk assessment performed.
  final CodeableConcept? code;

  /// Condition assessed
  /// For assessments or prognosis specific to a particular condition, indicates the condition being assessed.
  final Reference? condition;

  /// Where was assessment performed?
  /// The encounter where the assessment was performed.
  final Reference? encounter;

  /// Unique identifier for the assessment
  /// Business identifier assigned to the risk assessment.
  final List<Identifier>? identifier;

  /// Evaluation mechanism
  /// The algorithm, process or mechanism used to evaluate the risk.
  final CodeableConcept? method;

  /// How to reduce risk
  /// A description of the steps that might be taken to reduce the identified risk(s).
  final String? mitigation;

  /// Comments on the risk assessment
  /// Additional comments about the risk assessment.
  final List<Annotation>? note;

  /// When was assessment made?
  /// The date (and possibly time) the risk assessment was performed.
  final String? occurrenceDateTime;

  /// When was assessment made?
  /// The date (and possibly time) the risk assessment was performed.
  final Period? occurrencePeriod;

  /// Part of this occurrence
  /// A reference to a resource that this risk assessment is part of, such as a Procedure.
  final Reference? parent;

  /// Who did assessment?
  /// The provider or software application that performed the assessment.
  final Reference? performer;

  /// Outcome predicted
  /// Describes the expected outcome for the subject.
  /// Multiple repetitions can be used to identify the same type of outcome in different timeframes as well as different types of outcomes.
  final List<RiskAssessmentPrediction>? prediction;

  /// Why the assessment was necessary?
  /// The reason the risk assessment was performed.
  final List<CodeableConcept>? reasonCode;

  /// Why the assessment was necessary?
  /// Resources supporting the reason the risk assessment was performed.
  final List<Reference>? reasonReference;

  /// The status of the RiskAssessment, using the same statuses as an Observation.
  final String
      status; // Possible values: 'registered', 'preliminary', 'final', 'amended', 'corrected', 'cancelled', 'entered-in-error', 'unknown'
  /// Who/what does assessment apply to?
  /// The patient or group the risk assessment applies to.
  final Reference subject;
  RiskAssessment({
    this.basedOn,
    this.basis,
    this.code,
    this.condition,
    super.contained,
    this.encounter,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    this.method,
    this.mitigation,
    super.modifierExtension,
    this.note,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.parent,
    this.performer,
    this.prediction,
    this.reasonCode,
    this.reasonReference,
    required this.status,
    required this.subject,
    super.text,
  });

  @override
  factory RiskAssessment.fromJson(Map<String, dynamic> json) {
    return RiskAssessment(
      basedOn: json['basedOn'] != null
          ? Reference.fromJson((json['basedOn'] as Map).cast<String, dynamic>())
          : null,
      basis: (json['basis'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              (json['code'] as Map).cast<String, dynamic>())
          : null,
      condition: json['condition'] != null
          ? Reference.fromJson(
              (json['condition'] as Map).cast<String, dynamic>())
          : null,
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
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(
              (json['method'] as Map).cast<String, dynamic>())
          : null,
      mitigation: json['mitigation'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      occurrenceDateTime: json['occurrenceDateTime'] as String?,
      occurrencePeriod: json['occurrencePeriod'] != null
          ? Period.fromJson(
              (json['occurrencePeriod'] as Map).cast<String, dynamic>())
          : null,
      parent: json['parent'] != null
          ? Reference.fromJson((json['parent'] as Map).cast<String, dynamic>())
          : null,
      performer: json['performer'] != null
          ? Reference.fromJson(
              (json['performer'] as Map).cast<String, dynamic>())
          : null,
      prediction: (json['prediction'] as List<dynamic>?)
          ?.map((e) => RiskAssessmentPrediction.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String,
      subject:
          Reference.fromJson((json['subject'] as Map).cast<String, dynamic>()),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'basedOn': basedOn?.toJson(),
        'basis': basis?.map((e) => e.toJson()).toList(),
        'code': code?.toJson(),
        'condition': condition?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'encounter': encounter?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'method': method?.toJson(),
        'mitigation': mitigation,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'occurrenceDateTime': occurrenceDateTime,
        'occurrencePeriod': occurrencePeriod?.toJson(),
        'parent': parent?.toJson(),
        'performer': performer?.toJson(),
        'prediction': prediction?.map((e) => e.toJson()).toList(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'status': status,
        'subject': subject.toJson(),
        'text': text?.toJson(),
      };

  @override
  RiskAssessment copyWith({
    Reference? basedOn,
    List<Reference>? basis,
    CodeableConcept? code,
    Reference? condition,
    List<Resource>? contained,
    Reference? encounter,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    CodeableConcept? method,
    String? mitigation,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    String? occurrenceDateTime,
    Period? occurrencePeriod,
    Reference? parent,
    Reference? performer,
    List<RiskAssessmentPrediction>? prediction,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    String? status,
    Reference? subject,
    Narrative? text,
  }) {
    return RiskAssessment(
      basedOn: basedOn ?? this.basedOn,
      basis: basis ?? this.basis,
      code: code ?? this.code,
      condition: condition ?? this.condition,
      contained: contained ?? this.contained,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      method: method ?? this.method,
      mitigation: mitigation ?? this.mitigation,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      parent: parent ?? this.parent,
      performer: performer ?? this.performer,
      prediction: prediction ?? this.prediction,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
    );
  }
}
