part of '../fhir_dart.dart';

/// Defined path through the study for a subject
/// Describes an expected sequence of events for one of the participants of a study.  E.g. Exposure to drug A, wash-out, exposure to drug B, wash-out, follow-up.
class ResearchStudyArm extends BackboneElement implements FhirResource {
  /// Short explanation of study path
  /// A succinct description of the path through the study that would be followed by a subject adhering to this arm.
  final String? description;

  /// Label for study arm
  /// Unique, human-readable label for this arm of the study.
  final String name;

  /// Categorization of study arm, e.g. experimental, active comparator, placebo comparater.
  final CodeableConcept? type;
  ResearchStudyArm({
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.name,
    this.type,
  });

  @override
  factory ResearchStudyArm.fromJson(Map<String, dynamic> json) {
    return ResearchStudyArm(
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'type': type?.toJson(),
      };

  @override
  ResearchStudyArm copyWith({
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    CodeableConcept? type,
  }) {
    return ResearchStudyArm(
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }
}
