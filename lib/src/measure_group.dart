part of '../fhir_dart.dart';

 /// Population criteria group
 /// A group of population criteria for the measure.
class MeasureGroup extends BackboneElement implements FhirResource {
   /// Meaning of the group
   /// Indicates a meaning for the group. This can be as simple as a unique identifier, or it can establish meaning in a broader context by drawing from a terminology, allowing groups to be correlated across measures.
  final CodeableConcept? code;
   /// Summary description
   /// The human readable description of this population group.
  final String? description;
   /// Population criteria
   /// A population criteria for the measure.
  final List<MeasureGroupPopulation>? population;
   /// Stratifier criteria for the measure
   /// The stratifier criteria for the measure report, specified as either the name of a valid CQL expression defined within a referenced library or a valid FHIR Resource Path.
  final List<MeasureGroupStratifier>? stratifier;
  MeasureGroup({
    this.code,
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.population,
    this.stratifier,
  });
  
  @override
  factory MeasureGroup.fromJson(Map<String, dynamic> json) {
    return MeasureGroup(
      code: json['code'] != null ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>) : null,
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      population: (json['population'] as List<dynamic>?)?.map((e) => MeasureGroupPopulation.fromJson(e as Map<String, dynamic>)).toList(),
      stratifier: (json['stratifier'] as List<dynamic>?)?.map((e) => MeasureGroupStratifier.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code?.toJson(),
      'description': description,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'population': population?.map((e) => e.toJson()).toList(),
      'stratifier': stratifier?.map((e) => e.toJson()).toList(),
    };
  
  @override
  MeasureGroup copyWith({
    CodeableConcept? code,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<MeasureGroupPopulation>? population,
    List<MeasureGroupStratifier>? stratifier,
  }) {
    return MeasureGroup(
      code: code ?? this.code,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      population: population ?? this.population,
      stratifier: stratifier ?? this.stratifier,
    );
  }
}
