part of '../fhir_dart.dart';

/// What defines the members of the research element
/// A characteristic that defines the members of the research element. Multiple characteristics are applied with "and" semantics.
/// Characteristics can be defined flexibly to accommodate different use cases for membership criteria, ranging from simple codes, all the way to using an expression language to express the criteria.
class ResearchElementDefinitionCharacteristic extends BackboneElement
    implements FhirResource {
  /// What code or expression defines members?
  /// Define members of the research element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
  final String? definitionCanonical;

  /// What code or expression defines members?
  /// Define members of the research element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
  final CodeableConcept? definitionCodeableConcept;

  /// What code or expression defines members?
  /// Define members of the research element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
  final DataRequirement? definitionDataRequirement;

  /// What code or expression defines members?
  /// Define members of the research element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
  final Expression? definitionExpression;

  /// Whether the characteristic includes or excludes members
  /// When true, members with this characteristic are excluded from the element.
  final bool? exclude;

  /// What time period do participants cover
  /// Indicates what effective period the study covers.
  final String? participantEffectiveDateTime;

  /// What time period do participants cover
  /// Indicates what effective period the study covers.
  final Duration? participantEffectiveDuration;

  /// What time period do participants cover
  /// Indicates what effective period the study covers.
  final Period? participantEffectivePeriod;

  /// What time period do participants cover
  /// Indicates what effective period the study covers.
  final Timing? participantEffectiveTiming;

  /// What time period do participants cover
  /// A narrative description of the time period the study covers.
  final String? participantEffectiveDescription;

  /// Indicates how elements are aggregated within the study effective period.
  final String?
      participantEffectiveGroupMeasure; // Possible values: 'mean', 'median', 'mean-of-mean', 'mean-of-median', 'median-of-mean', 'median-of-median'
  /// Observation time from study start
  /// Indicates duration from the participant's study entry.
  final Duration? participantEffectiveTimeFromStart;

  /// What time period does the study cover
  /// Indicates what effective period the study covers.
  final String? studyEffectiveDateTime;

  /// What time period does the study cover
  /// Indicates what effective period the study covers.
  final Duration? studyEffectiveDuration;

  /// What time period does the study cover
  /// Indicates what effective period the study covers.
  final Period? studyEffectivePeriod;

  /// What time period does the study cover
  /// Indicates what effective period the study covers.
  final Timing? studyEffectiveTiming;

  /// What time period does the study cover
  /// A narrative description of the time period the study covers.
  final String? studyEffectiveDescription;

  /// Indicates how elements are aggregated within the study effective period.
  final String?
      studyEffectiveGroupMeasure; // Possible values: 'mean', 'median', 'mean-of-mean', 'mean-of-median', 'median-of-mean', 'median-of-median'
  /// Observation time from study start
  /// Indicates duration from the study initiation.
  final Duration? studyEffectiveTimeFromStart;

  /// What unit is the outcome described in?
  /// Specifies the UCUM unit for the outcome.
  final CodeableConcept? unitOfMeasure;

  /// What code/value pairs define members?
  /// Use UsageContext to define the members of the population, such as Age Ranges, Genders, Settings.
  final List<UsageContext>? usageContext;
  ResearchElementDefinitionCharacteristic({
    this.definitionCanonical,
    this.definitionCodeableConcept,
    this.definitionDataRequirement,
    this.definitionExpression,
    this.exclude,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.participantEffectiveDateTime,
    this.participantEffectiveDuration,
    this.participantEffectivePeriod,
    this.participantEffectiveTiming,
    this.participantEffectiveDescription,
    this.participantEffectiveGroupMeasure,
    this.participantEffectiveTimeFromStart,
    this.studyEffectiveDateTime,
    this.studyEffectiveDuration,
    this.studyEffectivePeriod,
    this.studyEffectiveTiming,
    this.studyEffectiveDescription,
    this.studyEffectiveGroupMeasure,
    this.studyEffectiveTimeFromStart,
    this.unitOfMeasure,
    this.usageContext,
  });

  @override
  factory ResearchElementDefinitionCharacteristic.fromJson(
      Map<String, dynamic> json) {
    return ResearchElementDefinitionCharacteristic(
      definitionCanonical: json['definitionCanonical'] as String?,
      definitionCodeableConcept: json['definitionCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['definitionCodeableConcept'] as Map<String, dynamic>)
          : null,
      definitionDataRequirement: json['definitionDataRequirement'] != null
          ? DataRequirement.fromJson(
              json['definitionDataRequirement'] as Map<String, dynamic>)
          : null,
      definitionExpression: json['definitionExpression'] != null
          ? Expression.fromJson(
              json['definitionExpression'] as Map<String, dynamic>)
          : null,
      exclude: json['exclude'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      participantEffectiveDateTime:
          json['participantEffectiveDateTime'] as String?,
      participantEffectiveDuration: json['participantEffectiveDuration'] != null
          ? Duration.fromJson(
              json['participantEffectiveDuration'] as Map<String, dynamic>)
          : null,
      participantEffectivePeriod: json['participantEffectivePeriod'] != null
          ? Period.fromJson(
              json['participantEffectivePeriod'] as Map<String, dynamic>)
          : null,
      participantEffectiveTiming: json['participantEffectiveTiming'] != null
          ? Timing.fromJson(
              json['participantEffectiveTiming'] as Map<String, dynamic>)
          : null,
      participantEffectiveDescription:
          json['participantEffectiveDescription'] as String?,
      participantEffectiveGroupMeasure:
          json['participantEffectiveGroupMeasure'] as String?,
      participantEffectiveTimeFromStart:
          json['participantEffectiveTimeFromStart'] != null
              ? Duration.fromJson(json['participantEffectiveTimeFromStart']
                  as Map<String, dynamic>)
              : null,
      studyEffectiveDateTime: json['studyEffectiveDateTime'] as String?,
      studyEffectiveDuration: json['studyEffectiveDuration'] != null
          ? Duration.fromJson(
              json['studyEffectiveDuration'] as Map<String, dynamic>)
          : null,
      studyEffectivePeriod: json['studyEffectivePeriod'] != null
          ? Period.fromJson(
              json['studyEffectivePeriod'] as Map<String, dynamic>)
          : null,
      studyEffectiveTiming: json['studyEffectiveTiming'] != null
          ? Timing.fromJson(
              json['studyEffectiveTiming'] as Map<String, dynamic>)
          : null,
      studyEffectiveDescription: json['studyEffectiveDescription'] as String?,
      studyEffectiveGroupMeasure: json['studyEffectiveGroupMeasure'] as String?,
      studyEffectiveTimeFromStart: json['studyEffectiveTimeFromStart'] != null
          ? Duration.fromJson(
              json['studyEffectiveTimeFromStart'] as Map<String, dynamic>)
          : null,
      unitOfMeasure: json['unitOfMeasure'] != null
          ? CodeableConcept.fromJson(
              json['unitOfMeasure'] as Map<String, dynamic>)
          : null,
      usageContext: (json['usageContext'] as List<dynamic>?)
          ?.map((e) => UsageContext.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'definitionCanonical': definitionCanonical,
        'definitionCodeableConcept': definitionCodeableConcept?.toJson(),
        'definitionDataRequirement': definitionDataRequirement?.toJson(),
        'definitionExpression': definitionExpression?.toJson(),
        'exclude': exclude,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'participantEffectiveDateTime': participantEffectiveDateTime,
        'participantEffectiveDuration': participantEffectiveDuration?.toJson(),
        'participantEffectivePeriod': participantEffectivePeriod?.toJson(),
        'participantEffectiveTiming': participantEffectiveTiming?.toJson(),
        'participantEffectiveDescription': participantEffectiveDescription,
        'participantEffectiveGroupMeasure': participantEffectiveGroupMeasure,
        'participantEffectiveTimeFromStart':
            participantEffectiveTimeFromStart?.toJson(),
        'studyEffectiveDateTime': studyEffectiveDateTime,
        'studyEffectiveDuration': studyEffectiveDuration?.toJson(),
        'studyEffectivePeriod': studyEffectivePeriod?.toJson(),
        'studyEffectiveTiming': studyEffectiveTiming?.toJson(),
        'studyEffectiveDescription': studyEffectiveDescription,
        'studyEffectiveGroupMeasure': studyEffectiveGroupMeasure,
        'studyEffectiveTimeFromStart': studyEffectiveTimeFromStart?.toJson(),
        'unitOfMeasure': unitOfMeasure?.toJson(),
        'usageContext': usageContext?.map((e) => e.toJson()).toList(),
      };

  @override
  ResearchElementDefinitionCharacteristic copyWith({
    String? definitionCanonical,
    CodeableConcept? definitionCodeableConcept,
    DataRequirement? definitionDataRequirement,
    Expression? definitionExpression,
    bool? exclude,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? participantEffectiveDateTime,
    Duration? participantEffectiveDuration,
    Period? participantEffectivePeriod,
    Timing? participantEffectiveTiming,
    String? participantEffectiveDescription,
    String? participantEffectiveGroupMeasure,
    Duration? participantEffectiveTimeFromStart,
    String? studyEffectiveDateTime,
    Duration? studyEffectiveDuration,
    Period? studyEffectivePeriod,
    Timing? studyEffectiveTiming,
    String? studyEffectiveDescription,
    String? studyEffectiveGroupMeasure,
    Duration? studyEffectiveTimeFromStart,
    CodeableConcept? unitOfMeasure,
    List<UsageContext>? usageContext,
  }) {
    return ResearchElementDefinitionCharacteristic(
      definitionCanonical: definitionCanonical ?? this.definitionCanonical,
      definitionCodeableConcept:
          definitionCodeableConcept ?? this.definitionCodeableConcept,
      definitionDataRequirement:
          definitionDataRequirement ?? this.definitionDataRequirement,
      definitionExpression: definitionExpression ?? this.definitionExpression,
      exclude: exclude ?? this.exclude,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      participantEffectiveDateTime:
          participantEffectiveDateTime ?? this.participantEffectiveDateTime,
      participantEffectiveDuration:
          participantEffectiveDuration ?? this.participantEffectiveDuration,
      participantEffectivePeriod:
          participantEffectivePeriod ?? this.participantEffectivePeriod,
      participantEffectiveTiming:
          participantEffectiveTiming ?? this.participantEffectiveTiming,
      participantEffectiveDescription: participantEffectiveDescription ??
          this.participantEffectiveDescription,
      participantEffectiveGroupMeasure: participantEffectiveGroupMeasure ??
          this.participantEffectiveGroupMeasure,
      participantEffectiveTimeFromStart: participantEffectiveTimeFromStart ??
          this.participantEffectiveTimeFromStart,
      studyEffectiveDateTime:
          studyEffectiveDateTime ?? this.studyEffectiveDateTime,
      studyEffectiveDuration:
          studyEffectiveDuration ?? this.studyEffectiveDuration,
      studyEffectivePeriod: studyEffectivePeriod ?? this.studyEffectivePeriod,
      studyEffectiveTiming: studyEffectiveTiming ?? this.studyEffectiveTiming,
      studyEffectiveDescription:
          studyEffectiveDescription ?? this.studyEffectiveDescription,
      studyEffectiveGroupMeasure:
          studyEffectiveGroupMeasure ?? this.studyEffectiveGroupMeasure,
      studyEffectiveTimeFromStart:
          studyEffectiveTimeFromStart ?? this.studyEffectiveTimeFromStart,
      unitOfMeasure: unitOfMeasure ?? this.unitOfMeasure,
      usageContext: usageContext ?? this.usageContext,
    );
  }
}
