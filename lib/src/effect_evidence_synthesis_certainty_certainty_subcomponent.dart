part of '../fhir_dart.dart';

 /// A component that contributes to the overall certainty
 /// A description of a component of the overall certainty.
class EffectEvidenceSynthesisCertaintyCertaintySubcomponent extends BackboneElement implements FhirResource {
   /// Used for footnotes or explanatory notes
   /// A human-readable string to clarify or explain concepts about the resource.
  final List<Annotation>? note;
   /// Subcomponent certainty rating
   /// A rating of a subcomponent of rating certainty.
  final List<CodeableConcept>? rating;
   /// Type of subcomponent of certainty rating.
  final CodeableConcept? type;
  EffectEvidenceSynthesisCertaintyCertaintySubcomponent({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.note,
    this.rating,
    this.type,
  });
  
  @override
  factory EffectEvidenceSynthesisCertaintyCertaintySubcomponent.fromJson(Map<String, dynamic> json) {
    return EffectEvidenceSynthesisCertaintyCertaintySubcomponent(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      note: (json['note'] as List<dynamic>?)?.map((e) => Annotation.fromJson(e as Map<String, dynamic>)).toList(),
      rating: (json['rating'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      type: json['type'] != null ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'note': note?.map((e) => e.toJson()).toList(),
      'rating': rating?.map((e) => e.toJson()).toList(),
      'type': type?.toJson(),
    };
  
  @override
  EffectEvidenceSynthesisCertaintyCertaintySubcomponent copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    List<CodeableConcept>? rating,
    CodeableConcept? type,
  }) {
    return EffectEvidenceSynthesisCertaintyCertaintySubcomponent(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      rating: rating ?? this.rating,
      type: type ?? this.type,
    );
  }
}
