﻿part of '../fhir_dart.dart';

 /// The context of use may frequently define what kind of quantity this is and therefore what kind of units can be used. The context of use may also restrict the values for the comparator.
 /// Base StructureDefinition for Distance Type: A length - a value with a unit that is a physical distance.
class Distance extends Quantity implements FhirResource {
  Distance({
    super.code,
    super.comparator,
    super.fhirExtension,
    super.id,
    super.system,
    super.unit,
    super.value,
  });
  
  @override
  factory Distance.fromJson(Map<String, dynamic> json) {
    return Distance(
      code: json['code'] as String?,
      comparator: json['comparator'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      system: json['system'] as String?,
      unit: json['unit'] as String?,
      value: json['value'] as num?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code,
      'comparator': comparator,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'system': system,
      'unit': unit,
      'value': value,
    };
  
  @override
  Distance copyWith({
    String? code,
    String? comparator,
    List<Extension>? fhirExtension,
    String? id,
    String? system,
    String? unit,
    num? value,
  }) {
    return Distance(
      code: code ?? this.code,
      comparator: comparator ?? this.comparator,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      system: system ?? this.system,
      unit: unit ?? this.unit,
      value: value ?? this.value,
    );
  }
}