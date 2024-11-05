part of '../fhir_dart.dart';

/// The list of diagnosis relevant to this episode of care.
class EpisodeOfCareDiagnosis extends BackboneElement implements FhirResource {
  /// Conditions/problems/diagnoses this episode of care is for
  /// A list of conditions/problems/diagnoses that this episode of care is intended to be providing care for.
  final Reference condition;

  /// Ranking of the diagnosis (for each role type).
  final int? rank;

  /// Role that this diagnosis has within the episode of care (e.g. admission, billing, discharge …).
  final CodeableConcept? role;
  EpisodeOfCareDiagnosis({
    required this.condition,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.rank,
    this.role,
  });

  @override
  factory EpisodeOfCareDiagnosis.fromJson(Map<String, dynamic> json) {
    return EpisodeOfCareDiagnosis(
      condition: Reference.fromJson(
          (json['condition'] as Map).cast<String, dynamic>()),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      rank: json['rank'] as int?,
      role: json['role'] != null
          ? CodeableConcept.fromJson(
              (json['role'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'condition': condition.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'rank': rank,
        'role': role?.toJson(),
      };

  @override
  EpisodeOfCareDiagnosis copyWith({
    Reference? condition,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    int? rank,
    CodeableConcept? role,
  }) {
    return EpisodeOfCareDiagnosis(
      condition: condition ?? this.condition,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      rank: rank ?? this.rank,
      role: role ?? this.role,
    );
  }
}
