part of '../fhir_dart.dart';

/// What defines the members of the evidence element
/// A characteristic that defines the members of the evidence element. Multiple characteristics are applied with "and" semantics.
/// Characteristics can be defined flexibly to accommodate different use cases for membership criteria, ranging from simple codes, all the way to using an expression language to express the criteria.
class EvidenceVariableCharacteristic extends BackboneElement
    implements FhirResource {
  /// What code or expression defines members?
  /// Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
  final String? definitionCanonical;

  /// What code or expression defines members?
  /// Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
  final CodeableConcept? definitionCodeableConcept;

  /// What code or expression defines members?
  /// Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
  final DataRequirement? definitionDataRequirement;

  /// What code or expression defines members?
  /// Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
  final Expression? definitionExpression;

  /// What code or expression defines members?
  /// Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
  final Reference? definitionReference;

  /// What code or expression defines members?
  /// Define members of the evidence element using Codes (such as condition, medication, or observation), Expressions ( using an expression language such as FHIRPath or CQL) or DataRequirements (such as Diabetes diagnosis onset in the last year).
  final TriggerDefinition? definitionTriggerDefinition;

  /// Natural language description of the characteristic
  /// A short, natural language description of the characteristic that could be used to communicate the criteria to an end-user.
  final String? description;

  /// Whether the characteristic includes or excludes members
  /// When true, members with this characteristic are excluded from the element.
  final bool? exclude;

  /// Indicates how elements are aggregated within the study effective period.
  final String?
      groupMeasure; // Possible values: 'mean', 'median', 'mean-of-mean', 'mean-of-median', 'median-of-mean', 'median-of-median'
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

  /// Observation time from study start
  /// Indicates duration from the participant's study entry.
  final Duration? timeFromStart;

  /// What code/value pairs define members?
  /// Use UsageContext to define the members of the population, such as Age Ranges, Genders, Settings.
  final List<UsageContext>? usageContext;
  EvidenceVariableCharacteristic({
    this.definitionCanonical,
    this.definitionCodeableConcept,
    this.definitionDataRequirement,
    this.definitionExpression,
    this.definitionReference,
    this.definitionTriggerDefinition,
    this.description,
    this.exclude,
    super.fhirExtension,
    this.groupMeasure,
    super.id,
    super.modifierExtension,
    this.participantEffectiveDateTime,
    this.participantEffectiveDuration,
    this.participantEffectivePeriod,
    this.participantEffectiveTiming,
    this.timeFromStart,
    this.usageContext,
  });

  @override
  factory EvidenceVariableCharacteristic.fromJson(Map<String, dynamic> json) {
    return EvidenceVariableCharacteristic(
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
      definitionReference: json['definitionReference'] != null
          ? Reference.fromJson(
              json['definitionReference'] as Map<String, dynamic>)
          : null,
      definitionTriggerDefinition: json['definitionTriggerDefinition'] != null
          ? TriggerDefinition.fromJson(
              json['definitionTriggerDefinition'] as Map<String, dynamic>)
          : null,
      description: json['description'] as String?,
      exclude: json['exclude'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupMeasure: json['groupMeasure'] as String?,
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
      timeFromStart: json['timeFromStart'] != null
          ? Duration.fromJson(json['timeFromStart'] as Map<String, dynamic>)
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
        'definitionReference': definitionReference?.toJson(),
        'definitionTriggerDefinition': definitionTriggerDefinition?.toJson(),
        'description': description,
        'exclude': exclude,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'groupMeasure': groupMeasure,
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'participantEffectiveDateTime': participantEffectiveDateTime,
        'participantEffectiveDuration': participantEffectiveDuration?.toJson(),
        'participantEffectivePeriod': participantEffectivePeriod?.toJson(),
        'participantEffectiveTiming': participantEffectiveTiming?.toJson(),
        'timeFromStart': timeFromStart?.toJson(),
        'usageContext': usageContext?.map((e) => e.toJson()).toList(),
      };

  @override
  EvidenceVariableCharacteristic copyWith({
    String? definitionCanonical,
    CodeableConcept? definitionCodeableConcept,
    DataRequirement? definitionDataRequirement,
    Expression? definitionExpression,
    Reference? definitionReference,
    TriggerDefinition? definitionTriggerDefinition,
    String? description,
    bool? exclude,
    List<Extension>? fhirExtension,
    String? groupMeasure,
    String? id,
    List<Extension>? modifierExtension,
    String? participantEffectiveDateTime,
    Duration? participantEffectiveDuration,
    Period? participantEffectivePeriod,
    Timing? participantEffectiveTiming,
    Duration? timeFromStart,
    List<UsageContext>? usageContext,
  }) {
    return EvidenceVariableCharacteristic(
      definitionCanonical: definitionCanonical ?? this.definitionCanonical,
      definitionCodeableConcept:
          definitionCodeableConcept ?? this.definitionCodeableConcept,
      definitionDataRequirement:
          definitionDataRequirement ?? this.definitionDataRequirement,
      definitionExpression: definitionExpression ?? this.definitionExpression,
      definitionReference: definitionReference ?? this.definitionReference,
      definitionTriggerDefinition:
          definitionTriggerDefinition ?? this.definitionTriggerDefinition,
      description: description ?? this.description,
      exclude: exclude ?? this.exclude,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      groupMeasure: groupMeasure ?? this.groupMeasure,
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
      timeFromStart: timeFromStart ?? this.timeFromStart,
      usageContext: usageContext ?? this.usageContext,
    );
  }
}
