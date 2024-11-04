part of '../fhir_dart.dart';

 /// Raw data describing a biological sequence.
class MolecularSequence extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'MolecularSequence';
   /// Base number of coordinate system (0 for 0-based numbering or coordinates, inclusive start, exclusive end, 1 for 1-based numbering, inclusive start, inclusive end)
   /// Whether the sequence is numbered starting at 0 (0-based numbering or coordinates, inclusive start, exclusive end) or starting at 1 (1-based numbering, inclusive start and inclusive end).
  final int coordinateSystem;
   /// The method for sequencing, for example, chip information.
  final Reference? device;
   /// Unique ID for this particular sequence. This is a FHIR-defined id
   /// A unique identifier for this particular sequence instance. This is a FHIR-defined id.
  final List<Identifier>? identifier;
   /// Sequence that was observed. It is the result marked by referenceSeq along with variant records on referenceSeq. This shall start from referenceSeq.windowStart and end by referenceSeq.windowEnd.
  final String? observedSeq;
   /// Who and/or what this is about
   /// The patient whose sequencing results are described by this resource.
  final Reference? patient;
   /// Who should be responsible for test result
   /// The organization or lab that should be responsible for this result.
  final Reference? performer;
   /// Pointer to next atomic sequence which at most contains one variant.
  final List<Reference>? pointer;
   /// An set of value as quality of sequence
   /// An experimental feature attribute that defines the quality of the feature in a quantitative way, such as a phred quality score ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
  final List<MolecularSequenceQuality>? quality;
   /// The number of copies of the sequence of interest.  (RNASeq)
   /// The number of copies of the sequence of interest. (RNASeq).
  final Quantity? quantity;
   /// Average number of reads representing a given nucleotide in the reconstructed sequence
   /// Coverage (read depth or depth) is the average number of reads representing a given nucleotide in the reconstructed sequence.
  final int? readCoverage;
   /// A sequence used as reference
   /// A sequence that is used as a reference to describe variants that are present in a sequence analyzed.
  final MolecularSequenceReferenceSeq? referenceSeq;
   /// External repository which contains detailed report related with observedSeq in this resource
   /// Configurations of the external repository. The repository shall store target's observedSeq or records related with target's observedSeq.
  final List<MolecularSequenceRepository>? repository;
   /// Specimen used for sequencing.
  final Reference? specimen;
   /// Structural variant
   /// Information about chromosome structure variation.
  final List<MolecularSequenceStructureVariant>? structureVariant;
   /// Amino Acid Sequence/ DNA Sequence / RNA Sequence.
  final String? type; // Possible values: 'aa', 'dna', 'rna'
   /// Variant in sequence
   /// The definition of variant here originates from Sequence ontology ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)). This element can represent amino acid or nucleic sequence change(including insertion,deletion,SNP,etc.)  It can represent some complex mutation or segment variation with the assist of CIGAR string.
  final List<MolecularSequenceVariant>? variant;
  MolecularSequence({
    super.contained,
    required this.coordinateSystem,
    this.device,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.observedSeq,
    this.patient,
    this.performer,
    this.pointer,
    this.quality,
    this.quantity,
    this.readCoverage,
    this.referenceSeq,
    this.repository,
    this.specimen,
    this.structureVariant,
    super.text,
    this.type,
    this.variant,
  });
  
  @override
  factory MolecularSequence.fromJson(Map<String, dynamic> json) {
    return MolecularSequence(
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      coordinateSystem: json['coordinateSystem'] as int,
      device: json['device'] != null ? Reference.fromJson(json['device'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      observedSeq: json['observedSeq'] as String?,
      patient: json['patient'] != null ? Reference.fromJson(json['patient'] as Map<String, dynamic>) : null,
      performer: json['performer'] != null ? Reference.fromJson(json['performer'] as Map<String, dynamic>) : null,
      pointer: (json['pointer'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      quality: (json['quality'] as List<dynamic>?)?.map((e) => MolecularSequenceQuality.fromJson(e as Map<String, dynamic>)).toList(),
      quantity: json['quantity'] != null ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>) : null,
      readCoverage: json['readCoverage'] as int?,
      referenceSeq: json['referenceSeq'] != null ? MolecularSequenceReferenceSeq.fromJson(json['referenceSeq'] as Map<String, dynamic>) : null,
      repository: (json['repository'] as List<dynamic>?)?.map((e) => MolecularSequenceRepository.fromJson(e as Map<String, dynamic>)).toList(),
      specimen: json['specimen'] != null ? Reference.fromJson(json['specimen'] as Map<String, dynamic>) : null,
      structureVariant: (json['structureVariant'] as List<dynamic>?)?.map((e) => MolecularSequenceStructureVariant.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
      type: json['type'] as String?,
      variant: (json['variant'] as List<dynamic>?)?.map((e) => MolecularSequenceVariant.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'contained': contained?.map((e) => e.toJson()).toList(),
      'coordinateSystem': coordinateSystem,
      'device': device?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'observedSeq': observedSeq,
      'patient': patient?.toJson(),
      'performer': performer?.toJson(),
      'pointer': pointer?.map((e) => e.toJson()).toList(),
      'quality': quality?.map((e) => e.toJson()).toList(),
      'quantity': quantity?.toJson(),
      'readCoverage': readCoverage,
      'referenceSeq': referenceSeq?.toJson(),
      'repository': repository?.map((e) => e.toJson()).toList(),
      'specimen': specimen?.toJson(),
      'structureVariant': structureVariant?.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
      'type': type,
      'variant': variant?.map((e) => e.toJson()).toList(),
    };
  
  @override
  MolecularSequence copyWith({
    List<Resource>? contained,
    int? coordinateSystem,
    Reference? device,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? observedSeq,
    Reference? patient,
    Reference? performer,
    List<Reference>? pointer,
    List<MolecularSequenceQuality>? quality,
    Quantity? quantity,
    int? readCoverage,
    MolecularSequenceReferenceSeq? referenceSeq,
    List<MolecularSequenceRepository>? repository,
    Reference? specimen,
    List<MolecularSequenceStructureVariant>? structureVariant,
    Narrative? text,
    String? type,
    List<MolecularSequenceVariant>? variant,
  }) {
    return MolecularSequence(
      contained: contained ?? this.contained,
      coordinateSystem: coordinateSystem ?? this.coordinateSystem,
      device: device ?? this.device,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      observedSeq: observedSeq ?? this.observedSeq,
      patient: patient ?? this.patient,
      performer: performer ?? this.performer,
      pointer: pointer ?? this.pointer,
      quality: quality ?? this.quality,
      quantity: quantity ?? this.quantity,
      readCoverage: readCoverage ?? this.readCoverage,
      referenceSeq: referenceSeq ?? this.referenceSeq,
      repository: repository ?? this.repository,
      specimen: specimen ?? this.specimen,
      structureVariant: structureVariant ?? this.structureVariant,
      text: text ?? this.text,
      type: type ?? this.type,
      variant: variant ?? this.variant,
    );
  }
}
