part of '../fhir_dart.dart';

 /// Subunits are listed in order of decreasing length; sequences of the same length will be ordered by molecular weight; subunits that have identical sequences will be repeated multiple times.
class SubstanceNucleicAcidSubunit extends BackboneElement implements FhirResource {
   /// The nucleotide present at the 5’ terminal shall be specified based on a controlled vocabulary. Since the sequence is represented from the 5' to the 3' end, the 5’ prime nucleotide is the letter at the first position in the sequence. A separate representation would be redundant.
  final CodeableConcept? fivePrime;
   /// The length of the sequence shall be captured.
  final int? length;
   /// The linkages between sugar residues will also be captured.
  final List<SubstanceNucleicAcidSubunitLinkage>? linkage;
   /// Actual nucleotide sequence notation from 5' to 3' end using standard single letter codes. In addition to the base sequence, sugar and type of phosphate or non-phosphate linkage should also be captured.
  final String? sequence;
   /// (TBC).
  final Attachment? sequenceAttachment;
   /// Index of linear sequences of nucleic acids in order of decreasing length. Sequences of the same length will be ordered by molecular weight. Subunits that have identical sequences will be repeated and have sequential subscripts.
  final int? subunit;
   /// 5.3.6.8.1 Sugar ID (Mandatory).
  final List<SubstanceNucleicAcidSubunitSugar>? sugar;
   /// The nucleotide present at the 3’ terminal shall be specified based on a controlled vocabulary. Since the sequence is represented from the 5' to the 3' end, the 5’ prime nucleotide is the letter at the last position in the sequence. A separate representation would be redundant.
  final CodeableConcept? threePrime;
  SubstanceNucleicAcidSubunit({
    super.fhirExtension,
    this.fivePrime,
    super.id,
    this.length,
    this.linkage,
    super.modifierExtension,
    this.sequence,
    this.sequenceAttachment,
    this.subunit,
    this.sugar,
    this.threePrime,
  });
  
  @override
  factory SubstanceNucleicAcidSubunit.fromJson(Map<String, dynamic> json) {
    return SubstanceNucleicAcidSubunit(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      fivePrime: json['fivePrime'] != null ? CodeableConcept.fromJson(json['fivePrime'] as Map<String, dynamic>) : null,
      id: json['id'] as String?,
      length: json['length'] as int?,
      linkage: (json['linkage'] as List<dynamic>?)?.map((e) => SubstanceNucleicAcidSubunitLinkage.fromJson(e as Map<String, dynamic>)).toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      sequence: json['sequence'] as String?,
      sequenceAttachment: json['sequenceAttachment'] != null ? Attachment.fromJson(json['sequenceAttachment'] as Map<String, dynamic>) : null,
      subunit: json['subunit'] as int?,
      sugar: (json['sugar'] as List<dynamic>?)?.map((e) => SubstanceNucleicAcidSubunitSugar.fromJson(e as Map<String, dynamic>)).toList(),
      threePrime: json['threePrime'] != null ? CodeableConcept.fromJson(json['threePrime'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'fivePrime': fivePrime?.toJson(),
      'id': id,
      'length': length,
      'linkage': linkage?.map((e) => e.toJson()).toList(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'sequence': sequence,
      'sequenceAttachment': sequenceAttachment?.toJson(),
      'subunit': subunit,
      'sugar': sugar?.map((e) => e.toJson()).toList(),
      'threePrime': threePrime?.toJson(),
    };
  
  @override
  SubstanceNucleicAcidSubunit copyWith({
    List<Extension>? fhirExtension,
    CodeableConcept? fivePrime,
    String? id,
    int? length,
    List<SubstanceNucleicAcidSubunitLinkage>? linkage,
    List<Extension>? modifierExtension,
    String? sequence,
    Attachment? sequenceAttachment,
    int? subunit,
    List<SubstanceNucleicAcidSubunitSugar>? sugar,
    CodeableConcept? threePrime,
  }) {
    return SubstanceNucleicAcidSubunit(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      fivePrime: fivePrime ?? this.fivePrime,
      id: id ?? this.id,
      length: length ?? this.length,
      linkage: linkage ?? this.linkage,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceAttachment: sequenceAttachment ?? this.sequenceAttachment,
      subunit: subunit ?? this.subunit,
      sugar: sugar ?? this.sugar,
      threePrime: threePrime ?? this.threePrime,
    );
  }
}
