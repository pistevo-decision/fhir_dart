part of '../fhir_dart.dart';

/// Settlement particulars
/// Distribution of the payment amount for a previously acknowledged payable.
class PaymentReconciliationDetail extends BackboneElement
    implements FhirResource {
  /// Amount allocated to this payable
  /// The monetary amount allocated from the total payment to the payable.
  final Money? amount;

  /// Date of commitment to pay
  /// The date from the response resource containing a commitment to pay.
  final String? date;

  /// Business identifier of the payment detail
  /// Unique identifier for the current payment item for the referenced payable.
  final Identifier? identifier;

  /// Recipient of the payment
  /// The party which is receiving the payment.
  final Reference? payee;

  /// Business identifier of the prior payment detail
  /// Unique identifier for the prior payment item for the referenced payable.
  final Identifier? predecessor;

  /// Request giving rise to the payment
  /// A resource, such as a Claim, the evaluation of which could lead to payment.
  final Reference? request;

  /// Response committing to a payment
  /// A resource, such as a ClaimResponse, which contains a commitment to payment.
  final Reference? response;

  /// Contact for the response
  /// A reference to the individual who is responsible for inquiries regarding the response and its payment.
  final Reference? responsible;

  /// Submitter of the request
  /// The party which submitted the claim or financial transaction.
  final Reference? submitter;

  /// Category of payment
  /// Code to indicate the nature of the payment.
  /// For example: payment, adjustment, funds advance, etc.
  final CodeableConcept type;
  PaymentReconciliationDetail({
    this.amount,
    this.date,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.modifierExtension,
    this.payee,
    this.predecessor,
    this.request,
    this.response,
    this.responsible,
    this.submitter,
    required this.type,
  });

  @override
  factory PaymentReconciliationDetail.fromJson(Map<String, dynamic> json) {
    return PaymentReconciliationDetail(
      amount: json['amount'] != null
          ? Money.fromJson(json['amount'] as Map<String, dynamic>)
          : null,
      date: json['date'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      payee: json['payee'] != null
          ? Reference.fromJson(json['payee'] as Map<String, dynamic>)
          : null,
      predecessor: json['predecessor'] != null
          ? Identifier.fromJson(json['predecessor'] as Map<String, dynamic>)
          : null,
      request: json['request'] != null
          ? Reference.fromJson(json['request'] as Map<String, dynamic>)
          : null,
      response: json['response'] != null
          ? Reference.fromJson(json['response'] as Map<String, dynamic>)
          : null,
      responsible: json['responsible'] != null
          ? Reference.fromJson(json['responsible'] as Map<String, dynamic>)
          : null,
      submitter: json['submitter'] != null
          ? Reference.fromJson(json['submitter'] as Map<String, dynamic>)
          : null,
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'amount': amount?.toJson(),
        'date': date,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'payee': payee?.toJson(),
        'predecessor': predecessor?.toJson(),
        'request': request?.toJson(),
        'response': response?.toJson(),
        'responsible': responsible?.toJson(),
        'submitter': submitter?.toJson(),
        'type': type.toJson(),
      };

  @override
  PaymentReconciliationDetail copyWith({
    Money? amount,
    String? date,
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    List<Extension>? modifierExtension,
    Reference? payee,
    Identifier? predecessor,
    Reference? request,
    Reference? response,
    Reference? responsible,
    Reference? submitter,
    CodeableConcept? type,
  }) {
    return PaymentReconciliationDetail(
      amount: amount ?? this.amount,
      date: date ?? this.date,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      payee: payee ?? this.payee,
      predecessor: predecessor ?? this.predecessor,
      request: request ?? this.request,
      response: response ?? this.response,
      responsible: responsible ?? this.responsible,
      submitter: submitter ?? this.submitter,
      type: type ?? this.type,
    );
  }
}
