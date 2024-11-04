part of '../fhir_dart.dart';

 /// Payment Details
 /// Payment details for the adjudication of the claim.
class ClaimResponsePayment extends BackboneElement implements FhirResource {
   /// Payment adjustment for non-claim issues
   /// Total amount of all adjustments to this payment included in this transaction which are not related to this claim's adjudication.
   /// Insurers will deduct amounts owing from the provider (adjustment), such as a prior overpayment, from the amount owing to the provider (benefits payable) when payment is made to the provider.
  final Money? adjustment;
   /// Explanation for the adjustment
   /// Reason for the payment adjustment.
  final CodeableConcept? adjustmentReason;
   /// Payable amount after adjustment
   /// Benefits payable less any payment adjustment.
  final Money amount;
   /// Expected date of payment
   /// Estimated date the payment will be issued or the actual issue date of payment.
  final String? date;
   /// Business identifier for the payment
   /// Issuer's unique identifier for the payment instrument.
   /// For example: EFT number or check number.
  final Identifier? identifier;
   /// Partial or complete payment
   /// Whether this represents partial or complete payment of the benefits payable.
  final CodeableConcept type;
  ClaimResponsePayment({
    this.adjustment,
    this.adjustmentReason,
    required this.amount,
    this.date,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.modifierExtension,
    required this.type,
  });
  
  @override
  factory ClaimResponsePayment.fromJson(Map<String, dynamic> json) {
    return ClaimResponsePayment(
      adjustment: json['adjustment'] != null ? Money.fromJson(json['adjustment'] as Map<String, dynamic>) : null,
      adjustmentReason: json['adjustmentReason'] != null ? CodeableConcept.fromJson(json['adjustmentReason'] as Map<String, dynamic>) : null,
      amount: Money.fromJson(json['amount'] as Map<String, dynamic>),
      date: json['date'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'adjustment': adjustment?.toJson(),
      'adjustmentReason': adjustmentReason?.toJson(),
      'amount': amount.toJson(),
      'date': date,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'type': type.toJson(),
    };
  
  @override
  ClaimResponsePayment copyWith({
    Money? adjustment,
    CodeableConcept? adjustmentReason,
    Money? amount,
    String? date,
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
  }) {
    return ClaimResponsePayment(
      adjustment: adjustment ?? this.adjustment,
      adjustmentReason: adjustmentReason ?? this.adjustmentReason,
      amount: amount ?? this.amount,
      date: date ?? this.date,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
    );
  }
}
