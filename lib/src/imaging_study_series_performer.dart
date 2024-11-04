part of '../fhir_dart.dart';

/// Who performed the series
/// Indicates who or what performed the series and how they were involved.
/// If the person who performed the series is not known, their Organization may be recorded. A patient, or related person, may be the performer, e.g. for patient-captured images.
class ImagingStudySeriesPerformer extends BackboneElement
    implements FhirResource {
  /// Who performed the series
  /// Indicates who or what performed the series.
  final Reference actor;

  /// Type of performance
  /// Distinguishes the type of involvement of the performer in the series.
  final CodeableConcept? function;
  ImagingStudySeriesPerformer({
    required this.actor,
    super.fhirExtension,
    this.function,
    super.id,
    super.modifierExtension,
  });

  @override
  factory ImagingStudySeriesPerformer.fromJson(Map<String, dynamic> json) {
    return ImagingStudySeriesPerformer(
      actor: Reference.fromJson(json['actor'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      function: json['function'] != null
          ? CodeableConcept.fromJson(json['function'] as Map<String, dynamic>)
          : null,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'actor': actor.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'function': function?.toJson(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  ImagingStudySeriesPerformer copyWith({
    Reference? actor,
    List<Extension>? fhirExtension,
    CodeableConcept? function,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return ImagingStudySeriesPerformer(
      actor: actor ?? this.actor,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      function: function ?? this.function,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
