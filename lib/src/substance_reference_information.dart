part of '../fhir_dart.dart';

/// Todo.
class SubstanceReferenceInformation extends DomainResource
    implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'SubstanceReferenceInformation';

  /// Todo.
  final List<SubstanceReferenceInformationClassification>? classification;

  /// Todo.
  final String? comment;

  /// Todo.
  final List<SubstanceReferenceInformationGene>? gene;

  /// Todo.
  final List<SubstanceReferenceInformationGeneElement>? geneElement;

  /// Todo.
  final List<SubstanceReferenceInformationTarget>? target;
  SubstanceReferenceInformation({
    this.classification,
    this.comment,
    super.contained,
    super.fhirExtension,
    this.gene,
    this.geneElement,
    super.id,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.target,
    super.text,
  });

  @override
  factory SubstanceReferenceInformation.fromJson(Map<String, dynamic> json) {
    return SubstanceReferenceInformation(
      classification: (json['classification'] as List<dynamic>?)
          ?.map((e) => SubstanceReferenceInformationClassification.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      comment: json['comment'] as String?,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      gene: (json['gene'] as List<dynamic>?)
          ?.map((e) => SubstanceReferenceInformationGene.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      geneElement: (json['geneElement'] as List<dynamic>?)
          ?.map((e) => SubstanceReferenceInformationGeneElement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      target: (json['target'] as List<dynamic>?)
          ?.map((e) => SubstanceReferenceInformationTarget.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'classification': classification?.map((e) => e.toJson()).toList(),
        'comment': comment,
        'contained': contained?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'gene': gene?.map((e) => e.toJson()).toList(),
        'geneElement': geneElement?.map((e) => e.toJson()).toList(),
        'id': id,
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'target': target?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  SubstanceReferenceInformation copyWith({
    List<SubstanceReferenceInformationClassification>? classification,
    String? comment,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    List<SubstanceReferenceInformationGene>? gene,
    List<SubstanceReferenceInformationGeneElement>? geneElement,
    String? id,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<SubstanceReferenceInformationTarget>? target,
    Narrative? text,
  }) {
    return SubstanceReferenceInformation(
      classification: classification ?? this.classification,
      comment: comment ?? this.comment,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      gene: gene ?? this.gene,
      geneElement: geneElement ?? this.geneElement,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      target: target ?? this.target,
      text: text ?? this.text,
    );
  }
}
