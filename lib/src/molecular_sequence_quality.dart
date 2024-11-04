part of '../fhir_dart.dart';

 /// An set of value as quality of sequence
 /// An experimental feature attribute that defines the quality of the feature in a quantitative way, such as a phred quality score ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
class MolecularSequenceQuality extends BackboneElement implements FhirResource {
   /// End position of the sequence. If the coordinate system is 0-based then end is exclusive and does not include the last position. If the coordinate system is 1-base, then end is inclusive and includes the last position.
  final int? end;
   /// F-score
   /// Harmonic mean of Recall and Precision, computed as: 2 * precision * recall / (precision + recall).
  final num? fScore;
   /// False positives where the non-REF alleles in the Truth and Query Call Sets match
   /// The number of false positives where the non-REF alleles in the Truth and Query Call Sets match (i.e. cases where the truth is 1/1 and the query is 0/1 or similar).
  final num? gtFP;
   /// Method to get quality
   /// Which method is used to get sequence quality.
  final CodeableConcept? method;
   /// Precision of comparison
   /// QUERY.TP / (QUERY.TP + QUERY.FP).
  final num? precision;
   /// False positives, i.e. the number of sites in the Query Call Set for which there is no path through the Truth Call Set that is consistent with this site. Sites with correct variant but incorrect genotype are counted here.
  final num? queryFP;
   /// True positives from the perspective of the query data
   /// True positives, from the perspective of the query data, i.e. the number of sites in the Query Call Set for which there are paths through the Truth Call Set that are consistent with all of the alleles at this site, and for which there is an accurate genotype call for the event.
  final num? queryTP;
   /// Recall of comparison
   /// TRUTH.TP / (TRUTH.TP + TRUTH.FN).
  final num? recall;
   /// Receiver Operator Characteristic (ROC) Curve  to give sensitivity/specificity tradeoff.
  final MolecularSequenceQualityRoc? roc;
   /// Quality score for the comparison
   /// The score of an experimentally derived feature such as a p-value ([SO:0001685](http://www.sequenceontology.org/browser/current_svn/term/SO:0001685)).
  final Quantity? score;
   /// Standard sequence for comparison
   /// Gold standard sequence used for comparing against.
  final CodeableConcept? standardSequence;
   /// Start position of the sequence. If the coordinate system is either 0-based or 1-based, then start position is inclusive.
  final int? start;
   /// False negatives, i.e. the number of sites in the Truth Call Set for which there is no path through the Query Call Set that is consistent with all of the alleles at this site, or sites for which there is an inaccurate genotype call for the event. Sites with correct variant but incorrect genotype are counted here.
  final num? truthFN;
   /// True positives from the perspective of the truth data
   /// True positives, from the perspective of the truth data, i.e. the number of sites in the Truth Call Set for which there are paths through the Query Call Set that are consistent with all of the alleles at this site, and for which there is an accurate genotype call for the event.
  final num? truthTP;
   /// INDEL / SNP / Undefined variant.
  final String type; // Possible values: 'indel', 'snp', 'unknown'
  MolecularSequenceQuality({
    this.end,
    super.fhirExtension,
    this.fScore,
    this.gtFP,
    super.id,
    this.method,
    super.modifierExtension,
    this.precision,
    this.queryFP,
    this.queryTP,
    this.recall,
    this.roc,
    this.score,
    this.standardSequence,
    this.start,
    this.truthFN,
    this.truthTP,
    required this.type,
  });
  
  @override
  factory MolecularSequenceQuality.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceQuality(
      end: json['end'] as int?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      fScore: json['fScore'] as num?,
      gtFP: json['gtFP'] as num?,
      id: json['id'] as String?,
      method: json['method'] != null ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      precision: json['precision'] as num?,
      queryFP: json['queryFP'] as num?,
      queryTP: json['queryTP'] as num?,
      recall: json['recall'] as num?,
      roc: json['roc'] != null ? MolecularSequenceQualityRoc.fromJson(json['roc'] as Map<String, dynamic>) : null,
      score: json['score'] != null ? Quantity.fromJson(json['score'] as Map<String, dynamic>) : null,
      standardSequence: json['standardSequence'] != null ? CodeableConcept.fromJson(json['standardSequence'] as Map<String, dynamic>) : null,
      start: json['start'] as int?,
      truthFN: json['truthFN'] as num?,
      truthTP: json['truthTP'] as num?,
      type: json['type'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'end': end,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'fScore': fScore,
      'gtFP': gtFP,
      'id': id,
      'method': method?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'precision': precision,
      'queryFP': queryFP,
      'queryTP': queryTP,
      'recall': recall,
      'roc': roc?.toJson(),
      'score': score?.toJson(),
      'standardSequence': standardSequence?.toJson(),
      'start': start,
      'truthFN': truthFN,
      'truthTP': truthTP,
      'type': type,
    };
  
  @override
  MolecularSequenceQuality copyWith({
    int? end,
    List<Extension>? fhirExtension,
    num? fScore,
    num? gtFP,
    String? id,
    CodeableConcept? method,
    List<Extension>? modifierExtension,
    num? precision,
    num? queryFP,
    num? queryTP,
    num? recall,
    MolecularSequenceQualityRoc? roc,
    Quantity? score,
    CodeableConcept? standardSequence,
    int? start,
    num? truthFN,
    num? truthTP,
    String? type,
  }) {
    return MolecularSequenceQuality(
      end: end ?? this.end,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      fScore: fScore ?? this.fScore,
      gtFP: gtFP ?? this.gtFP,
      id: id ?? this.id,
      method: method ?? this.method,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      precision: precision ?? this.precision,
      queryFP: queryFP ?? this.queryFP,
      queryTP: queryTP ?? this.queryTP,
      recall: recall ?? this.recall,
      roc: roc ?? this.roc,
      score: score ?? this.score,
      standardSequence: standardSequence ?? this.standardSequence,
      start: start ?? this.start,
      truthFN: truthFN ?? this.truthFN,
      truthTP: truthTP ?? this.truthTP,
      type: type ?? this.type,
    );
  }
}
