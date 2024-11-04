part of '../fhir_dart.dart';

 /// This resource provides the adjudication details from the processing of a Claim resource.
class ClaimResponse extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'ClaimResponse';
   /// Insurer added line items
   /// The first-tier service adjudications for payor added product or service lines.
  final List<ClaimResponseAddItem>? addItem;
   /// Header-level adjudication
   /// The adjudication results which are presented at the header level rather than at the line-item or add-item levels.
  final List<ClaimResponseItemAdjudication>? adjudication;
   /// Request for additional information
   /// Request for additional supporting or authorizing information.
   /// For example: professional reports, documents, images, clinical resources, or accident reports.
  final List<Reference>? communicationRequest;
   /// Response creation date
   /// The date this resource was created.
  final String created;
   /// Disposition Message
   /// A human readable description of the status of the adjudication.
  final String? disposition;
   /// Processing errors
   /// Errors encountered during the processing of the adjudication.
   /// If the request contains errors then an error element should be provided and no adjudication related sections (item, addItem, or payment) should be present.
  final List<ClaimResponseError>? error;
   /// Printed reference or actual form
   /// The actual form, by reference or inclusion, for printing the content or an EOB.
   /// Needed to permit insurers to include the actual form.
  final Attachment? form;
   /// Printed form identifier
   /// A code for the form to be used for printing the content.
   /// May be needed to identify specific jurisdictional forms.
  final CodeableConcept? formCode;
   /// Funds reserved status
   /// A code, used only on a response to a preauthorization, to indicate whether the benefits payable have been reserved and for whom.
   /// Fund would be release by a future claim quoting the preAuthRef of this response. Examples of values include: provider, patient, none.
  final CodeableConcept? fundsReserve;
   /// Business Identifier for a claim response
   /// A unique identifier assigned to this claim response.
  final List<Identifier>? identifier;
   /// Patient insurance information
   /// Financial instruments for reimbursement for the health care products and services specified on the claim.
   /// All insurance coverages for the patient which may be applicable for reimbursement, of the products and services listed in the claim, are typically provided in the claim to allow insurers to confirm the ordering of the insurance coverages relative to local 'coordination of benefit' rules. One coverage (and only one) with 'focal=true' is to be used in the adjudication of this claim. Coverages appearing before the focal Coverage in the list, and where 'subrogation=false', should provide a reference to the ClaimResponse containing the adjudication results of the prior claim.
  final List<ClaimResponseInsurance>? insurance;
   /// Party responsible for reimbursement
   /// The party responsible for authorization, adjudication and reimbursement.
  final Reference insurer;
   /// Adjudication for claim line items
   /// A claim line. Either a simple (a product or service) or a 'group' of details which can also be a simple items or groups of sub-details.
  final List<ClaimResponseItem>? item;
   /// The outcome of the claim, predetermination, or preauthorization processing.
   /// The resource may be used to indicate that: the request has been held (queued) for processing; that it has been processed and errors found (error); that no errors were found and that some of the adjudication has been undertaken (partial) or that all of the adjudication has been undertaken (complete).
  final String outcome; // Possible values: 'queued', 'complete', 'error', 'partial'
   /// The recipient of the products and services
   /// The party to whom the professional services and/or products have been supplied or are being considered and for whom actual for facast reimbursement is sought.
  final Reference patient;
   /// Party to be paid any benefits payable
   /// Type of Party to be reimbursed: subscriber, provider, other.
  final CodeableConcept? payeeType;
   /// Payment Details
   /// Payment details for the adjudication of the claim.
  final ClaimResponsePayment? payment;
   /// Preauthorization reference effective period
   /// The time frame during which this authorization is effective.
  final Period? preAuthPeriod;
   /// Preauthorization reference
   /// Reference from the Insurer which is used in later communications which refers to this adjudication.
   /// This value is only present on preauthorization adjudications.
  final String? preAuthRef;
   /// Note concerning adjudication
   /// A note that describes or explains adjudication results in a human readable form.
  final List<ClaimResponseProcessNote>? processNote;
   /// Id of resource triggering adjudication
   /// Original request resource reference.
  final Reference? request;
   /// Party responsible for the claim
   /// The provider which is responsible for the claim, predetermination or preauthorization.
   /// Typically this field would be 1..1 where this party is responsible for the claim but not necessarily professionally responsible for the provision of the individual products and services listed below.
  final Reference? requestor;
   /// The status of the resource instance.
   /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String status; // Possible values: 'active', 'cancelled', 'draft', 'entered-in-error'
   /// More granular claim type
   /// A finer grained suite of claim type codes which may convey additional information such as Inpatient vs Outpatient and/or a specialty service.
   /// This may contain the local bill type codes, for example the US UB-04 bill type code or the CMS bill type.
  final CodeableConcept? subType;
   /// Adjudication totals
   /// Categorized monetary totals for the adjudication.
   /// Totals for amounts submitted, co-pays, benefits payable etc.
  final List<ClaimResponseTotal>? total;
   /// More granular claim type
   /// A finer grained suite of claim type codes which may convey additional information such as Inpatient vs Outpatient and/or a specialty service.
   /// This may contain the local bill type codes, for example the US UB-04 bill type code or the CMS bill type.
  final CodeableConcept type;
   /// A code to indicate whether the nature of the request is: to request adjudication of products and services previously rendered; or requesting authorization and adjudication for provision in the future; or requesting the non-binding adjudication of the listed products and services which could be provided in the future.
  final String use; // Possible values: 'claim', 'preauthorization', 'predetermination'
  ClaimResponse({
    this.addItem,
    this.adjudication,
    this.communicationRequest,
    super.contained,
    required this.created,
    this.disposition,
    this.error,
    super.fhirExtension,
    this.form,
    this.formCode,
    this.fundsReserve,
    super.id,
    this.identifier,
    super.implicitRules,
    this.insurance,
    required this.insurer,
    this.item,
    super.language,
    super.meta,
    super.modifierExtension,
    required this.outcome,
    required this.patient,
    this.payeeType,
    this.payment,
    this.preAuthPeriod,
    this.preAuthRef,
    this.processNote,
    this.request,
    this.requestor,
    required this.status,
    this.subType,
    super.text,
    this.total,
    required this.type,
    required this.use,
  });
  
  @override
  factory ClaimResponse.fromJson(Map<String, dynamic> json) {
    return ClaimResponse(
      addItem: (json['addItem'] as List<dynamic>?)?.map((e) => ClaimResponseAddItem.fromJson(e as Map<String, dynamic>)).toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)?.map((e) => ClaimResponseItemAdjudication.fromJson(e as Map<String, dynamic>)).toList(),
      communicationRequest: (json['communicationRequest'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      created: json['created'] as String,
      disposition: json['disposition'] as String?,
      error: (json['error'] as List<dynamic>?)?.map((e) => ClaimResponseError.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      form: json['form'] != null ? Attachment.fromJson(json['form'] as Map<String, dynamic>) : null,
      formCode: json['formCode'] != null ? CodeableConcept.fromJson(json['formCode'] as Map<String, dynamic>) : null,
      fundsReserve: json['fundsReserve'] != null ? CodeableConcept.fromJson(json['fundsReserve'] as Map<String, dynamic>) : null,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      insurance: (json['insurance'] as List<dynamic>?)?.map((e) => ClaimResponseInsurance.fromJson(e as Map<String, dynamic>)).toList(),
      insurer: Reference.fromJson(json['insurer'] as Map<String, dynamic>),
      item: (json['item'] as List<dynamic>?)?.map((e) => ClaimResponseItem.fromJson(e as Map<String, dynamic>)).toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      outcome: json['outcome'] as String,
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      payeeType: json['payeeType'] != null ? CodeableConcept.fromJson(json['payeeType'] as Map<String, dynamic>) : null,
      payment: json['payment'] != null ? ClaimResponsePayment.fromJson(json['payment'] as Map<String, dynamic>) : null,
      preAuthPeriod: json['preAuthPeriod'] != null ? Period.fromJson(json['preAuthPeriod'] as Map<String, dynamic>) : null,
      preAuthRef: json['preAuthRef'] as String?,
      processNote: (json['processNote'] as List<dynamic>?)?.map((e) => ClaimResponseProcessNote.fromJson(e as Map<String, dynamic>)).toList(),
      request: json['request'] != null ? Reference.fromJson(json['request'] as Map<String, dynamic>) : null,
      requestor: json['requestor'] != null ? Reference.fromJson(json['requestor'] as Map<String, dynamic>) : null,
      status: json['status'] as String,
      subType: json['subType'] != null ? CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>) : null,
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
      total: (json['total'] as List<dynamic>?)?.map((e) => ClaimResponseTotal.fromJson(e as Map<String, dynamic>)).toList(),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      use: json['use'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'addItem': addItem?.map((e) => e.toJson()).toList(),
      'adjudication': adjudication?.map((e) => e.toJson()).toList(),
      'communicationRequest': communicationRequest?.map((e) => e.toJson()).toList(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'created': created,
      'disposition': disposition,
      'error': error?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'form': form?.toJson(),
      'formCode': formCode?.toJson(),
      'fundsReserve': fundsReserve?.toJson(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'insurance': insurance?.map((e) => e.toJson()).toList(),
      'insurer': insurer.toJson(),
      'item': item?.map((e) => e.toJson()).toList(),
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'outcome': outcome,
      'patient': patient.toJson(),
      'payeeType': payeeType?.toJson(),
      'payment': payment?.toJson(),
      'preAuthPeriod': preAuthPeriod?.toJson(),
      'preAuthRef': preAuthRef,
      'processNote': processNote?.map((e) => e.toJson()).toList(),
      'request': request?.toJson(),
      'requestor': requestor?.toJson(),
      'status': status,
      'subType': subType?.toJson(),
      'text': text?.toJson(),
      'total': total?.map((e) => e.toJson()).toList(),
      'type': type.toJson(),
      'use': use,
    };
  
  @override
  ClaimResponse copyWith({
    List<ClaimResponseAddItem>? addItem,
    List<ClaimResponseItemAdjudication>? adjudication,
    List<Reference>? communicationRequest,
    List<Resource>? contained,
    String? created,
    String? disposition,
    List<ClaimResponseError>? error,
    List<Extension>? fhirExtension,
    Attachment? form,
    CodeableConcept? formCode,
    CodeableConcept? fundsReserve,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<ClaimResponseInsurance>? insurance,
    Reference? insurer,
    List<ClaimResponseItem>? item,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? outcome,
    Reference? patient,
    CodeableConcept? payeeType,
    ClaimResponsePayment? payment,
    Period? preAuthPeriod,
    String? preAuthRef,
    List<ClaimResponseProcessNote>? processNote,
    Reference? request,
    Reference? requestor,
    String? status,
    CodeableConcept? subType,
    Narrative? text,
    List<ClaimResponseTotal>? total,
    CodeableConcept? type,
    String? use,
  }) {
    return ClaimResponse(
      addItem: addItem ?? this.addItem,
      adjudication: adjudication ?? this.adjudication,
      communicationRequest: communicationRequest ?? this.communicationRequest,
      contained: contained ?? this.contained,
      created: created ?? this.created,
      disposition: disposition ?? this.disposition,
      error: error ?? this.error,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      form: form ?? this.form,
      formCode: formCode ?? this.formCode,
      fundsReserve: fundsReserve ?? this.fundsReserve,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      insurance: insurance ?? this.insurance,
      insurer: insurer ?? this.insurer,
      item: item ?? this.item,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      outcome: outcome ?? this.outcome,
      patient: patient ?? this.patient,
      payeeType: payeeType ?? this.payeeType,
      payment: payment ?? this.payment,
      preAuthPeriod: preAuthPeriod ?? this.preAuthPeriod,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      processNote: processNote ?? this.processNote,
      request: request ?? this.request,
      requestor: requestor ?? this.requestor,
      status: status ?? this.status,
      subType: subType ?? this.subType,
      text: text ?? this.text,
      total: total ?? this.total,
      type: type ?? this.type,
      use: use ?? this.use,
    );
  }
}
