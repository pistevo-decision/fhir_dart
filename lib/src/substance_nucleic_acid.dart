part of '../fhir_dart.dart';

 /// Nucleic acids are defined by three distinct elements: the base, sugar and linkage. Individual substance/moiety IDs will be created for each of these elements. The nucleotide sequence will be always entered in the 5’-3’ direction.
class SubstanceNucleicAcid extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'SubstanceNucleicAcid';
   /// The area of hybridisation shall be described if applicable for double stranded RNA or DNA. The number associated with the subunit followed by the number associated to the residue shall be specified in increasing order. The underscore “” shall be used as separator as follows: “Subunitnumber Residue”.
  final String? areaOfHybridisation;
   /// The number of linear sequences of nucleotides linked through phosphodiester bonds shall be described. Subunits would be strands of nucleic acids that are tightly associated typically through Watson-Crick base pairing. NOTE: If not specified in the reference source, the assumption is that there is 1 subunit.
  final int? numberOfSubunits;
   /// (TBC).
  final CodeableConcept? oligoNucleotideType;
   /// The type of the sequence shall be specified based on a controlled vocabulary.
  final CodeableConcept? sequenceType;
   /// Subunits are listed in order of decreasing length; sequences of the same length will be ordered by molecular weight; subunits that have identical sequences will be repeated multiple times.
  final List<SubstanceNucleicAcidSubunit>? subunit;
  SubstanceNucleicAcid({
    this.areaOfHybridisation,
    super.contained,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.numberOfSubunits,
    this.oligoNucleotideType,
    this.sequenceType,
    this.subunit,
    super.text,
  });
  
  @override
  factory SubstanceNucleicAcid.fromJson(Map<String, dynamic> json) {
    return SubstanceNucleicAcid(
      areaOfHybridisation: json['areaOfHybridisation'] as String?,
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      numberOfSubunits: json['numberOfSubunits'] as int?,
      oligoNucleotideType: json['oligoNucleotideType'] != null ? CodeableConcept.fromJson(json['oligoNucleotideType'] as Map<String, dynamic>) : null,
      sequenceType: json['sequenceType'] != null ? CodeableConcept.fromJson(json['sequenceType'] as Map<String, dynamic>) : null,
      subunit: (json['subunit'] as List<dynamic>?)?.map((e) => SubstanceNucleicAcidSubunit.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'areaOfHybridisation': areaOfHybridisation,
      'contained': contained?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'implicitRules': implicitRules,
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'numberOfSubunits': numberOfSubunits,
      'oligoNucleotideType': oligoNucleotideType?.toJson(),
      'sequenceType': sequenceType?.toJson(),
      'subunit': subunit?.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
    };
  
  @override
  SubstanceNucleicAcid copyWith({
    String? areaOfHybridisation,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    int? numberOfSubunits,
    CodeableConcept? oligoNucleotideType,
    CodeableConcept? sequenceType,
    List<SubstanceNucleicAcidSubunit>? subunit,
    Narrative? text,
  }) {
    return SubstanceNucleicAcid(
      areaOfHybridisation: areaOfHybridisation ?? this.areaOfHybridisation,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      numberOfSubunits: numberOfSubunits ?? this.numberOfSubunits,
      oligoNucleotideType: oligoNucleotideType ?? this.oligoNucleotideType,
      sequenceType: sequenceType ?? this.sequenceType,
      subunit: subunit ?? this.subunit,
      text: text ?? this.text,
    );
  }
}
