part of '../fhir_dart.dart';

/// Line items of this Invoice
/// Each line item represents one charge for goods and services rendered. Details such as date, code and amount are found in the referenced ChargeItem resource.
class InvoiceLineItem extends BackboneElement implements FhirResource {
  /// Reference to ChargeItem containing details of this line item or an inline billing code
  /// The ChargeItem contains information such as the billing code, date, amount etc. If no further details are required for the lineItem, inline billing codes can be added using the CodeableConcept data type instead of the Reference.
  final CodeableConcept? chargeItemCodeableConcept;

  /// Reference to ChargeItem containing details of this line item or an inline billing code
  /// The ChargeItem contains information such as the billing code, date, amount etc. If no further details are required for the lineItem, inline billing codes can be added using the CodeableConcept data type instead of the Reference.
  final Reference? chargeItemReference;

  /// Components of total line item price
  /// The price for a ChargeItem may be calculated as a base price with surcharges/deductions that apply in certain conditions. A ChargeItemDefinition resource that defines the prices, factors and conditions that apply to a billing code is currently under development. The priceComponent element can be used to offer transparency to the recipient of the Invoice as to how the prices have been calculated.
  final List<InvoiceLineItemPriceComponent>? priceComponent;

  /// Sequence number of line item
  /// Sequence in which the items appear on the invoice.
  final int? sequence;
  InvoiceLineItem({
    this.chargeItemCodeableConcept,
    this.chargeItemReference,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.priceComponent,
    this.sequence,
  });

  @override
  factory InvoiceLineItem.fromJson(Map<String, dynamic> json) {
    return InvoiceLineItem(
      chargeItemCodeableConcept: json['chargeItemCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['chargeItemCodeableConcept'] as Map<String, dynamic>)
          : null,
      chargeItemReference: json['chargeItemReference'] != null
          ? Reference.fromJson(
              json['chargeItemReference'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      priceComponent: (json['priceComponent'] as List<dynamic>?)
          ?.map((e) =>
              InvoiceLineItemPriceComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: json['sequence'] as int?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'chargeItemCodeableConcept': chargeItemCodeableConcept?.toJson(),
        'chargeItemReference': chargeItemReference?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'priceComponent': priceComponent?.map((e) => e.toJson()).toList(),
        'sequence': sequence,
      };

  @override
  InvoiceLineItem copyWith({
    CodeableConcept? chargeItemCodeableConcept,
    Reference? chargeItemReference,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<InvoiceLineItemPriceComponent>? priceComponent,
    int? sequence,
  }) {
    return InvoiceLineItem(
      chargeItemCodeableConcept:
          chargeItemCodeableConcept ?? this.chargeItemCodeableConcept,
      chargeItemReference: chargeItemReference ?? this.chargeItemReference,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      priceComponent: priceComponent ?? this.priceComponent,
      sequence: sequence ?? this.sequence,
    );
  }
}
