part of '../fhir_dart.dart';

/// A goal for the study
/// A goal that the study is aiming to achieve in terms of a scientific question to be answered by the analysis of data collected during the study.
class ResearchStudyObjective extends BackboneElement implements FhirResource {
  /// Label for the objective
  /// Unique, human-readable label for this objective of the study.
  final String? name;

  /// primary | secondary | exploratory
  /// The kind of study objective.
  final CodeableConcept? type;
  ResearchStudyObjective({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.name,
    this.type,
  });

  @override
  factory ResearchStudyObjective.fromJson(Map<String, dynamic> json) {
    return ResearchStudyObjective(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'type': type?.toJson(),
      };

  @override
  ResearchStudyObjective copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    CodeableConcept? type,
  }) {
    return ResearchStudyObjective(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }
}
