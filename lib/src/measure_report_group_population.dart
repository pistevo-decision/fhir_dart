part of '../fhir_dart.dart';

/// The populations in the group
/// The populations that make up the population group, one for each type of population appropriate for the measure.
class MeasureReportGroupPopulation extends BackboneElement
    implements FhirResource {
  /// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | measure-population | measure-population-exclusion | measure-observation
  /// The type of the population.
  final CodeableConcept? code;

  /// Size of the population
  /// The number of members of the population.
  final int? count;

  /// For subject-list reports, the subject results in this population
  /// This element refers to a List of subject level MeasureReport resources, one for each subject in this population.
  final Reference? subjectResults;
  MeasureReportGroupPopulation({
    this.code,
    this.count,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.subjectResults,
  });

  @override
  factory MeasureReportGroupPopulation.fromJson(Map<String, dynamic> json) {
    return MeasureReportGroupPopulation(
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      count: json['count'] as int?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      subjectResults: json['subjectResults'] != null
          ? Reference.fromJson(json['subjectResults'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code?.toJson(),
        'count': count,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'subjectResults': subjectResults?.toJson(),
      };

  @override
  MeasureReportGroupPopulation copyWith({
    CodeableConcept? code,
    int? count,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? subjectResults,
  }) {
    return MeasureReportGroupPopulation(
      code: code ?? this.code,
      count: count ?? this.count,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      subjectResults: subjectResults ?? this.subjectResults,
    );
  }
}
