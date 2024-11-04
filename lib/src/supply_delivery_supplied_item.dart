part of '../fhir_dart.dart';

 /// The item that is delivered or supplied
 /// The item that is being delivered or has been supplied.
class SupplyDeliverySuppliedItem extends BackboneElement implements FhirResource {
   /// Medication, Substance, or Device supplied
   /// Identifies the medication, substance or device being dispensed. This is either a link to a resource representing the details of the item or a code that identifies the item from a known list.
  final CodeableConcept? itemCodeableConcept;
   /// Medication, Substance, or Device supplied
   /// Identifies the medication, substance or device being dispensed. This is either a link to a resource representing the details of the item or a code that identifies the item from a known list.
  final Reference? itemReference;
   /// Amount dispensed
   /// The amount of supply that has been dispensed. Includes unit of measure.
  final Quantity? quantity;
  SupplyDeliverySuppliedItem({
    super.fhirExtension,
    super.id,
    this.itemCodeableConcept,
    this.itemReference,
    super.modifierExtension,
    this.quantity,
  });
  
  @override
  factory SupplyDeliverySuppliedItem.fromJson(Map<String, dynamic> json) {
    return SupplyDeliverySuppliedItem(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      itemCodeableConcept: json['itemCodeableConcept'] != null ? CodeableConcept.fromJson(json['itemCodeableConcept'] as Map<String, dynamic>) : null,
      itemReference: json['itemReference'] != null ? Reference.fromJson(json['itemReference'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      quantity: json['quantity'] != null ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'itemCodeableConcept': itemCodeableConcept?.toJson(),
      'itemReference': itemReference?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'quantity': quantity?.toJson(),
    };
  
  @override
  SupplyDeliverySuppliedItem copyWith({
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    List<Extension>? modifierExtension,
    Quantity? quantity,
  }) {
    return SupplyDeliverySuppliedItem(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
    );
  }
}
