part of '../fhir_dart.dart';

/// Invoice containing collected ChargeItems from an Account with calculated individual and total price for Billing purpose.
class Invoice extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'Invoice';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Account that is being balanced
  /// Account which is supposed to be balanced with this Invoice.
  /// Systems posting the ChargeItems might not always be able to determine, which accounts the Items need to be places into. It is up to the potprocessing Financial System to apply internal rules to decide based on the Encounter/EpisodeOfCare/Patient/Coverage context and the type of ChargeItem, which Account is appropriate.
  final Reference? account;

  /// Reason for cancellation of this Invoice
  /// In case of Invoice cancellation a reason must be given (entered in error, superseded by corrected invoice etc.).
  /// Derived Profiles may choose to add invariants requiring this field to be populated if either priceOverride or factorOverride have been filled.
  final String? cancelledReason;

  /// Invoice date / posting date
  /// Date/time(s) of when this Invoice was posted.
  /// The list of types may be constrained as appropriate for the type of charge item.
  final String? date;

  /// Business Identifier for item
  /// Identifier of this Invoice, often used for reference in correspondence about this invoice or for tracking of payments.
  final List<Identifier>? identifier;

  /// Issuing Organization of Invoice
  /// The organizationissuing the Invoice.
  /// Practitioners and Devices can be associated with multiple organizations. It has to be made clear, on behalf of which Organization the services have been rendered.
  final Reference? issuer;

  /// Line items of this Invoice
  /// Each line item represents one charge for goods and services rendered. Details such as date, code and amount are found in the referenced ChargeItem resource.
  final List<InvoiceLineItem>? lineItem;

  /// Comments made about the invoice by the issuer, subject, or other participants.
  final List<Annotation>? note;

  /// Participant in creation of this Invoice
  /// Indicates who or what performed or participated in the charged service.
  final List<InvoiceParticipant>? participant;

  /// Payment details such as banking details, period of payment, deductibles, methods of payment.
  /// Derived Profiles may chose to add invariants requiring this field to be populated if either priceOverride or factorOverride have been filled.
  final String? paymentTerms;

  /// Recipient of this invoice
  /// The individual or Organization responsible for balancing of this invoice.
  final Reference? recipient;

  /// The current state of the Invoice.
  final String
      status; // Possible values: 'draft', 'issued', 'balanced', 'cancelled', 'entered-in-error'
  /// Recipient(s) of goods and services
  /// The individual or set of individuals receiving the goods and services billed in this invoice.
  final Reference? subject;

  /// Gross total of this Invoice
  /// Invoice total, tax included.
  /// There is no reason to carry the price in the instance of a ChargeItem unless circumstances require a manual override. The list prices or are usually defined in a back catalogue of the billing codes  (see ChargeItem.definition). Derived profiles may require a ChargeItem.overrideReason to be provided if either factor or price are manually overridden.
  final Money? totalGross;

  /// Net total of this Invoice
  /// Invoice total , taxes excluded.
  /// There is no reason to carry the price in the instance of a ChargeItem unless circumstances require a manual override. The list prices or are usually defined in a back catalogue of the billing codes  (see ChargeItem.definition). Derived profiles may require a ChargeItem.overrideReason to be provided if either factor or price are manually overridden.
  final Money? totalNet;

  /// Components of Invoice total
  /// The total amount for the Invoice may be calculated as the sum of the line items with surcharges/deductions that apply in certain conditions.  The priceComponent element can be used to offer transparency to the recipient of the Invoice of how the total price was calculated.
  final List<InvoiceLineItemPriceComponent>? totalPriceComponent;

  /// Type of Invoice depending on domain, realm an usage (e.g. internal/external, dental, preliminary).
  final CodeableConcept? type;
  Invoice({
    this.account,
    this.cancelledReason,
    super.contained,
    this.date,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.issuer,
    super.language,
    this.lineItem,
    super.meta,
    super.modifierExtension,
    this.note,
    this.participant,
    this.paymentTerms,
    this.recipient,
    required this.status,
    this.subject,
    super.text,
    this.totalGross,
    this.totalNet,
    this.totalPriceComponent,
    this.type,
  });

  @override
  factory Invoice.fromJson(Map<String, dynamic> json) {
    return Invoice(
      account: json['account'] != null
          ? Reference.fromJson((json['account'] as Map).cast<String, dynamic>())
          : null,
      cancelledReason: json['cancelledReason'] as String?,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      date: json['date'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      issuer: json['issuer'] != null
          ? Reference.fromJson((json['issuer'] as Map).cast<String, dynamic>())
          : null,
      language: json['language'] as String?,
      lineItem: (json['lineItem'] as List<dynamic>?)
          ?.map((e) =>
              InvoiceLineItem.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      participant: (json['participant'] as List<dynamic>?)
          ?.map((e) =>
              InvoiceParticipant.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      paymentTerms: json['paymentTerms'] as String?,
      recipient: json['recipient'] != null
          ? Reference.fromJson(
              (json['recipient'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      subject: json['subject'] != null
          ? Reference.fromJson((json['subject'] as Map).cast<String, dynamic>())
          : null,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      totalGross: json['totalGross'] != null
          ? Money.fromJson((json['totalGross'] as Map).cast<String, dynamic>())
          : null,
      totalNet: json['totalNet'] != null
          ? Money.fromJson((json['totalNet'] as Map).cast<String, dynamic>())
          : null,
      totalPriceComponent: (json['totalPriceComponent'] as List<dynamic>?)
          ?.map((e) => InvoiceLineItemPriceComponent.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'account': account?.toJson(),
        'cancelledReason': cancelledReason,
        'contained': contained?.map((e) => e.toJson()).toList(),
        'date': date,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'issuer': issuer?.toJson(),
        'language': language,
        'lineItem': lineItem?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'participant': participant?.map((e) => e.toJson()).toList(),
        'paymentTerms': paymentTerms,
        'recipient': recipient?.toJson(),
        'status': status,
        'subject': subject?.toJson(),
        'text': text?.toJson(),
        'totalGross': totalGross?.toJson(),
        'totalNet': totalNet?.toJson(),
        'totalPriceComponent':
            totalPriceComponent?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
      };

  @override
  Invoice copyWith({
    Reference? account,
    String? cancelledReason,
    List<Resource>? contained,
    String? date,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    Reference? issuer,
    String? language,
    List<InvoiceLineItem>? lineItem,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    List<InvoiceParticipant>? participant,
    String? paymentTerms,
    Reference? recipient,
    String? status,
    Reference? subject,
    Narrative? text,
    Money? totalGross,
    Money? totalNet,
    List<InvoiceLineItemPriceComponent>? totalPriceComponent,
    CodeableConcept? type,
  }) {
    return Invoice(
      account: account ?? this.account,
      cancelledReason: cancelledReason ?? this.cancelledReason,
      contained: contained ?? this.contained,
      date: date ?? this.date,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      issuer: issuer ?? this.issuer,
      language: language ?? this.language,
      lineItem: lineItem ?? this.lineItem,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      participant: participant ?? this.participant,
      paymentTerms: paymentTerms ?? this.paymentTerms,
      recipient: recipient ?? this.recipient,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      totalGross: totalGross ?? this.totalGross,
      totalNet: totalNet ?? this.totalNet,
      totalPriceComponent: totalPriceComponent ?? this.totalPriceComponent,
      type: type ?? this.type,
    );
  }
}
