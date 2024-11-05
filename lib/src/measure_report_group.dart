part of '../fhir_dart.dart';

/// Measure results for each group
/// The results of the calculation, one for each population group in the measure.
class MeasureReportGroup extends BackboneElement implements FhirResource {
  /// Meaning of the group
  /// The meaning of the population group as defined in the measure definition.
  final CodeableConcept? code;

  /// What score this group achieved
  /// The measure score for this population group, calculated as appropriate for the measure type and scoring method, and based on the contents of the populations defined in the group.
  final Quantity? measureScore;

  /// The populations in the group
  /// The populations that make up the population group, one for each type of population appropriate for the measure.
  final List<MeasureReportGroupPopulation>? population;

  /// Stratification results
  /// When a measure includes multiple stratifiers, there will be a stratifier group for each stratifier defined by the measure.
  final List<MeasureReportGroupStratifier>? stratifier;
  MeasureReportGroup({
    this.code,
    super.fhirExtension,
    super.id,
    this.measureScore,
    super.modifierExtension,
    this.population,
    this.stratifier,
  });

  @override
  factory MeasureReportGroup.fromJson(Map<String, dynamic> json) {
    return MeasureReportGroup(
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              (json['code'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      measureScore: json['measureScore'] != null
          ? Quantity.fromJson(
              (json['measureScore'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      population: (json['population'] as List<dynamic>?)
          ?.map((e) => MeasureReportGroupPopulation.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      stratifier: (json['stratifier'] as List<dynamic>?)
          ?.map((e) => MeasureReportGroupStratifier.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'measureScore': measureScore?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'population': population?.map((e) => e.toJson()).toList(),
        'stratifier': stratifier?.map((e) => e.toJson()).toList(),
      };

  @override
  MeasureReportGroup copyWith({
    CodeableConcept? code,
    List<Extension>? fhirExtension,
    String? id,
    Quantity? measureScore,
    List<Extension>? modifierExtension,
    List<MeasureReportGroupPopulation>? population,
    List<MeasureReportGroupStratifier>? stratifier,
  }) {
    return MeasureReportGroup(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      measureScore: measureScore ?? this.measureScore,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      population: population ?? this.population,
      stratifier: stratifier ?? this.stratifier,
    );
  }
}
