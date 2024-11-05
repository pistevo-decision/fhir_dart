part of '../fhir_dart.dart';

/// The detailed description of a substance, typically at a level beyond what is used for prescribing.
class SubstanceSpecification extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'SubstanceSpecification';

  /// Codes associated with the substance.
  final List<SubstanceSpecificationCode>? code;

  /// Textual comment about this record of a substance.
  final String? comment;

  /// Textual description of the substance.
  final String? description;

  /// If the substance applies to only human or veterinary use.
  final CodeableConcept? domain;

  /// Identifier by which this substance is known.
  final Identifier? identifier;

  /// Moiety, for structural modifications.
  final List<SubstanceSpecificationMoiety>? moiety;

  /// The molecular weight or weight range (for proteins, polymers or nucleic acids).
  final List<SubstanceSpecificationStructureIsotopeMolecularWeight>?
      molecularWeight;

  /// Names applicable to this substance.
  final List<SubstanceSpecificationName>? name;

  /// Data items specific to nucleic acids.
  final Reference? nucleicAcid;

  /// Data items specific to polymers.
  final Reference? polymer;

  /// General specifications for this substance, including how it is related to other substances.
  final List<SubstanceSpecificationProperty>? property;

  /// Data items specific to proteins.
  final Reference? protein;

  /// General information detailing this substance.
  final Reference? referenceInformation;

  /// A link between this substance and another, with details of the relationship.
  final List<SubstanceSpecificationRelationship>? relationship;

  /// Supporting literature.
  final List<Reference>? source;

  /// Material or taxonomic/anatomical source for the substance.
  final Reference? sourceMaterial;

  /// Status of substance within the catalogue e.g. approved.
  final CodeableConcept? status;

  /// Structural information.
  final SubstanceSpecificationStructure? structure;

  /// High level categorization, e.g. polymer or nucleic acid.
  final CodeableConcept? type;
  SubstanceSpecification({
    this.code,
    this.comment,
    super.contained,
    this.description,
    this.domain,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.moiety,
    this.molecularWeight,
    this.name,
    this.nucleicAcid,
    this.polymer,
    this.property,
    this.protein,
    this.referenceInformation,
    this.relationship,
    this.source,
    this.sourceMaterial,
    this.status,
    this.structure,
    super.text,
    this.type,
  });

  @override
  factory SubstanceSpecification.fromJson(Map<String, dynamic> json) {
    return SubstanceSpecification(
      code: (json['code'] as List<dynamic>?)
          ?.map((e) => SubstanceSpecificationCode.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      comment: json['comment'] as String?,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      description: json['description'] as String?,
      domain: json['domain'] != null
          ? CodeableConcept.fromJson(
              (json['domain'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              (json['identifier'] as Map).cast<String, dynamic>())
          : null,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      moiety: (json['moiety'] as List<dynamic>?)
          ?.map((e) => SubstanceSpecificationMoiety.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      molecularWeight: (json['molecularWeight'] as List<dynamic>?)
          ?.map((e) =>
              SubstanceSpecificationStructureIsotopeMolecularWeight.fromJson(
                  (e as Map).cast<String, dynamic>()))
          .toList(),
      name: (json['name'] as List<dynamic>?)
          ?.map((e) => SubstanceSpecificationName.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      nucleicAcid: json['nucleicAcid'] != null
          ? Reference.fromJson(
              (json['nucleicAcid'] as Map).cast<String, dynamic>())
          : null,
      polymer: json['polymer'] != null
          ? Reference.fromJson((json['polymer'] as Map).cast<String, dynamic>())
          : null,
      property: (json['property'] as List<dynamic>?)
          ?.map((e) => SubstanceSpecificationProperty.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      protein: json['protein'] != null
          ? Reference.fromJson((json['protein'] as Map).cast<String, dynamic>())
          : null,
      referenceInformation: json['referenceInformation'] != null
          ? Reference.fromJson(
              (json['referenceInformation'] as Map).cast<String, dynamic>())
          : null,
      relationship: (json['relationship'] as List<dynamic>?)
          ?.map((e) => SubstanceSpecificationRelationship.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      sourceMaterial: json['sourceMaterial'] != null
          ? Reference.fromJson(
              (json['sourceMaterial'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] != null
          ? CodeableConcept.fromJson(
              (json['status'] as Map).cast<String, dynamic>())
          : null,
      structure: json['structure'] != null
          ? SubstanceSpecificationStructure.fromJson(
              (json['structure'] as Map).cast<String, dynamic>())
          : null,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code?.map((e) => e.toJson()).toList(),
        'comment': comment,
        'contained': contained?.map((e) => e.toJson()).toList(),
        'description': description,
        'domain': domain?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.toJson(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'moiety': moiety?.map((e) => e.toJson()).toList(),
        'molecularWeight': molecularWeight?.map((e) => e.toJson()).toList(),
        'name': name?.map((e) => e.toJson()).toList(),
        'nucleicAcid': nucleicAcid?.toJson(),
        'polymer': polymer?.toJson(),
        'property': property?.map((e) => e.toJson()).toList(),
        'protein': protein?.toJson(),
        'referenceInformation': referenceInformation?.toJson(),
        'relationship': relationship?.map((e) => e.toJson()).toList(),
        'source': source?.map((e) => e.toJson()).toList(),
        'sourceMaterial': sourceMaterial?.toJson(),
        'status': status?.toJson(),
        'structure': structure?.toJson(),
        'text': text?.toJson(),
        'type': type?.toJson(),
      };

  @override
  SubstanceSpecification copyWith({
    List<SubstanceSpecificationCode>? code,
    String? comment,
    List<Resource>? contained,
    String? description,
    CodeableConcept? domain,
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<SubstanceSpecificationMoiety>? moiety,
    List<SubstanceSpecificationStructureIsotopeMolecularWeight>?
        molecularWeight,
    List<SubstanceSpecificationName>? name,
    Reference? nucleicAcid,
    Reference? polymer,
    List<SubstanceSpecificationProperty>? property,
    Reference? protein,
    Reference? referenceInformation,
    List<SubstanceSpecificationRelationship>? relationship,
    List<Reference>? source,
    Reference? sourceMaterial,
    CodeableConcept? status,
    SubstanceSpecificationStructure? structure,
    Narrative? text,
    CodeableConcept? type,
  }) {
    return SubstanceSpecification(
      code: code ?? this.code,
      comment: comment ?? this.comment,
      contained: contained ?? this.contained,
      description: description ?? this.description,
      domain: domain ?? this.domain,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      moiety: moiety ?? this.moiety,
      molecularWeight: molecularWeight ?? this.molecularWeight,
      name: name ?? this.name,
      nucleicAcid: nucleicAcid ?? this.nucleicAcid,
      polymer: polymer ?? this.polymer,
      property: property ?? this.property,
      protein: protein ?? this.protein,
      referenceInformation: referenceInformation ?? this.referenceInformation,
      relationship: relationship ?? this.relationship,
      source: source ?? this.source,
      sourceMaterial: sourceMaterial ?? this.sourceMaterial,
      status: status ?? this.status,
      structure: structure ?? this.structure,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
