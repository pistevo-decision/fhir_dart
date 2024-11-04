part of '../fhir_dart.dart';

/// Describe the undesirable effects of the medicinal product.
class MedicinalProductUndesirableEffect extends DomainResource
    implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'MedicinalProductUndesirableEffect';

  /// Classification of the effect.
  final CodeableConcept? classification;

  /// The frequency of occurrence of the effect.
  final CodeableConcept? frequencyOfOccurrence;

  /// The population group to which this applies.
  final List<Population>? population;

  /// The medication for which this is an indication.
  final List<Reference>? subject;

  /// The symptom, condition or undesirable effect.
  final CodeableConcept? symptomConditionEffect;
  MedicinalProductUndesirableEffect({
    this.classification,
    super.contained,
    super.fhirExtension,
    this.frequencyOfOccurrence,
    super.id,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.population,
    this.subject,
    this.symptomConditionEffect,
    super.text,
  });

  @override
  factory MedicinalProductUndesirableEffect.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductUndesirableEffect(
      classification: json['classification'] != null
          ? CodeableConcept.fromJson(
              json['classification'] as Map<String, dynamic>)
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      frequencyOfOccurrence: json['frequencyOfOccurrence'] != null
          ? CodeableConcept.fromJson(
              json['frequencyOfOccurrence'] as Map<String, dynamic>)
          : null,
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      population: (json['population'] as List<dynamic>?)
          ?.map((e) => Population.fromJson(e as Map<String, dynamic>))
          .toList(),
      subject: (json['subject'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      symptomConditionEffect: json['symptomConditionEffect'] != null
          ? CodeableConcept.fromJson(
              json['symptomConditionEffect'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'classification': classification?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'frequencyOfOccurrence': frequencyOfOccurrence?.toJson(),
        'id': id,
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'population': population?.map((e) => e.toJson()).toList(),
        'subject': subject?.map((e) => e.toJson()).toList(),
        'symptomConditionEffect': symptomConditionEffect?.toJson(),
        'text': text?.toJson(),
      };

  @override
  MedicinalProductUndesirableEffect copyWith({
    CodeableConcept? classification,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    CodeableConcept? frequencyOfOccurrence,
    String? id,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Population>? population,
    List<Reference>? subject,
    CodeableConcept? symptomConditionEffect,
    Narrative? text,
  }) {
    return MedicinalProductUndesirableEffect(
      classification: classification ?? this.classification,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      frequencyOfOccurrence:
          frequencyOfOccurrence ?? this.frequencyOfOccurrence,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      population: population ?? this.population,
      subject: subject ?? this.subject,
      symptomConditionEffect:
          symptomConditionEffect ?? this.symptomConditionEffect,
      text: text ?? this.text,
    );
  }
}
