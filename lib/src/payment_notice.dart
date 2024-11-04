part of '../fhir_dart.dart';

/// This resource provides the status of the payment for goods and services rendered, and the request and response resource references.
class PaymentNotice extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'PaymentNotice';

  /// Monetary amount of the payment
  /// The amount sent to the payee.
  final Money amount;

  /// Creation date
  /// The date when this resource was created.
  final String created;

  /// Business Identifier for the payment noctice
  /// A unique identifier assigned to this payment notice.
  final List<Identifier>? identifier;

  /// Party being paid
  /// The party who will receive or has received payment that is the subject of this notification.
  final Reference? payee;

  /// Payment reference
  /// A reference to the payment which is the subject of this notice.
  final Reference payment;

  /// Payment or clearing date
  /// The date when the above payment action occurred.
  final String? paymentDate;

  /// Issued or cleared Status of the payment
  /// A code indicating whether payment has been sent or cleared.
  /// Typically paid: payment sent, cleared: payment received.
  final CodeableConcept? paymentStatus;

  /// Responsible practitioner
  /// The practitioner who is responsible for the services rendered to the patient.
  final Reference? provider;

  /// Party being notified
  /// The party who is notified of the payment status.
  final Reference recipient;

  /// Request reference
  /// Reference of resource for which payment is being made.
  final Reference? request;

  /// Response reference
  /// Reference of response to resource for which payment is being made.
  final Reference? response;

  /// The status of the resource instance.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'active', 'cancelled', 'draft', 'entered-in-error'
  PaymentNotice({
    required this.amount,
    super.contained,
    required this.created,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.payee,
    required this.payment,
    this.paymentDate,
    this.paymentStatus,
    this.provider,
    required this.recipient,
    this.request,
    this.response,
    required this.status,
    super.text,
  });

  @override
  factory PaymentNotice.fromJson(Map<String, dynamic> json) {
    return PaymentNotice(
      amount: Money.fromJson(json['amount'] as Map<String, dynamic>),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: json['created'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      payee: json['payee'] != null
          ? Reference.fromJson(json['payee'] as Map<String, dynamic>)
          : null,
      payment: Reference.fromJson(json['payment'] as Map<String, dynamic>),
      paymentDate: json['paymentDate'] as String?,
      paymentStatus: json['paymentStatus'] != null
          ? CodeableConcept.fromJson(
              json['paymentStatus'] as Map<String, dynamic>)
          : null,
      provider: json['provider'] != null
          ? Reference.fromJson(json['provider'] as Map<String, dynamic>)
          : null,
      recipient: Reference.fromJson(json['recipient'] as Map<String, dynamic>),
      request: json['request'] != null
          ? Reference.fromJson(json['request'] as Map<String, dynamic>)
          : null,
      response: json['response'] != null
          ? Reference.fromJson(json['response'] as Map<String, dynamic>)
          : null,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'amount': amount.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'created': created,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'payee': payee?.toJson(),
        'payment': payment.toJson(),
        'paymentDate': paymentDate,
        'paymentStatus': paymentStatus?.toJson(),
        'provider': provider?.toJson(),
        'recipient': recipient.toJson(),
        'request': request?.toJson(),
        'response': response?.toJson(),
        'status': status,
        'text': text?.toJson(),
      };

  @override
  PaymentNotice copyWith({
    Money? amount,
    List<Resource>? contained,
    String? created,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    Reference? payee,
    Reference? payment,
    String? paymentDate,
    CodeableConcept? paymentStatus,
    Reference? provider,
    Reference? recipient,
    Reference? request,
    Reference? response,
    String? status,
    Narrative? text,
  }) {
    return PaymentNotice(
      amount: amount ?? this.amount,
      contained: contained ?? this.contained,
      created: created ?? this.created,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      payee: payee ?? this.payee,
      payment: payment ?? this.payment,
      paymentDate: paymentDate ?? this.paymentDate,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      provider: provider ?? this.provider,
      recipient: recipient ?? this.recipient,
      request: request ?? this.request,
      response: response ?? this.response,
      status: status ?? this.status,
      text: text ?? this.text,
    );
  }
}
