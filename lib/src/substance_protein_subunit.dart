part of '../fhir_dart.dart';

 /// This subclause refers to the description of each subunit constituting the SubstanceProtein. A subunit is a linear sequence of amino acids linked through peptide bonds. The Subunit information shall be provided when the finished SubstanceProtein is a complex of multiple sequences; subunits are not used to delineate domains within a single sequence. Subunits are listed in order of decreasing length; sequences of the same length will be ordered by decreasing molecular weight; subunits that have identical sequences will be repeated multiple times.
class SubstanceProteinSubunit extends BackboneElement implements FhirResource {
   /// The modification at the C-terminal shall be specified.
  final String? cTerminalModification;
   /// Unique identifier for molecular fragment modification based on the ISO 11238 Substance ID.
  final Identifier? cTerminalModificationId;
   /// Length of linear sequences of amino acids contained in the subunit.
  final int? length;
   /// The name of the fragment modified at the N-terminal of the SubstanceProtein shall be specified.
  final String? nTerminalModification;
   /// Unique identifier for molecular fragment modification based on the ISO 11238 Substance ID.
  final Identifier? nTerminalModificationId;
   /// The sequence information shall be provided enumerating the amino acids from N- to C-terminal end using standard single-letter amino acid codes. Uppercase shall be used for L-amino acids and lowercase for D-amino acids. Transcribed SubstanceProteins will always be described using the translated sequence; for synthetic peptide containing amino acids that are not represented with a single letter code an X should be used within the sequence. The modified amino acids will be distinguished by their position in the sequence.
  final String? sequence;
   /// The sequence information shall be provided enumerating the amino acids from N- to C-terminal end using standard single-letter amino acid codes. Uppercase shall be used for L-amino acids and lowercase for D-amino acids. Transcribed SubstanceProteins will always be described using the translated sequence; for synthetic peptide containing amino acids that are not represented with a single letter code an X should be used within the sequence. The modified amino acids will be distinguished by their position in the sequence.
  final Attachment? sequenceAttachment;
   /// Index of primary sequences of amino acids linked through peptide bonds in order of decreasing length. Sequences of the same length will be ordered by molecular weight. Subunits that have identical sequences will be repeated and have sequential subscripts.
  final int? subunit;
  SubstanceProteinSubunit({
    this.cTerminalModification,
    this.cTerminalModificationId,
    super.fhirExtension,
    super.id,
    this.length,
    super.modifierExtension,
    this.nTerminalModification,
    this.nTerminalModificationId,
    this.sequence,
    this.sequenceAttachment,
    this.subunit,
  });
  
  @override
  factory SubstanceProteinSubunit.fromJson(Map<String, dynamic> json) {
    return SubstanceProteinSubunit(
      cTerminalModification: json['cTerminalModification'] as String?,
      cTerminalModificationId: json['cTerminalModificationId'] != null ? Identifier.fromJson(json['cTerminalModificationId'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      length: json['length'] as int?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      nTerminalModification: json['nTerminalModification'] as String?,
      nTerminalModificationId: json['nTerminalModificationId'] != null ? Identifier.fromJson(json['nTerminalModificationId'] as Map<String, dynamic>) : null,
      sequence: json['sequence'] as String?,
      sequenceAttachment: json['sequenceAttachment'] != null ? Attachment.fromJson(json['sequenceAttachment'] as Map<String, dynamic>) : null,
      subunit: json['subunit'] as int?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'cTerminalModification': cTerminalModification,
      'cTerminalModificationId': cTerminalModificationId?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'length': length,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'nTerminalModification': nTerminalModification,
      'nTerminalModificationId': nTerminalModificationId?.toJson(),
      'sequence': sequence,
      'sequenceAttachment': sequenceAttachment?.toJson(),
      'subunit': subunit,
    };
  
  @override
  SubstanceProteinSubunit copyWith({
    String? cTerminalModification,
    Identifier? cTerminalModificationId,
    List<Extension>? fhirExtension,
    String? id,
    int? length,
    List<Extension>? modifierExtension,
    String? nTerminalModification,
    Identifier? nTerminalModificationId,
    String? sequence,
    Attachment? sequenceAttachment,
    int? subunit,
  }) {
    return SubstanceProteinSubunit(
      cTerminalModification: cTerminalModification ?? this.cTerminalModification,
      cTerminalModificationId: cTerminalModificationId ?? this.cTerminalModificationId,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      length: length ?? this.length,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      nTerminalModification: nTerminalModification ?? this.nTerminalModification,
      nTerminalModificationId: nTerminalModificationId ?? this.nTerminalModificationId,
      sequence: sequence ?? this.sequence,
      sequenceAttachment: sequenceAttachment ?? this.sequenceAttachment,
      subunit: subunit ?? this.subunit,
    );
  }
}
