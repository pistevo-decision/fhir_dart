part of '../fhir_dart.dart';

/// The MeasureReport resource contains the results of the calculation of a measure; and optionally a reference to the resources involved in that calculation.
class MeasureReport extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'MeasureReport';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// When the report was generated
  /// The date this measure report was generated.
  final String? date;

  /// What data was used to calculate the measure score
  /// A reference to a Bundle containing the Resources that were used in the calculation of this measure.
  final List<Reference>? evaluatedResource;

  /// Measure results for each group
  /// The results of the calculation, one for each population group in the measure.
  final List<MeasureReportGroup>? group;

  /// Additional identifier for the MeasureReport
  /// A formal identifier that is used to identify this MeasureReport when it is represented in other formats or referenced in a specification, model, design or an instance.
  /// Typically, this is used for identifiers that can go in an HL7 V3 II data type - e.g. to identify this {{title}} outside of FHIR, where the logical URL is not possible to use.
  final List<Identifier>? identifier;

  /// increase | decrease
  /// Whether improvement in the measure is noted by an increase or decrease in the measure score.
  /// This element is typically defined by the measure, but reproduced here to ensure the measure score can be interpreted. The element is labeled as a modifier because it changes the interpretation of the reported measure score.
  final CodeableConcept? improvementNotation;

  /// What measure was calculated
  /// A reference to the Measure that was calculated to produce this report.
  final String measure;

  /// What period the report covers
  /// The reporting period for which the report was calculated.
  final Period period;

  /// Who is reporting the data
  /// The individual, location, or organization that is reporting the data.
  final Reference? reporter;

  /// The MeasureReport status. No data will be available until the MeasureReport status is complete.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String status; // Possible values: 'complete', 'pending', 'error'
  /// What individual(s) the report is for
  /// Optional subject identifying the individual or individuals the report is for.
  final Reference? subject;

  /// The type of measure report. This may be an individual report, which provides the score for the measure for an individual member of the population; a subject-listing, which returns the list of members that meet the various criteria in the measure; a summary report, which returns a population count for each of the criteria in the measure; or a data-collection, which enables the MeasureReport to be used to exchange the data-of-interest for a quality measure.
  /// Data-collection reports are used only to communicate data-of-interest for a measure. They do not necessarily include all the data for a particular subject or population, but they may.
  final String
      type; // Possible values: 'individual', 'subject-list', 'summary', 'data-collection'
  MeasureReport({
    super.contained,
    this.date,
    this.evaluatedResource,
    super.fhirExtension,
    this.group,
    super.id,
    this.identifier,
    super.implicitRules,
    this.improvementNotation,
    super.language,
    required this.measure,
    super.meta,
    super.modifierExtension,
    required this.period,
    this.reporter,
    required this.status,
    this.subject,
    super.text,
    required this.type,
  });

  @override
  factory MeasureReport.fromJson(Map<String, dynamic> json) {
    return MeasureReport(
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      date: json['date'] as String?,
      evaluatedResource: (json['evaluatedResource'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      group: (json['group'] as List<dynamic>?)
          ?.map((e) =>
              MeasureReportGroup.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      improvementNotation: json['improvementNotation'] != null
          ? CodeableConcept.fromJson(
              (json['improvementNotation'] as Map).cast<String, dynamic>())
          : null,
      language: json['language'] as String?,
      measure: json['measure'] as String,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      period: Period.fromJson((json['period'] as Map).cast<String, dynamic>()),
      reporter: json['reporter'] != null
          ? Reference.fromJson(
              (json['reporter'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      subject: json['subject'] != null
          ? Reference.fromJson((json['subject'] as Map).cast<String, dynamic>())
          : null,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      type: json['type'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'contained': contained?.map((e) => e.toJson()).toList(),
        'date': date,
        'evaluatedResource': evaluatedResource?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'group': group?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'improvementNotation': improvementNotation?.toJson(),
        'language': language,
        'measure': measure,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'period': period.toJson(),
        'reporter': reporter?.toJson(),
        'status': status,
        'subject': subject?.toJson(),
        'text': text?.toJson(),
        'type': type,
      };

  @override
  MeasureReport copyWith({
    List<Resource>? contained,
    String? date,
    List<Reference>? evaluatedResource,
    List<Extension>? fhirExtension,
    List<MeasureReportGroup>? group,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    CodeableConcept? improvementNotation,
    String? language,
    String? measure,
    Meta? meta,
    List<Extension>? modifierExtension,
    Period? period,
    Reference? reporter,
    String? status,
    Reference? subject,
    Narrative? text,
    String? type,
  }) {
    return MeasureReport(
      contained: contained ?? this.contained,
      date: date ?? this.date,
      evaluatedResource: evaluatedResource ?? this.evaluatedResource,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      group: group ?? this.group,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      improvementNotation: improvementNotation ?? this.improvementNotation,
      language: language ?? this.language,
      measure: measure ?? this.measure,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      reporter: reporter ?? this.reporter,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
