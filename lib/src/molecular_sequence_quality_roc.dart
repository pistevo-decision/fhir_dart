part of '../fhir_dart.dart';

/// Receiver Operator Characteristic (ROC) Curve  to give sensitivity/specificity tradeoff.
class MolecularSequenceQualityRoc extends BackboneElement
    implements FhirResource {
  /// FScore of the GQ score
  /// Calculated fScore if the GQ score threshold was set to "score" field value.
  final List<num>? fMeasure;

  /// Roc score false negative numbers
  /// The number of false negatives if the GQ score threshold was set to "score" field value.
  final List<int>? numFN;

  /// Roc score false positive numbers
  /// The number of false positives if the GQ score threshold was set to "score" field value.
  final List<int>? numFP;

  /// Roc score true positive numbers
  /// The number of true positives if the GQ score threshold was set to "score" field value.
  final List<int>? numTP;

  /// Precision of the GQ score
  /// Calculated precision if the GQ score threshold was set to "score" field value.
  final List<num>? precision;

  /// Genotype quality score
  /// Invidual data point representing the GQ (genotype quality) score threshold.
  final List<int>? score;

  /// Sensitivity of the GQ score
  /// Calculated sensitivity if the GQ score threshold was set to "score" field value.
  final List<num>? sensitivity;
  MolecularSequenceQualityRoc({
    super.fhirExtension,
    this.fMeasure,
    super.id,
    super.modifierExtension,
    this.numFN,
    this.numFP,
    this.numTP,
    this.precision,
    this.score,
    this.sensitivity,
  });

  @override
  factory MolecularSequenceQualityRoc.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceQualityRoc(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      fMeasure:
          (json['fMeasure'] as List<dynamic>?)?.map((e) => e as num).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      numFN: (json['numFN'] as List<dynamic>?)?.map((e) => e as int).toList(),
      numFP: (json['numFP'] as List<dynamic>?)?.map((e) => e as int).toList(),
      numTP: (json['numTP'] as List<dynamic>?)?.map((e) => e as int).toList(),
      precision:
          (json['precision'] as List<dynamic>?)?.map((e) => e as num).toList(),
      score: (json['score'] as List<dynamic>?)?.map((e) => e as int).toList(),
      sensitivity: (json['sensitivity'] as List<dynamic>?)
          ?.map((e) => e as num)
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'fMeasure': fMeasure?.map((e) => e).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'numFN': numFN?.map((e) => e).toList(),
        'numFP': numFP?.map((e) => e).toList(),
        'numTP': numTP?.map((e) => e).toList(),
        'precision': precision?.map((e) => e).toList(),
        'score': score?.map((e) => e).toList(),
        'sensitivity': sensitivity?.map((e) => e).toList(),
      };

  @override
  MolecularSequenceQualityRoc copyWith({
    List<Extension>? fhirExtension,
    List<num>? fMeasure,
    String? id,
    List<Extension>? modifierExtension,
    List<int>? numFN,
    List<int>? numFP,
    List<int>? numTP,
    List<num>? precision,
    List<int>? score,
    List<num>? sensitivity,
  }) {
    return MolecularSequenceQualityRoc(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      fMeasure: fMeasure ?? this.fMeasure,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      numFN: numFN ?? this.numFN,
      numFP: numFP ?? this.numFP,
      numTP: numTP ?? this.numTP,
      precision: precision ?? this.precision,
      score: score ?? this.score,
      sensitivity: sensitivity ?? this.sensitivity,
    );
  }
}
