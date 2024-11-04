part of '../fhir_dart.dart';

/// What sample size was involved?
/// A description of the size of the sample involved in the synthesis.
class RiskEvidenceSynthesisSampleSize extends BackboneElement
    implements FhirResource {
  /// Description of sample size
  /// Human-readable summary of sample size.
  final String? description;

  /// How many participants?
  /// Number of participants included in this evidence synthesis.
  final int? numberOfParticipants;

  /// How many studies?
  /// Number of studies included in this evidence synthesis.
  final int? numberOfStudies;
  RiskEvidenceSynthesisSampleSize({
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.numberOfParticipants,
    this.numberOfStudies,
  });

  @override
  factory RiskEvidenceSynthesisSampleSize.fromJson(Map<String, dynamic> json) {
    return RiskEvidenceSynthesisSampleSize(
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      numberOfParticipants: json['numberOfParticipants'] as int?,
      numberOfStudies: json['numberOfStudies'] as int?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'numberOfParticipants': numberOfParticipants,
        'numberOfStudies': numberOfStudies,
      };

  @override
  RiskEvidenceSynthesisSampleSize copyWith({
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    int? numberOfParticipants,
    int? numberOfStudies,
  }) {
    return RiskEvidenceSynthesisSampleSize(
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      numberOfParticipants: numberOfParticipants ?? this.numberOfParticipants,
      numberOfStudies: numberOfStudies ?? this.numberOfStudies,
    );
  }
}
