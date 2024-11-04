part of '../fhir_dart.dart';

/// Variant in sequence
/// The definition of variant here originates from Sequence ontology ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)). This element can represent amino acid or nucleic sequence change(including insertion,deletion,SNP,etc.)  It can represent some complex mutation or segment variation with the assist of CIGAR string.
class MolecularSequenceVariant extends BackboneElement implements FhirResource {
  /// Extended CIGAR string for aligning the sequence with reference bases. See detailed documentation [here](http://support.illumina.com/help/SequencingAnalysisWorkflow/Content/Vault/Informatics/Sequencing_Analysis/CASAVA/swSEQ_mCA_ExtendedCIGARFormat.htm).
  final String? cigar;

  /// End position of the variant on the reference sequence. If the coordinate system is 0-based then end is exclusive and does not include the last position. If the coordinate system is 1-base, then end is inclusive and includes the last position.
  final int? end;

  /// Allele that was observed
  /// An allele is one of a set of coexisting sequence variants of a gene ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).  Nucleotide(s)/amino acids from start position of sequence to stop position of sequence on the positive (+) strand of the observed  sequence. When the sequence  type is DNA, it should be the sequence on the positive (+) strand. This will lay in the range between variant.start and variant.end.
  final String? observedAllele;

  /// Allele in the reference sequence
  /// An allele is one of a set of coexisting sequence variants of a gene ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)). Nucleotide(s)/amino acids from start position of sequence to stop position of sequence on the positive (+) strand of the reference sequence. When the sequence  type is DNA, it should be the sequence on the positive (+) strand. This will lay in the range between variant.start and variant.end.
  final String? referenceAllele;

  /// Start position of the variant on the  reference sequence. If the coordinate system is either 0-based or 1-based, then start position is inclusive.
  final int? start;

  /// Pointer to observed variant information
  /// A pointer to an Observation containing variant information.
  final Reference? variantPointer;
  MolecularSequenceVariant({
    this.cigar,
    this.end,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.observedAllele,
    this.referenceAllele,
    this.start,
    this.variantPointer,
  });

  @override
  factory MolecularSequenceVariant.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceVariant(
      cigar: json['cigar'] as String?,
      end: json['end'] as int?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      observedAllele: json['observedAllele'] as String?,
      referenceAllele: json['referenceAllele'] as String?,
      start: json['start'] as int?,
      variantPointer: json['variantPointer'] != null
          ? Reference.fromJson(json['variantPointer'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'cigar': cigar,
        'end': end,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'observedAllele': observedAllele,
        'referenceAllele': referenceAllele,
        'start': start,
        'variantPointer': variantPointer?.toJson(),
      };

  @override
  MolecularSequenceVariant copyWith({
    String? cigar,
    int? end,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? observedAllele,
    String? referenceAllele,
    int? start,
    Reference? variantPointer,
  }) {
    return MolecularSequenceVariant(
      cigar: cigar ?? this.cigar,
      end: end ?? this.end,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      observedAllele: observedAllele ?? this.observedAllele,
      referenceAllele: referenceAllele ?? this.referenceAllele,
      start: start ?? this.start,
      variantPointer: variantPointer ?? this.variantPointer,
    );
  }
}
