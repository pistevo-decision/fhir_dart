part of '../fhir_dart.dart';

/// Components of total line item price
/// The price for a ChargeItem may be calculated as a base price with surcharges/deductions that apply in certain conditions. A ChargeItemDefinition resource that defines the prices, factors and conditions that apply to a billing code is currently under development. The priceComponent element can be used to offer transparency to the recipient of the Invoice of how the prices have been calculated.
class ChargeItemDefinitionPropertyGroupPriceComponent extends BackboneElement
    implements FhirResource {
  /// Monetary amount associated with this component
  /// The amount calculated for this component.
  final Money? amount;

  /// Code identifying the specific component
  /// A code that identifies the component. Codes may be used to differentiate between kinds of taxes, surcharges, discounts etc.
  final CodeableConcept? code;

  /// Factor used for calculating this component
  /// The factor that has been applied on the base price for calculating this component.
  final num? factor;

  /// This code identifies the type of the component.
  final String
      type; // Possible values: 'base', 'surcharge', 'deduction', 'discount', 'tax', 'informational'
  ChargeItemDefinitionPropertyGroupPriceComponent({
    this.amount,
    this.code,
    super.fhirExtension,
    this.factor,
    super.id,
    super.modifierExtension,
    required this.type,
  });

  @override
  factory ChargeItemDefinitionPropertyGroupPriceComponent.fromJson(
      Map<String, dynamic> json) {
    return ChargeItemDefinitionPropertyGroupPriceComponent(
      amount: json['amount'] != null
          ? Money.fromJson(json['amount'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      factor: json['factor'] as num?,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'amount': amount?.toJson(),
        'code': code?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'factor': factor,
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type,
      };

  @override
  ChargeItemDefinitionPropertyGroupPriceComponent copyWith({
    Money? amount,
    CodeableConcept? code,
    List<Extension>? fhirExtension,
    num? factor,
    String? id,
    List<Extension>? modifierExtension,
    String? type,
  }) {
    return ChargeItemDefinitionPropertyGroupPriceComponent(
      amount: amount ?? this.amount,
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      factor: factor ?? this.factor,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
    );
  }
}
