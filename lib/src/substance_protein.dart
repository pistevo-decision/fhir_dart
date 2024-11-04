part of '../fhir_dart.dart';

 /// A SubstanceProtein is defined as a single unit of a linear amino acid sequence, or a combination of subunits that are either covalently linked or have a defined invariant stoichiometric relationship. This includes all synthetic, recombinant and purified SubstanceProteins of defined sequence, whether the use is therapeutic or prophylactic. This set of elements will be used to describe albumins, coagulation factors, cytokines, growth factors, peptide/SubstanceProtein hormones, enzymes, toxins, toxoids, recombinant vaccines, and immunomodulators.
class SubstanceProtein extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'SubstanceProtein';
   /// The disulphide bond between two cysteine residues either on the same subunit or on two different subunits shall be described. The position of the disulfide bonds in the SubstanceProtein shall be listed in increasing order of subunit number and position within subunit followed by the abbreviation of the amino acids involved. The disulfide linkage positions shall actually contain the amino acid Cysteine at the respective positions.
  final List<String>? disulfideLinkage;
   /// Number of linear sequences of amino acids linked through peptide bonds. The number of subunits constituting the SubstanceProtein shall be described. It is possible that the number of subunits can be variable.
  final int? numberOfSubunits;
   /// The SubstanceProtein descriptive elements will only be used when a complete or partial amino acid sequence is available or derivable from a nucleic acid sequence.
  final CodeableConcept? sequenceType;
   /// This subclause refers to the description of each subunit constituting the SubstanceProtein. A subunit is a linear sequence of amino acids linked through peptide bonds. The Subunit information shall be provided when the finished SubstanceProtein is a complex of multiple sequences; subunits are not used to delineate domains within a single sequence. Subunits are listed in order of decreasing length; sequences of the same length will be ordered by decreasing molecular weight; subunits that have identical sequences will be repeated multiple times.
  final List<SubstanceProteinSubunit>? subunit;
  SubstanceProtein({
    super.contained,
    this.disulfideLinkage,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.numberOfSubunits,
    this.sequenceType,
    this.subunit,
    super.text,
  });
  
  @override
  factory SubstanceProtein.fromJson(Map<String, dynamic> json) {
    return SubstanceProtein(
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      disulfideLinkage: (json['disulfideLinkage'] as List<dynamic>?)?.map((e) => e as String).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      numberOfSubunits: json['numberOfSubunits'] as int?,
      sequenceType: json['sequenceType'] != null ? CodeableConcept.fromJson(json['sequenceType'] as Map<String, dynamic>) : null,
      subunit: (json['subunit'] as List<dynamic>?)?.map((e) => SubstanceProteinSubunit.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'contained': contained?.map((e) => e.toJson()).toList(),
      'disulfideLinkage': disulfideLinkage?.map((e) => e).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'implicitRules': implicitRules,
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'numberOfSubunits': numberOfSubunits,
      'sequenceType': sequenceType?.toJson(),
      'subunit': subunit?.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
    };
  
  @override
  SubstanceProtein copyWith({
    List<Resource>? contained,
    List<String>? disulfideLinkage,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    int? numberOfSubunits,
    CodeableConcept? sequenceType,
    List<SubstanceProteinSubunit>? subunit,
    Narrative? text,
  }) {
    return SubstanceProtein(
      contained: contained ?? this.contained,
      disulfideLinkage: disulfideLinkage ?? this.disulfideLinkage,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      numberOfSubunits: numberOfSubunits ?? this.numberOfSubunits,
      sequenceType: sequenceType ?? this.sequenceType,
      subunit: subunit ?? this.subunit,
      text: text ?? this.text,
    );
  }
}
