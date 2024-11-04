part of '../fhir_dart.dart';

 /// Stratum results, one for each unique value, or set of values, in the stratifier, or stratifier components
 /// This element contains the results for a single stratum within the stratifier. For example, when stratifying on administrative gender, there will be four strata, one for each possible gender value.
class MeasureReportGroupStratifierStratum extends BackboneElement implements FhirResource {
   /// Stratifier component values
   /// A stratifier component value.
  final List<MeasureReportGroupStratifierStratumComponent>? component;
   /// What score this stratum achieved
   /// The measure score for this stratum, calculated as appropriate for the measure type and scoring method, and based on only the members of this stratum.
  final Quantity? measureScore;
   /// Population results in this stratum
   /// The populations that make up the stratum, one for each type of population appropriate to the measure.
  final List<MeasureReportGroupStratifierStratumPopulation>? population;
   /// The stratum value, e.g. male
   /// The value for this stratum, expressed as a CodeableConcept. When defining stratifiers on complex values, the value must be rendered such that the value for each stratum within the stratifier is unique.
  final CodeableConcept? value;
  MeasureReportGroupStratifierStratum({
    this.component,
    super.fhirExtension,
    super.id,
    this.measureScore,
    super.modifierExtension,
    this.population,
    this.value,
  });
  
  @override
  factory MeasureReportGroupStratifierStratum.fromJson(Map<String, dynamic> json) {
    return MeasureReportGroupStratifierStratum(
      component: (json['component'] as List<dynamic>?)?.map((e) => MeasureReportGroupStratifierStratumComponent.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      measureScore: json['measureScore'] != null ? Quantity.fromJson(json['measureScore'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      population: (json['population'] as List<dynamic>?)?.map((e) => MeasureReportGroupStratifierStratumPopulation.fromJson(e as Map<String, dynamic>)).toList(),
      value: json['value'] != null ? CodeableConcept.fromJson(json['value'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'component': component?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'measureScore': measureScore?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'population': population?.map((e) => e.toJson()).toList(),
      'value': value?.toJson(),
    };
  
  @override
  MeasureReportGroupStratifierStratum copyWith({
    List<MeasureReportGroupStratifierStratumComponent>? component,
    List<Extension>? fhirExtension,
    String? id,
    Quantity? measureScore,
    List<Extension>? modifierExtension,
    List<MeasureReportGroupStratifierStratumPopulation>? population,
    CodeableConcept? value,
  }) {
    return MeasureReportGroupStratifierStratum(
      component: component ?? this.component,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      measureScore: measureScore ?? this.measureScore,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      population: population ?? this.population,
      value: value ?? this.value,
    );
  }
}
