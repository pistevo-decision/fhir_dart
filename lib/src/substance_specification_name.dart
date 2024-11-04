part of '../fhir_dart.dart';

/// Names applicable to this substance.
class SubstanceSpecificationName extends BackboneElement
    implements FhirResource {
  /// The use context of this name for example if there is a different name a drug active ingredient as opposed to a food colour additive.
  final List<CodeableConcept>? domain;

  /// The jurisdiction where this name applies.
  final List<CodeableConcept>? jurisdiction;

  /// Language of the name.
  final List<CodeableConcept>? language;

  /// The actual name.
  final String name;

  /// Details of the official nature of this name.
  final List<SubstanceSpecificationNameOfficial>? official;

  /// If this is the preferred name for this substance.
  final bool? preferred;

  /// Supporting literature.
  final List<Reference>? source;

  /// The status of the name.
  final CodeableConcept? status;

  /// A synonym of this name.
  final List<SubstanceSpecificationName>? synonym;

  /// A translation for this name.
  final List<SubstanceSpecificationName>? translation;

  /// Name type.
  final CodeableConcept? type;
  SubstanceSpecificationName({
    this.domain,
    super.fhirExtension,
    super.id,
    this.jurisdiction,
    this.language,
    super.modifierExtension,
    required this.name,
    this.official,
    this.preferred,
    this.source,
    this.status,
    this.synonym,
    this.translation,
    this.type,
  });

  @override
  factory SubstanceSpecificationName.fromJson(Map<String, dynamic> json) {
    return SubstanceSpecificationName(
      domain: (json['domain'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      language: (json['language'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      official: (json['official'] as List<dynamic>?)
          ?.map((e) => SubstanceSpecificationNameOfficial.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      preferred: json['preferred'] as bool?,
      source: (json['source'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] != null
          ? CodeableConcept.fromJson(json['status'] as Map<String, dynamic>)
          : null,
      synonym: (json['synonym'] as List<dynamic>?)
          ?.map((e) =>
              SubstanceSpecificationName.fromJson(e as Map<String, dynamic>))
          .toList(),
      translation: (json['translation'] as List<dynamic>?)
          ?.map((e) =>
              SubstanceSpecificationName.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'domain': domain?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'jurisdiction': jurisdiction?.map((e) => e.toJson()).toList(),
        'language': language?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'official': official?.map((e) => e.toJson()).toList(),
        'preferred': preferred,
        'source': source?.map((e) => e.toJson()).toList(),
        'status': status?.toJson(),
        'synonym': synonym?.map((e) => e.toJson()).toList(),
        'translation': translation?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
      };

  @override
  SubstanceSpecificationName copyWith({
    List<CodeableConcept>? domain,
    List<Extension>? fhirExtension,
    String? id,
    List<CodeableConcept>? jurisdiction,
    List<CodeableConcept>? language,
    List<Extension>? modifierExtension,
    String? name,
    List<SubstanceSpecificationNameOfficial>? official,
    bool? preferred,
    List<Reference>? source,
    CodeableConcept? status,
    List<SubstanceSpecificationName>? synonym,
    List<SubstanceSpecificationName>? translation,
    CodeableConcept? type,
  }) {
    return SubstanceSpecificationName(
      domain: domain ?? this.domain,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      language: language ?? this.language,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      official: official ?? this.official,
      preferred: preferred ?? this.preferred,
      source: source ?? this.source,
      status: status ?? this.status,
      synonym: synonym ?? this.synonym,
      translation: translation ?? this.translation,
      type: type ?? this.type,
    );
  }
}
