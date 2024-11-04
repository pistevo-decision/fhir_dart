part of '../fhir_dart.dart';

 /// Any processing of the product during collection that does not change the fundamental nature of the product. For example adding anti-coagulants during the collection of Peripheral Blood Stem Cells.
class BiologicallyDerivedProductProcessing extends BackboneElement implements FhirResource {
   /// Substance added during processing.
  final Reference? additive;
   /// Description of of processing.
  final String? description;
   /// Procesing code.
  final CodeableConcept? procedure;
   /// Time of processing.
  final String? timeDateTime;
   /// Time of processing.
  final Period? timePeriod;
  BiologicallyDerivedProductProcessing({
    this.additive,
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.procedure,
    this.timeDateTime,
    this.timePeriod,
  });
  
  @override
  factory BiologicallyDerivedProductProcessing.fromJson(Map<String, dynamic> json) {
    return BiologicallyDerivedProductProcessing(
      additive: json['additive'] != null ? Reference.fromJson(json['additive'] as Map<String, dynamic>) : null,
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      procedure: json['procedure'] != null ? CodeableConcept.fromJson(json['procedure'] as Map<String, dynamic>) : null,
      timeDateTime: json['timeDateTime'] as String?,
      timePeriod: json['timePeriod'] != null ? Period.fromJson(json['timePeriod'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'additive': additive?.toJson(),
      'description': description,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'procedure': procedure?.toJson(),
      'timeDateTime': timeDateTime,
      'timePeriod': timePeriod?.toJson(),
    };
  
  @override
  BiologicallyDerivedProductProcessing copyWith({
    Reference? additive,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? procedure,
    String? timeDateTime,
    Period? timePeriod,
  }) {
    return BiologicallyDerivedProductProcessing(
      additive: additive ?? this.additive,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      procedure: procedure ?? this.procedure,
      timeDateTime: timeDateTime ?? this.timeDateTime,
      timePeriod: timePeriod ?? this.timePeriod,
    );
  }
}
