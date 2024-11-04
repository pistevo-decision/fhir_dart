part of '../fhir_dart.dart';

/// Stratifier criteria component for the measure
/// A component of the stratifier criteria for the measure report, specified as either the name of a valid CQL expression defined within a referenced library or a valid FHIR Resource Path.
/// Stratifiers are defined either as a single criteria, or as a set of component criteria.
class MeasureGroupStratifierComponent extends BackboneElement
    implements FhirResource {
  /// Meaning of the stratifier component
  /// Indicates a meaning for the stratifier component. This can be as simple as a unique identifier, or it can establish meaning in a broader context by drawing from a terminology, allowing stratifiers to be correlated across measures.
  final CodeableConcept? code;

  /// Component of how the measure should be stratified
  /// An expression that specifies the criteria for this component of the stratifier. This is typically the name of an expression defined within a referenced library, but it may also be a path to a stratifier element.
  final Expression criteria;

  /// The human readable description of this stratifier component
  /// The human readable description of this stratifier criteria component.
  final String? description;
  MeasureGroupStratifierComponent({
    this.code,
    required this.criteria,
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory MeasureGroupStratifierComponent.fromJson(Map<String, dynamic> json) {
    return MeasureGroupStratifierComponent(
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      criteria: Expression.fromJson(json['criteria'] as Map<String, dynamic>),
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
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
  MeasureGroupStratifierComponent copyWith({
    CodeableConcept? code,
    Expression? criteria,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return MeasureGroupStratifierComponent(
      code: code ?? this.code,
      criteria: criteria ?? this.criteria,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
