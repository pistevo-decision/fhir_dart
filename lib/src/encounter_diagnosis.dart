part of '../fhir_dart.dart';

/// The list of diagnosis relevant to this encounter.
class EncounterDiagnosis extends BackboneElement implements FhirResource {
  /// The diagnosis or procedure relevant to the encounter
  /// Reason the encounter takes place, as specified using information from another resource. For admissions, this is the admission diagnosis. The indication will typically be a Condition (with other resources referenced in the evidence.detail), or a Procedure.
  /// For systems that need to know which was the primary diagnosis, these will be marked with the standard extension primaryDiagnosis (which is a sequence value rather than a flag, 1 = primary diagnosis).
  final Reference condition;

  /// Ranking of the diagnosis (for each role type).
  final int? rank;

  /// Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …).
  final CodeableConcept? use;
  EncounterDiagnosis({
    required this.condition,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.rank,
    this.use,
  });

  @override
  factory EncounterDiagnosis.fromJson(Map<String, dynamic> json) {
    return EncounterDiagnosis(
      condition: Reference.fromJson(json['condition'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      rank: json['rank'] as int?,
      use: json['use'] != null
          ? CodeableConcept.fromJson(json['use'] as Map<String, dynamic>)
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
        'use': use?.toJson(),
      };

  @override
  EncounterDiagnosis copyWith({
    Reference? condition,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    int? rank,
    CodeableConcept? use,
  }) {
    return EncounterDiagnosis(
      condition: condition ?? this.condition,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      rank: rank ?? this.rank,
      use: use ?? this.use,
    );
  }
}
