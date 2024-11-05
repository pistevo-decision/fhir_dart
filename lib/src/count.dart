part of '../fhir_dart.dart';

/// The context of use may frequently define what kind of quantity this is and therefore what kind of units can be used. The context of use may also restrict the values for the comparator.
/// Base StructureDefinition for Count Type: A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that are not precisely quantified, including amounts involving arbitrary units and floating currencies.
/// Need to able to capture all sorts of measured values, even if the measured value are not precisely quantified. Values include exact measures such as 3.51g, customary units such as 3 tablets, and currencies such as $100.32USD.
class Count extends Quantity implements FhirResource {
  Count({
    super.code,
    super.comparator,
    super.fhirExtension,
    super.id,
    super.system,
    super.unit,
    super.value,
  });

  @override
  factory Count.fromJson(Map<String, dynamic> json) {
    return Count(
      code: json['code'] as String?,
      comparator: json['comparator'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      system: json['system'] as String?,
      unit: json['unit'] as String?,
      value: json['value'] as num?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'comparator': comparator,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'system': system,
        'unit': unit,
        'value': value,
      };

  @override
  Count copyWith({
    String? code,
    String? comparator,
    List<Extension>? fhirExtension,
    String? id,
    String? system,
    String? unit,
    num? value,
  }) {
    return Count(
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
