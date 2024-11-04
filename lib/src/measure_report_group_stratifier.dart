part of '../fhir_dart.dart';

 /// Stratification results
 /// When a measure includes multiple stratifiers, there will be a stratifier group for each stratifier defined by the measure.
class MeasureReportGroupStratifier extends BackboneElement implements FhirResource {
   /// What stratifier of the group
   /// The meaning of this stratifier, as defined in the measure definition.
  final List<CodeableConcept>? code;
   /// Stratum results, one for each unique value, or set of values, in the stratifier, or stratifier components
   /// This element contains the results for a single stratum within the stratifier. For example, when stratifying on administrative gender, there will be four strata, one for each possible gender value.
  final List<MeasureReportGroupStratifierStratum>? stratum;
  MeasureReportGroupStratifier({
    this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.stratum,
  });
  
  @override
  factory MeasureReportGroupStratifier.fromJson(Map<String, dynamic> json) {
    return MeasureReportGroupStratifier(
      code: (json['code'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      stratum: (json['stratum'] as List<dynamic>?)?.map((e) => MeasureReportGroupStratifierStratum.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'stratum': stratum?.map((e) => e.toJson()).toList(),
    };
  
  @override
  MeasureReportGroupStratifier copyWith({
    List<CodeableConcept>? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<MeasureReportGroupStratifierStratum>? stratum,
  }) {
    return MeasureReportGroupStratifier(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      stratum: stratum ?? this.stratum,
    );
  }
}
