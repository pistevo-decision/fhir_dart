part of '../fhir_dart.dart';

/// Stratifier criteria for the measure
/// The stratifier criteria for the measure report, specified as either the name of a valid CQL expression defined within a referenced library or a valid FHIR Resource Path.
class MeasureGroupStratifier extends BackboneElement implements FhirResource {
  /// Meaning of the stratifier
  /// Indicates a meaning for the stratifier. This can be as simple as a unique identifier, or it can establish meaning in a broader context by drawing from a terminology, allowing stratifiers to be correlated across measures.
  final CodeableConcept? code;

  /// Stratifier criteria component for the measure
  /// A component of the stratifier criteria for the measure report, specified as either the name of a valid CQL expression defined within a referenced library or a valid FHIR Resource Path.
  /// Stratifiers are defined either as a single criteria, or as a set of component criteria.
  final List<MeasureGroupStratifierComponent>? component;

  /// How the measure should be stratified
  /// An expression that specifies the criteria for the stratifier. This is typically the name of an expression defined within a referenced library, but it may also be a path to a stratifier element.
  final Expression? criteria;

  /// The human readable description of this stratifier criteria.
  final String? description;
  MeasureGroupStratifier({
    this.code,
    this.component,
    this.criteria,
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory MeasureGroupStratifier.fromJson(Map<String, dynamic> json) {
    return MeasureGroupStratifier(
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              (json['code'] as Map).cast<String, dynamic>())
          : null,
      component: (json['component'] as List<dynamic>?)
          ?.map((e) => MeasureGroupStratifierComponent.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      criteria: json['criteria'] != null
          ? Expression.fromJson(
              (json['criteria'] as Map).cast<String, dynamic>())
          : null,
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
        'component': component?.map((e) => e.toJson()).toList(),
        'criteria': criteria?.toJson(),
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  MeasureGroupStratifier copyWith({
    CodeableConcept? code,
    List<MeasureGroupStratifierComponent>? component,
    Expression? criteria,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return MeasureGroupStratifier(
      code: code ?? this.code,
      component: component ?? this.component,
      criteria: criteria ?? this.criteria,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
