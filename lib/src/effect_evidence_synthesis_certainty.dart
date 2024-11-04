part of '../fhir_dart.dart';

/// How certain is the effect
/// A description of the certainty of the effect estimate.
class EffectEvidenceSynthesisCertainty extends BackboneElement
    implements FhirResource {
  /// A component that contributes to the overall certainty
  /// A description of a component of the overall certainty.
  final List<EffectEvidenceSynthesisCertaintyCertaintySubcomponent>?
      certaintySubcomponent;

  /// Used for footnotes or explanatory notes
  /// A human-readable string to clarify or explain concepts about the resource.
  final List<Annotation>? note;

  /// Certainty rating
  /// A rating of the certainty of the effect estimate.
  final List<CodeableConcept>? rating;
  EffectEvidenceSynthesisCertainty({
    this.certaintySubcomponent,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.note,
    this.rating,
  });

  @override
  factory EffectEvidenceSynthesisCertainty.fromJson(Map<String, dynamic> json) {
    return EffectEvidenceSynthesisCertainty(
      certaintySubcomponent: (json['certaintySubcomponent'] as List<dynamic>?)
          ?.map((e) =>
              EffectEvidenceSynthesisCertaintyCertaintySubcomponent.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: (json['rating'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'certaintySubcomponent':
            certaintySubcomponent?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'rating': rating?.map((e) => e.toJson()).toList(),
      };

  @override
  EffectEvidenceSynthesisCertainty copyWith({
    List<EffectEvidenceSynthesisCertaintyCertaintySubcomponent>?
        certaintySubcomponent,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    List<CodeableConcept>? rating,
  }) {
    return EffectEvidenceSynthesisCertainty(
      certaintySubcomponent:
          certaintySubcomponent ?? this.certaintySubcomponent,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      rating: rating ?? this.rating,
    );
  }
}
