part of '../fhir_dart.dart';

 /// The context of use may frequently define what kind of quantity this is and therefore what kind of units can be used. The context of use may also restrict the values for the comparator.
 /// Base StructureDefinition for Quantity Type: A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that are not precisely quantified, including amounts involving arbitrary units and floating currencies.
 /// Need to able to capture all sorts of measured values, even if the measured value are not precisely quantified. Values include exact measures such as 3.51g, customary units such as 3 tablets, and currencies such as $100.32USD.
class Quantity extends Element implements FhirResource {
   /// Coded form of the unit
   /// A computer processable form of the unit in some unit representation system.
   /// The preferred system is UCUM, but SNOMED CT can also be used (for customary units) or ISO 4217 for currency.  The context of use may additionally require a code from a particular system.
  final String? code;
   /// How the value should be understood and represented - whether the actual value is greater or less than the stated value due to measurement issues; e.g. if the comparator is "<" , then the real value is < stated value.
  final String? comparator; // Possible values: '<', '<=', '>=', '>'
   /// System that defines coded unit form
   /// The identification of the system that provides the coded form of the unit.
  final String? system;
   /// Unit representation
   /// A human-readable form of the unit.
  final String? unit;
   /// Numerical value (with implicit precision)
   /// The value of the measured amount. The value includes an implicit precision in the presentation of the value.
   /// The implicit precision in the value should always be honored. Monetary values have their own rules for handling precision (refer to standard accounting text books).
  final num? value;
  Quantity({
    this.code,
    this.comparator,
    super.fhirExtension,
    super.id,
    this.system,
    this.unit,
    this.value,
  });
  
  @override
  factory Quantity.fromJson(Map<String, dynamic> json) {
    return Quantity(
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
  Quantity copyWith({
    String? code,
    String? comparator,
    List<Extension>? fhirExtension,
    String? id,
    String? system,
    String? unit,
    num? value,
  }) {
    return Quantity(
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
