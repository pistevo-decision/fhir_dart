part of '../fhir_dart.dart';

/// Todo.
class SubstanceReferenceInformationGene extends BackboneElement
    implements FhirResource {
  /// Todo.
  final CodeableConcept? gene;

  /// Todo.
  final CodeableConcept? geneSequenceOrigin;

  /// Todo.
  final List<Reference>? source;
  SubstanceReferenceInformationGene({
    super.fhirExtension,
    this.gene,
    this.geneSequenceOrigin,
    super.id,
    super.modifierExtension,
    this.source,
  });

  @override
  factory SubstanceReferenceInformationGene.fromJson(
      Map<String, dynamic> json) {
    return SubstanceReferenceInformationGene(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      gene: json['gene'] != null
          ? CodeableConcept.fromJson(
              (json['gene'] as Map).cast<String, dynamic>())
          : null,
      geneSequenceOrigin: json['geneSequenceOrigin'] != null
          ? CodeableConcept.fromJson(
              (json['geneSequenceOrigin'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'gene': gene?.toJson(),
        'geneSequenceOrigin': geneSequenceOrigin?.toJson(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'source': source?.map((e) => e.toJson()).toList(),
      };

  @override
  SubstanceReferenceInformationGene copyWith({
    List<Extension>? fhirExtension,
    CodeableConcept? gene,
    CodeableConcept? geneSequenceOrigin,
    String? id,
    List<Extension>? modifierExtension,
    List<Reference>? source,
  }) {
    return SubstanceReferenceInformationGene(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      gene: gene ?? this.gene,
      geneSequenceOrigin: geneSequenceOrigin ?? this.geneSequenceOrigin,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
    );
  }
}
