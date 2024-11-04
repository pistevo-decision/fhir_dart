part of '../fhir_dart.dart';

/// A sequence used as reference
/// A sequence that is used as a reference to describe variants that are present in a sequence analyzed.
class MolecularSequenceReferenceSeq extends BackboneElement
    implements FhirResource {
  /// Chromosome containing genetic finding
  /// Structural unit composed of a nucleic acid molecule which controls its own replication through the interaction of specific proteins at one or more origins of replication ([SO:0000340](http://www.sequenceontology.org/browser/current_svn/term/SO:0000340)).
  final CodeableConcept? chromosome;

  /// The Genome Build used for reference, following GRCh build versions e.g. 'GRCh 37'.  Version number must be included if a versioned release of a primary build was used.
  final String? genomeBuild;

  /// sense | antisense
  /// A relative reference to a DNA strand based on gene orientation. The strand that contains the open reading frame of the gene is the "sense" strand, and the opposite complementary strand is the "antisense" strand.
  final String? orientation; // Possible values: 'sense', 'antisense'
  /// Reference identifier of reference sequence submitted to NCBI. It must match the type in the MolecularSequence.type field. For example, the prefix, “NG_” identifies reference sequence for genes, “NM_” for messenger RNA transcripts, and “NP_” for amino acid sequences.
  final CodeableConcept? referenceSeqId;

  /// A pointer to another MolecularSequence entity as reference sequence.
  final Reference? referenceSeqPointer;

  /// A string to represent reference sequence
  /// A string like "ACGT".
  final String? referenceSeqString;

  /// watson | crick
  /// An absolute reference to a strand. The Watson strand is the strand whose 5'-end is on the short arm of the chromosome, and the Crick strand as the one whose 5'-end is on the long arm.
  final String? strand; // Possible values: 'watson', 'crick'
  /// End position of the window on the reference sequence. If the coordinate system is 0-based then end is exclusive and does not include the last position. If the coordinate system is 1-base, then end is inclusive and includes the last position.
  final int? windowEnd;

  /// Start position of the window on the  reference sequence
  /// Start position of the window on the reference sequence. If the coordinate system is either 0-based or 1-based, then start position is inclusive.
  final int? windowStart;
  MolecularSequenceReferenceSeq({
    this.chromosome,
    super.fhirExtension,
    this.genomeBuild,
    super.id,
    super.modifierExtension,
    this.orientation,
    this.referenceSeqId,
    this.referenceSeqPointer,
    this.referenceSeqString,
    this.strand,
    this.windowEnd,
    this.windowStart,
  });

  @override
  factory MolecularSequenceReferenceSeq.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceReferenceSeq(
      chromosome: json['chromosome'] != null
          ? CodeableConcept.fromJson(json['chromosome'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      genomeBuild: json['genomeBuild'] as String?,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      orientation: json['orientation'] as String?,
      referenceSeqId: json['referenceSeqId'] != null
          ? CodeableConcept.fromJson(
              json['referenceSeqId'] as Map<String, dynamic>)
          : null,
      referenceSeqPointer: json['referenceSeqPointer'] != null
          ? Reference.fromJson(
              json['referenceSeqPointer'] as Map<String, dynamic>)
          : null,
      referenceSeqString: json['referenceSeqString'] as String?,
      strand: json['strand'] as String?,
      windowEnd: json['windowEnd'] as int?,
      windowStart: json['windowStart'] as int?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'chromosome': chromosome?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'genomeBuild': genomeBuild,
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'orientation': orientation,
        'referenceSeqId': referenceSeqId?.toJson(),
        'referenceSeqPointer': referenceSeqPointer?.toJson(),
        'referenceSeqString': referenceSeqString,
        'strand': strand,
        'windowEnd': windowEnd,
        'windowStart': windowStart,
      };

  @override
  MolecularSequenceReferenceSeq copyWith({
    CodeableConcept? chromosome,
    List<Extension>? fhirExtension,
    String? genomeBuild,
    String? id,
    List<Extension>? modifierExtension,
    String? orientation,
    CodeableConcept? referenceSeqId,
    Reference? referenceSeqPointer,
    String? referenceSeqString,
    String? strand,
    int? windowEnd,
    int? windowStart,
  }) {
    return MolecularSequenceReferenceSeq(
      chromosome: chromosome ?? this.chromosome,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      genomeBuild: genomeBuild ?? this.genomeBuild,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      orientation: orientation ?? this.orientation,
      referenceSeqId: referenceSeqId ?? this.referenceSeqId,
      referenceSeqPointer: referenceSeqPointer ?? this.referenceSeqPointer,
      referenceSeqString: referenceSeqString ?? this.referenceSeqString,
      strand: strand ?? this.strand,
      windowEnd: windowEnd ?? this.windowEnd,
      windowStart: windowStart ?? this.windowStart,
    );
  }
}
