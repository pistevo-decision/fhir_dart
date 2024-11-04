part of '../fhir_dart.dart';

/// Group of properties which are applicable under the same conditions. If no applicability rules are established for the group, then all properties always apply.
class ChargeItemDefinitionPropertyGroup extends BackboneElement
    implements FhirResource {
  /// Conditions under which the priceComponent is applicable
  /// Expressions that describe applicability criteria for the priceComponent.
  /// The applicability conditions can be used to ascertain whether a billing item is allowed in a specific context. E.g. some billing codes may only be applicable in out-patient settings, only to male/female patients or only to children.
  final List<ChargeItemDefinitionApplicability>? applicability;

  /// Components of total line item price
  /// The price for a ChargeItem may be calculated as a base price with surcharges/deductions that apply in certain conditions. A ChargeItemDefinition resource that defines the prices, factors and conditions that apply to a billing code is currently under development. The priceComponent element can be used to offer transparency to the recipient of the Invoice of how the prices have been calculated.
  final List<ChargeItemDefinitionPropertyGroupPriceComponent>? priceComponent;
  ChargeItemDefinitionPropertyGroup({
    this.applicability,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.priceComponent,
  });

  @override
  factory ChargeItemDefinitionPropertyGroup.fromJson(
      Map<String, dynamic> json) {
    return ChargeItemDefinitionPropertyGroup(
      applicability: (json['applicability'] as List<dynamic>?)
          ?.map((e) => ChargeItemDefinitionApplicability.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      priceComponent: (json['priceComponent'] as List<dynamic>?)
          ?.map((e) => ChargeItemDefinitionPropertyGroupPriceComponent.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'applicability': applicability?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'priceComponent': priceComponent?.map((e) => e.toJson()).toList(),
      };

  @override
  ChargeItemDefinitionPropertyGroup copyWith({
    List<ChargeItemDefinitionApplicability>? applicability,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<ChargeItemDefinitionPropertyGroupPriceComponent>? priceComponent,
  }) {
    return ChargeItemDefinitionPropertyGroup(
      applicability: applicability ?? this.applicability,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      priceComponent: priceComponent ?? this.priceComponent,
    );
  }
}
