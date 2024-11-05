part of '../fhir_dart.dart';

/// What other data should be reported with the measure
/// The supplemental data criteria for the measure report, specified as either the name of a valid CQL expression within a referenced library, or a valid FHIR Resource Path.
/// Note that supplemental data are reported as observations for each patient and included in the evaluatedResources bundle. See the MeasureReport resource or the Quality Reporting topic for more information.
class MeasureSupplementalData extends BackboneElement implements FhirResource {
  /// Meaning of the supplemental data
  /// Indicates a meaning for the supplemental data. This can be as simple as a unique identifier, or it can establish meaning in a broader context by drawing from a terminology, allowing supplemental data to be correlated across measures.
  final CodeableConcept? code;

  /// Expression describing additional data to be reported
  /// The criteria for the supplemental data. This is typically the name of a valid expression defined within a referenced library, but it may also be a path to a specific data element. The criteria defines the data to be returned for this element.
  final Expression criteria;

  /// The human readable description of this supplemental data.
  final String? description;

  /// supplemental-data | risk-adjustment-factor
  /// An indicator of the intended usage for the supplemental data element. Supplemental data indicates the data is additional information requested to augment the measure information. Risk adjustment factor indicates the data is additional information used to calculate risk adjustment factors when applying a risk model to the measure calculation.
  final List<CodeableConcept>? usage;
  MeasureSupplementalData({
    this.code,
    required this.criteria,
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.usage,
  });

  @override
  factory MeasureSupplementalData.fromJson(Map<String, dynamic> json) {
    return MeasureSupplementalData(
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
      usage: (json['usage'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
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
        'usage': usage?.map((e) => e.toJson()).toList(),
      };

  @override
  MeasureSupplementalData copyWith({
    CodeableConcept? code,
    Expression? criteria,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<CodeableConcept>? usage,
  }) {
    return MeasureSupplementalData(
      code: code ?? this.code,
      criteria: criteria ?? this.criteria,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      usage: usage ?? this.usage,
    );
  }
}
