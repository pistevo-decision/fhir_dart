part of '../fhir_dart.dart';

/// Todo.
class SubstanceReferenceInformationClassification extends BackboneElement
    implements FhirResource {
  /// Todo.
  final CodeableConcept? classification;

  /// Todo.
  final CodeableConcept? domain;

  /// Todo.
  final List<Reference>? source;

  /// Todo.
  final List<CodeableConcept>? subtype;
  SubstanceReferenceInformationClassification({
    this.classification,
    this.domain,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.source,
    this.subtype,
  });

  @override
  factory SubstanceReferenceInformationClassification.fromJson(
      Map<String, dynamic> json) {
    return SubstanceReferenceInformationClassification(
      classification: json['classification'] != null
          ? CodeableConcept.fromJson(
              (json['classification'] as Map).cast<String, dynamic>())
          : null,
      domain: json['domain'] != null
          ? CodeableConcept.fromJson(
              (json['domain'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      subtype: (json['subtype'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'classification': classification?.toJson(),
        'domain': domain?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'source': source?.map((e) => e.toJson()).toList(),
        'subtype': subtype?.map((e) => e.toJson()).toList(),
      };

  @override
  SubstanceReferenceInformationClassification copyWith({
    CodeableConcept? classification,
    CodeableConcept? domain,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<Reference>? source,
    List<CodeableConcept>? subtype,
  }) {
    return SubstanceReferenceInformationClassification(
      classification: classification ?? this.classification,
      domain: domain ?? this.domain,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
      subtype: subtype ?? this.subtype,
    );
  }
}
