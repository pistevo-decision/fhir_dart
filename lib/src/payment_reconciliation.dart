part of '../fhir_dart.dart';

/// This resource provides the details including amount of a payment and allocates the payment items being paid.
class PaymentReconciliation extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'PaymentReconciliation';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Creation date
  /// The date when the resource was created.
  final String created;

  /// Settlement particulars
  /// Distribution of the payment amount for a previously acknowledged payable.
  final List<PaymentReconciliationDetail>? detail;

  /// Disposition message
  /// A human readable description of the status of the request for the reconciliation.
  final String? disposition;

  /// Printed form identifier
  /// A code for the form to be used for printing the content.
  /// May be needed to identify specific jurisdictional forms.
  final CodeableConcept? formCode;

  /// Business Identifier for a payment reconciliation
  /// A unique identifier assigned to this payment reconciliation.
  final List<Identifier>? identifier;

  /// The outcome of a request for a reconciliation.
  /// The resource may be used to indicate that: the request has been held (queued) for processing; that it has been processed and errors found (error); that no errors were found and that some of the adjudication has been undertaken (partial) or that all of the adjudication has been undertaken (complete).
  final String?
      outcome; // Possible values: 'queued', 'complete', 'error', 'partial'
  /// Total amount of Payment
  /// Total payment amount as indicated on the financial instrument.
  final Money paymentAmount;

  /// When payment issued
  /// The date of payment as indicated on the financial instrument.
  final String paymentDate;

  /// Business identifier for the payment
  /// Issuer's unique identifier for the payment instrument.
  /// For example: EFT number or check number.
  final Identifier? paymentIdentifier;

  /// Party generating payment
  /// The party who generated the payment.
  /// This party is also responsible for the reconciliation.
  final Reference? paymentIssuer;

  /// Period covered
  /// The period of time for which payments have been gathered into this bulk payment for settlement.
  final Period? period;

  /// Note concerning processing
  /// A note that describes or explains the processing in a human readable form.
  final List<PaymentReconciliationProcessNote>? processNote;

  /// Reference to requesting resource
  /// Original request resource reference.
  final Reference? request;

  /// Responsible practitioner
  /// The practitioner who is responsible for the services rendered to the patient.
  final Reference? requestor;

  /// The status of the resource instance.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'active', 'cancelled', 'draft', 'entered-in-error'
  PaymentReconciliation({
    super.contained,
    required this.created,
    this.detail,
    this.disposition,
    super.fhirExtension,
    this.formCode,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.outcome,
    required this.paymentAmount,
    required this.paymentDate,
    this.paymentIdentifier,
    this.paymentIssuer,
    this.period,
    this.processNote,
    this.request,
    this.requestor,
    required this.status,
    super.text,
  });

  @override
  factory PaymentReconciliation.fromJson(Map<String, dynamic> json) {
    return PaymentReconciliation(
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      created: json['created'] as String,
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => PaymentReconciliationDetail.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      disposition: json['disposition'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      formCode: json['formCode'] != null
          ? CodeableConcept.fromJson(
              (json['formCode'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      outcome: json['outcome'] as String?,
      paymentAmount: Money.fromJson(
          (json['paymentAmount'] as Map).cast<String, dynamic>()),
      paymentDate: json['paymentDate'] as String,
      paymentIdentifier: json['paymentIdentifier'] != null
          ? Identifier.fromJson(
              (json['paymentIdentifier'] as Map).cast<String, dynamic>())
          : null,
      paymentIssuer: json['paymentIssuer'] != null
          ? Reference.fromJson(
              (json['paymentIssuer'] as Map).cast<String, dynamic>())
          : null,
      period: json['period'] != null
          ? Period.fromJson((json['period'] as Map).cast<String, dynamic>())
          : null,
      processNote: (json['processNote'] as List<dynamic>?)
          ?.map((e) => PaymentReconciliationProcessNote.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      request: json['request'] != null
          ? Reference.fromJson((json['request'] as Map).cast<String, dynamic>())
          : null,
      requestor: json['requestor'] != null
          ? Reference.fromJson(
              (json['requestor'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'contained': contained?.map((e) => e.toJson()).toList(),
        'created': created,
        'detail': detail?.map((e) => e.toJson()).toList(),
        'disposition': disposition,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'formCode': formCode?.toJson(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'outcome': outcome,
        'paymentAmount': paymentAmount.toJson(),
        'paymentDate': paymentDate,
        'paymentIdentifier': paymentIdentifier?.toJson(),
        'paymentIssuer': paymentIssuer?.toJson(),
        'period': period?.toJson(),
        'processNote': processNote?.map((e) => e.toJson()).toList(),
        'request': request?.toJson(),
        'requestor': requestor?.toJson(),
        'status': status,
        'text': text?.toJson(),
      };

  @override
  PaymentReconciliation copyWith({
    List<Resource>? contained,
    String? created,
    List<PaymentReconciliationDetail>? detail,
    String? disposition,
    List<Extension>? fhirExtension,
    CodeableConcept? formCode,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? outcome,
    Money? paymentAmount,
    String? paymentDate,
    Identifier? paymentIdentifier,
    Reference? paymentIssuer,
    Period? period,
    List<PaymentReconciliationProcessNote>? processNote,
    Reference? request,
    Reference? requestor,
    String? status,
    Narrative? text,
  }) {
    return PaymentReconciliation(
      contained: contained ?? this.contained,
      created: created ?? this.created,
      detail: detail ?? this.detail,
      disposition: disposition ?? this.disposition,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      formCode: formCode ?? this.formCode,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      outcome: outcome ?? this.outcome,
      paymentAmount: paymentAmount ?? this.paymentAmount,
      paymentDate: paymentDate ?? this.paymentDate,
      paymentIdentifier: paymentIdentifier ?? this.paymentIdentifier,
      paymentIssuer: paymentIssuer ?? this.paymentIssuer,
      period: period ?? this.period,
      processNote: processNote ?? this.processNote,
      request: request ?? this.request,
      requestor: requestor ?? this.requestor,
      status: status ?? this.status,
      text: text ?? this.text,
    );
  }
}
