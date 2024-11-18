part of '../fhir_dart.dart';

/// Describes a comparison of an immunization event against published recommendations to determine if the administration is "valid" in relation to those  recommendations.
class ImmunizationEvaluation extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'ImmunizationEvaluation';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Who is responsible for publishing the recommendations
  /// Indicates the authority who published the protocol (e.g. ACIP).
  final Reference? authority;

  /// Date evaluation was performed
  /// The date the evaluation of the vaccine administration event was performed.
  final String? date;

  /// Evaluation notes
  /// Additional information about the evaluation.
  final String? description;

  /// Dose number within series
  /// Nominal position in a series.
  /// The use of an integer is preferred if known. A string should only be used in cases where an integer is not available (such as when documenting a recurring booster dose).
  final int? doseNumberPositiveInt;

  /// Dose number within series
  /// Nominal position in a series.
  /// The use of an integer is preferred if known. A string should only be used in cases where an integer is not available (such as when documenting a recurring booster dose).
  final String? doseNumberString;

  /// Status of the dose relative to published recommendations
  /// Indicates if the dose is valid or not valid with respect to the published recommendations.
  final CodeableConcept doseStatus;

  /// Reason for the dose status
  /// Provides an explanation as to why the vaccine administration event is valid or not relative to the published recommendations.
  final List<CodeableConcept>? doseStatusReason;

  /// Business identifier
  /// A unique identifier assigned to this immunization evaluation record.
  final List<Identifier>? identifier;

  /// Immunization being evaluated
  /// The vaccine administration event being evaluated.
  final Reference immunizationEvent;

  /// Who this evaluation is for
  /// The individual for whom the evaluation is being done.
  final Reference patient;

  /// Name of vaccine series
  /// One possible path to achieve presumed immunity against a disease - within the context of an authority.
  final String? series;

  /// Recommended number of doses for immunity
  /// The recommended number of doses to achieve immunity.
  /// The use of an integer is preferred if known. A string should only be used in cases where an integer is not available (such as when documenting a recurring booster dose).
  final int? seriesDosesPositiveInt;

  /// Recommended number of doses for immunity
  /// The recommended number of doses to achieve immunity.
  /// The use of an integer is preferred if known. A string should only be used in cases where an integer is not available (such as when documenting a recurring booster dose).
  final String? seriesDosesString;

  /// completed | entered-in-error
  /// Indicates the current status of the evaluation of the vaccination administration event.
  final String status; // Possible values: 'completed', 'entered-in-error'
  /// Evaluation target disease
  /// The vaccine preventable disease the dose is being evaluated against.
  final CodeableConcept targetDisease;
  ImmunizationEvaluation({
    this.authority,
    super.contained,
    this.date,
    this.description,
    this.doseNumberPositiveInt,
    this.doseNumberString,
    required this.doseStatus,
    this.doseStatusReason,
    super.fhirExtension,
    super.id,
    this.identifier,
    required this.immunizationEvent,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    required this.patient,
    this.series,
    this.seriesDosesPositiveInt,
    this.seriesDosesString,
    required this.status,
    required this.targetDisease,
    super.text,
  });

  @override
  factory ImmunizationEvaluation.fromJson(Map<String, dynamic> json) {
    return ImmunizationEvaluation(
      authority: json['authority'] != null
          ? Reference.fromJson(
              (json['authority'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      date: json['date'] as String?,
      description: json['description'] as String?,
      doseNumberPositiveInt: json['doseNumberPositiveInt'] as int?,
      doseNumberString: json['doseNumberString'] as String?,
      doseStatus: CodeableConcept.fromJson(
          (json['doseStatus'] as Map).cast<String, dynamic>()),
      doseStatusReason: (json['doseStatusReason'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      immunizationEvent: Reference.fromJson(
          (json['immunizationEvent'] as Map).cast<String, dynamic>()),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      patient:
          Reference.fromJson((json['patient'] as Map).cast<String, dynamic>()),
      series: json['series'] as String?,
      seriesDosesPositiveInt: json['seriesDosesPositiveInt'] as int?,
      seriesDosesString: json['seriesDosesString'] as String?,
      status: json['status'] as String,
      targetDisease: CodeableConcept.fromJson(
          (json['targetDisease'] as Map).cast<String, dynamic>()),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'authority': authority?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'date': date,
        'description': description,
        'doseNumberPositiveInt': doseNumberPositiveInt,
        'doseNumberString': doseNumberString,
        'doseStatus': doseStatus.toJson(),
        'doseStatusReason': doseStatusReason?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'immunizationEvent': immunizationEvent.toJson(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'patient': patient.toJson(),
        'series': series,
        'seriesDosesPositiveInt': seriesDosesPositiveInt,
        'seriesDosesString': seriesDosesString,
        'status': status,
        'targetDisease': targetDisease.toJson(),
        'text': text?.toJson(),
      };

  @override
  ImmunizationEvaluation copyWith({
    Reference? authority,
    List<Resource>? contained,
    String? date,
    String? description,
    int? doseNumberPositiveInt,
    String? doseNumberString,
    CodeableConcept? doseStatus,
    List<CodeableConcept>? doseStatusReason,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    Reference? immunizationEvent,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    Reference? patient,
    String? series,
    int? seriesDosesPositiveInt,
    String? seriesDosesString,
    String? status,
    CodeableConcept? targetDisease,
    Narrative? text,
  }) {
    return ImmunizationEvaluation(
      authority: authority ?? this.authority,
      contained: contained ?? this.contained,
      date: date ?? this.date,
      description: description ?? this.description,
      doseNumberPositiveInt:
          doseNumberPositiveInt ?? this.doseNumberPositiveInt,
      doseNumberString: doseNumberString ?? this.doseNumberString,
      doseStatus: doseStatus ?? this.doseStatus,
      doseStatusReason: doseStatusReason ?? this.doseStatusReason,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      immunizationEvent: immunizationEvent ?? this.immunizationEvent,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      patient: patient ?? this.patient,
      series: series ?? this.series,
      seriesDosesPositiveInt:
          seriesDosesPositiveInt ?? this.seriesDosesPositiveInt,
      seriesDosesString: seriesDosesString ?? this.seriesDosesString,
      status: status ?? this.status,
      targetDisease: targetDisease ?? this.targetDisease,
      text: text ?? this.text,
    );
  }
}
