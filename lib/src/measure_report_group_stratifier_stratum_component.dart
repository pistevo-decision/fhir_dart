part of '../fhir_dart.dart';

/// Stratifier component values
/// A stratifier component value.
class MeasureReportGroupStratifierStratumComponent extends BackboneElement
    implements FhirResource {
  /// What stratifier component of the group
  /// The code for the stratum component value.
  final CodeableConcept code;

  /// The stratum component value, e.g. male
  /// The stratum component value.
  final CodeableConcept value;
  MeasureReportGroupStratifierStratumComponent({
    required this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.value,
  });

  @override
  factory MeasureReportGroupStratifierStratumComponent.fromJson(
      Map<String, dynamic> json) {
    return MeasureReportGroupStratifierStratumComponent(
      code: CodeableConcept.fromJson(
          (json['code'] as Map).cast<String, dynamic>()),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      value: CodeableConcept.fromJson(
          (json['value'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'value': value.toJson(),
      };

  @override
  MeasureReportGroupStratifierStratumComponent copyWith({
    CodeableConcept? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? value,
  }) {
    return MeasureReportGroupStratifierStratumComponent(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
    );
  }
}
