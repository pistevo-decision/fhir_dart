part of '../fhir_dart.dart';

/// Population criteria
/// A population criteria for the measure.
class MeasureGroupPopulation extends BackboneElement implements FhirResource {
  /// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | measure-population | measure-population-exclusion | measure-observation
  /// The type of population criteria.
  final CodeableConcept? code;

  /// The criteria that defines this population
  /// An expression that specifies the criteria for the population, typically the name of an expression in a library.
  /// In the case of a continuous-variable or ratio measure, this may be the name of a function that calculates the value of the individual observation for each patient or event in the population. For these types of measures, individual observations are reported as observation resources included in the evaluatedResources bundle for each patient. See the MeasureReport resource or the Quality Reporting topic for more information.
  final Expression criteria;

  /// The human readable description of this population criteria.
  final String? description;
  MeasureGroupPopulation({
    this.code,
    required this.criteria,
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory MeasureGroupPopulation.fromJson(Map<String, dynamic> json) {
    return MeasureGroupPopulation(
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              (json['code'] as Map).cast<String, dynamic>())
          : null,
      criteria: Expression.fromJson(
          (json['criteria'] as Map).cast<String, dynamic>()),
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code?.toJson(),
        'criteria': criteria.toJson(),
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  MeasureGroupPopulation copyWith({
    CodeableConcept? code,
    Expression? criteria,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return MeasureGroupPopulation(
      code: code ?? this.code,
      criteria: criteria ?? this.criteria,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
