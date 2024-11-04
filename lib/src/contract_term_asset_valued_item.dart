part of '../fhir_dart.dart';

 /// Contract Valued Item List.
class ContractTermAssetValuedItem extends BackboneElement implements FhirResource {
   /// Contract Valued Item Effective Tiem
   /// Indicates the time during which this Contract ValuedItem information is effective.
  final String? effectiveTime;
   /// Contract Valued Item Type
   /// Specific type of Contract Valued Item that may be priced.
  final CodeableConcept? entityCodeableConcept;
   /// Contract Valued Item Type
   /// Specific type of Contract Valued Item that may be priced.
  final Reference? entityReference;
   /// Contract Valued Item Price Scaling Factor
   /// A real number that represents a multiplier used in determining the overall value of the Contract Valued Item delivered. The concept of a Factor allows for a discount or surcharge multiplier to be applied to a monetary amount.
  final num? factor;
   /// Contract Valued Item Number
   /// Identifies a Contract Valued Item instance.
  final Identifier? identifier;
   /// Pointer to specific item
   /// Id  of the clause or question text related to the context of this valuedItem in the referenced form or QuestionnaireResponse.
  final List<String>? linkId;
   /// Total Contract Valued Item Value
   /// Expresses the product of the Contract Valued Item unitQuantity and the unitPriceAmt. For example, the formula: unit Quantity * unit Price (Cost per Point) * factor Number  * points = net Amount. Quantity, factor and points are assumed to be 1 if not supplied.
  final Money? net;
   /// Terms of valuation.
  final String? payment;
   /// When payment is due.
  final String? paymentDate;
   /// Contract Valued Item Difficulty Scaling Factor
   /// An amount that expresses the weighting (based on difficulty, cost and/or resource intensiveness) associated with the Contract Valued Item delivered. The concept of Points allows for assignment of point values for a Contract Valued Item, such that a monetary amount can be assigned to each point.
  final num? points;
   /// Count of Contract Valued Items
   /// Specifies the units by which the Contract Valued Item is measured or counted, and quantifies the countable or measurable Contract Valued Item instances.
  final Quantity? quantity;
   /// Who will receive payment.
  final Reference? recipient;
   /// Who will make payment.
  final Reference? responsible;
   /// Security Labels that define affected terms
   /// A set of security labels that define which terms are controlled by this condition.
  final List<int>? securityLabelNumber;
   /// Contract Valued Item fee, charge, or cost
   /// A Contract Valued Item unit valuation measure.
  final Money? unitPrice;
  ContractTermAssetValuedItem({
    this.effectiveTime,
    this.entityCodeableConcept,
    this.entityReference,
    super.fhirExtension,
    this.factor,
    super.id,
    this.identifier,
    this.linkId,
    super.modifierExtension,
    this.net,
    this.payment,
    this.paymentDate,
    this.points,
    this.quantity,
    this.recipient,
    this.responsible,
    this.securityLabelNumber,
    this.unitPrice,
  });
  
  @override
  factory ContractTermAssetValuedItem.fromJson(Map<String, dynamic> json) {
    return ContractTermAssetValuedItem(
      effectiveTime: json['effectiveTime'] as String?,
      entityCodeableConcept: json['entityCodeableConcept'] != null ? CodeableConcept.fromJson(json['entityCodeableConcept'] as Map<String, dynamic>) : null,
      entityReference: json['entityReference'] != null ? Reference.fromJson(json['entityReference'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      factor: json['factor'] as num?,
      id: json['id'] as String?,
      identifier: json['identifier'] != null ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>) : null,
      linkId: (json['linkId'] as List<dynamic>?)?.map((e) => e as String).toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      net: json['net'] != null ? Money.fromJson(json['net'] as Map<String, dynamic>) : null,
      payment: json['payment'] as String?,
      paymentDate: json['paymentDate'] as String?,
      points: json['points'] as num?,
      quantity: json['quantity'] != null ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>) : null,
      recipient: json['recipient'] != null ? Reference.fromJson(json['recipient'] as Map<String, dynamic>) : null,
      responsible: json['responsible'] != null ? Reference.fromJson(json['responsible'] as Map<String, dynamic>) : null,
      securityLabelNumber: (json['securityLabelNumber'] as List<dynamic>?)?.map((e) => e as int).toList(),
      unitPrice: json['unitPrice'] != null ? Money.fromJson(json['unitPrice'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'effectiveTime': effectiveTime,
      'entityCodeableConcept': entityCodeableConcept?.toJson(),
      'entityReference': entityReference?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'factor': factor,
      'id': id,
      'identifier': identifier?.toJson(),
      'linkId': linkId?.map((e) => e).toList(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'net': net?.toJson(),
      'payment': payment,
      'paymentDate': paymentDate,
      'points': points,
      'quantity': quantity?.toJson(),
      'recipient': recipient?.toJson(),
      'responsible': responsible?.toJson(),
      'securityLabelNumber': securityLabelNumber?.map((e) => e).toList(),
      'unitPrice': unitPrice?.toJson(),
    };
  
  @override
  ContractTermAssetValuedItem copyWith({
    String? effectiveTime,
    CodeableConcept? entityCodeableConcept,
    Reference? entityReference,
    List<Extension>? fhirExtension,
    num? factor,
    String? id,
    Identifier? identifier,
    List<String>? linkId,
    List<Extension>? modifierExtension,
    Money? net,
    String? payment,
    String? paymentDate,
    num? points,
    Quantity? quantity,
    Reference? recipient,
    Reference? responsible,
    List<int>? securityLabelNumber,
    Money? unitPrice,
  }) {
    return ContractTermAssetValuedItem(
      effectiveTime: effectiveTime ?? this.effectiveTime,
      entityCodeableConcept: entityCodeableConcept ?? this.entityCodeableConcept,
      entityReference: entityReference ?? this.entityReference,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      factor: factor ?? this.factor,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      linkId: linkId ?? this.linkId,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      net: net ?? this.net,
      payment: payment ?? this.payment,
      paymentDate: paymentDate ?? this.paymentDate,
      points: points ?? this.points,
      quantity: quantity ?? this.quantity,
      recipient: recipient ?? this.recipient,
      responsible: responsible ?? this.responsible,
      securityLabelNumber: securityLabelNumber ?? this.securityLabelNumber,
      unitPrice: unitPrice ?? this.unitPrice,
    );
  }
}
