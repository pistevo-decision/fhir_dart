part of '../fhir_dart.dart';

/// This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided.
class ExplanationOfBenefit extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'ExplanationOfBenefit';

  /// Details of the event
  /// Details of a accident which resulted in injuries which required the products and services listed in the claim.
  final ExplanationOfBenefitAccident? accident;

  /// Insurer added line items
  /// The first-tier service adjudications for payor added product or service lines.
  final List<ExplanationOfBenefitAddItem>? addItem;

  /// Header-level adjudication
  /// The adjudication results which are presented at the header level rather than at the line-item or add-item levels.
  final List<ExplanationOfBenefitItemAdjudication>? adjudication;

  /// Balance by Benefit Category.
  final List<ExplanationOfBenefitBenefitBalance>? benefitBalance;

  /// When the benefits are applicable
  /// The term of the benefits documented in this response.
  /// Not applicable when use=claim.
  final Period? benefitPeriod;

  /// Relevant time frame for the claim
  /// The period for which charges are being submitted.
  /// Typically this would be today or in the past for a claim, and today or in the future for preauthorizations and prodeterminations. Typically line item dates of service should fall within the billing period if one is specified.
  final Period? billablePeriod;

  /// Care Team members
  /// The members of the team who provided the products and services.
  final List<ExplanationOfBenefitCareTeam>? careTeam;

  /// Claim reference
  /// The business identifier for the instance of the adjudication request: claim predetermination or preauthorization.
  final Reference? claim;

  /// Claim response reference
  /// The business identifier for the instance of the adjudication response: claim, predetermination or preauthorization response.
  final Reference? claimResponse;

  /// Response creation date
  /// The date this resource was created.
  /// This field is independent of the date of creation of the resource as it may reflect the creation date of a source document prior to digitization. Typically for claims all services must be completed as of this date.
  final String created;

  /// Pertinent diagnosis information
  /// Information about diagnoses relevant to the claim items.
  final List<ExplanationOfBenefitDiagnosis>? diagnosis;

  /// Disposition Message
  /// A human readable description of the status of the adjudication.
  final String? disposition;

  /// Author of the claim
  /// Individual who created the claim, predetermination or preauthorization.
  final Reference? enterer;

  /// Servicing Facility
  /// Facility where the services were provided.
  final Reference? facility;

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

  /// For whom to reserve funds
  /// A code to indicate whether and for whom funds are to be reserved for future claims.
  /// This field is only used for preauthorizations.
  final CodeableConcept? fundsReserveRequested;

  /// Business Identifier for the resource
  /// A unique identifier assigned to this explanation of benefit.
  final List<Identifier>? identifier;

  /// Patient insurance information
  /// Financial instruments for reimbursement for the health care products and services specified on the claim.
  /// All insurance coverages for the patient which may be applicable for reimbursement, of the products and services listed in the claim, are typically provided in the claim to allow insurers to confirm the ordering of the insurance coverages relative to local 'coordination of benefit' rules. One coverage (and only one) with 'focal=true' is to be used in the adjudication of this claim. Coverages appearing before the focal Coverage in the list, and where 'Coverage.subrogation=false', should provide a reference to the ClaimResponse containing the adjudication results of the prior claim.
  final List<ExplanationOfBenefitInsurance> insurance;

  /// Party responsible for reimbursement
  /// The party responsible for authorization, adjudication and reimbursement.
  final Reference insurer;

  /// Product or service provided
  /// A claim line. Either a simple (a product or service) or a 'group' of details which can also be a simple items or groups of sub-details.
  final List<ExplanationOfBenefitItem>? item;

  /// Original prescription if superceded by fulfiller
  /// Original prescription which has been superseded by this prescription to support the dispensing of pharmacy services, medications or products.
  /// For example, a physician may prescribe a medication which the pharmacy determines is contraindicated, or for which the patient has an intolerance, and therefor issues a new prescription for an alternate medication which has the same therapeutic intent. The prescription from the pharmacy becomes the 'prescription' and that from the physician becomes the 'original prescription'.
  final Reference? originalPrescription;

  /// The outcome of the claim, predetermination, or preauthorization processing.
  /// The resource may be used to indicate that: the request has been held (queued) for processing; that it has been processed and errors found (error); that no errors were found and that some of the adjudication has been undertaken (partial) or that all of the adjudication has been undertaken (complete).
  final String
      outcome; // Possible values: 'queued', 'complete', 'error', 'partial'
  /// The recipient of the products and services
  /// The party to whom the professional services and/or products have been supplied or are being considered and for whom actual for forecast reimbursement is sought.
  final Reference patient;

  /// Recipient of benefits payable
  /// The party to be reimbursed for cost of the products and services according to the terms of the policy.
  /// Often providers agree to receive the benefits payable to reduce the near-term costs to the patient. The insurer may decline to pay the provider and may choose to pay the subscriber instead.
  final ExplanationOfBenefitPayee? payee;

  /// Payment Details
  /// Payment details for the adjudication of the claim.
  final ExplanationOfBenefitPayment? payment;

  /// Preauthorization reference
  /// Reference from the Insurer which is used in later communications which refers to this adjudication.
  /// This value is only present on preauthorization adjudications.
  final List<String>? preAuthRef;

  /// Preauthorization in-effect period
  /// The timeframe during which the supplied preauthorization reference may be quoted on claims to obtain the adjudication as provided.
  /// This value is only present on preauthorization adjudications.
  final List<Period>? preAuthRefPeriod;

  /// Precedence (primary, secondary, etc.)
  /// This indicates the relative order of a series of EOBs related to different coverages for the same suite of services.
  final int? precedence;

  /// Prescription authorizing services or products
  /// Prescription to support the dispensing of pharmacy, device or vision products.
  final Reference? prescription;

  /// Desired processing urgency
  /// The provider-required urgency of processing the request. Typical values include: stat, routine deferred.
  /// If a claim processor is unable to complete the processing as per the priority then they should generate and error and not process the request.
  final CodeableConcept? priority;

  /// Clinical procedures performed
  /// Procedures performed on the patient relevant to the billing items with the claim.
  final List<ExplanationOfBenefitProcedure>? procedure;

  /// Note concerning adjudication
  /// A note that describes or explains adjudication results in a human readable form.
  final List<ExplanationOfBenefitProcessNote>? processNote;

  /// Party responsible for the claim
  /// The provider which is responsible for the claim, predetermination or preauthorization.
  /// Typically this field would be 1..1 where this party is responsible for the claim but not necessarily professionally responsible for the provision of the individual products and services listed below.
  final Reference provider;

  /// Treatment Referral
  /// A reference to a referral resource.
  /// The referral resource which lists the date, practitioner, reason and other supporting information.
  final Reference? referral;

  /// Prior or corollary claims
  /// Other claims which are related to this claim such as prior submissions or claims for related services or for the same event.
  /// For example,  for the original treatment and follow-up exams.
  final List<ExplanationOfBenefitRelated>? related;

  /// The status of the resource instance.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'active', 'cancelled', 'draft', 'entered-in-error'
  /// More granular claim type
  /// A finer grained suite of claim type codes which may convey additional information such as Inpatient vs Outpatient and/or a specialty service.
  /// This may contain the local bill type codes such as the US UB-04 bill type code.
  final CodeableConcept? subType;

  /// Supporting information
  /// Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues.
  /// Often there are multiple jurisdiction specific valuesets which are required.
  final List<ExplanationOfBenefitSupportingInfo>? supportingInfo;

  /// Adjudication totals
  /// Categorized monetary totals for the adjudication.
  /// Totals for amounts submitted, co-pays, benefits payable etc.
  final List<ExplanationOfBenefitTotal>? total;

  /// Category or discipline
  /// The category of claim, e.g. oral, pharmacy, vision, institutional, professional.
  /// The majority of jurisdictions use: oral, pharmacy, vision, professional and institutional, or variants on those terms, as the general styles of claims. The valueset is extensible to accommodate other jurisdictional requirements.
  final CodeableConcept type;

  /// A code to indicate whether the nature of the request is: to request adjudication of products and services previously rendered; or requesting authorization and adjudication for provision in the future; or requesting the non-binding adjudication of the listed products and services which could be provided in the future.
  final String
      use; // Possible values: 'claim', 'preauthorization', 'predetermination'
  ExplanationOfBenefit({
    this.accident,
    this.addItem,
    this.adjudication,
    this.benefitBalance,
    this.benefitPeriod,
    this.billablePeriod,
    this.careTeam,
    this.claim,
    this.claimResponse,
    super.contained,
    required this.created,
    this.diagnosis,
    this.disposition,
    this.enterer,
    super.fhirExtension,
    this.facility,
    this.form,
    this.formCode,
    this.fundsReserve,
    this.fundsReserveRequested,
    super.id,
    this.identifier,
    super.implicitRules,
    required this.insurance,
    required this.insurer,
    this.item,
    super.language,
    super.meta,
    super.modifierExtension,
    this.originalPrescription,
    required this.outcome,
    required this.patient,
    this.payee,
    this.payment,
    this.preAuthRef,
    this.preAuthRefPeriod,
    this.precedence,
    this.prescription,
    this.priority,
    this.procedure,
    this.processNote,
    required this.provider,
    this.referral,
    this.related,
    required this.status,
    this.subType,
    this.supportingInfo,
    super.text,
    this.total,
    required this.type,
    required this.use,
  });

  @override
  factory ExplanationOfBenefit.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefit(
      accident: json['accident'] != null
          ? ExplanationOfBenefitAccident.fromJson(
              (json['accident'] as Map).cast<String, dynamic>())
          : null,
      addItem: (json['addItem'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAddItem.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitItemAdjudication.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      benefitBalance: (json['benefitBalance'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitBenefitBalance.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      benefitPeriod: json['benefitPeriod'] != null
          ? Period.fromJson(
              (json['benefitPeriod'] as Map).cast<String, dynamic>())
          : null,
      billablePeriod: json['billablePeriod'] != null
          ? Period.fromJson(
              (json['billablePeriod'] as Map).cast<String, dynamic>())
          : null,
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitCareTeam.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      claim: json['claim'] != null
          ? Reference.fromJson((json['claim'] as Map).cast<String, dynamic>())
          : null,
      claimResponse: json['claimResponse'] != null
          ? Reference.fromJson(
              (json['claimResponse'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      created: json['created'] as String,
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitDiagnosis.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      disposition: json['disposition'] as String?,
      enterer: json['enterer'] != null
          ? Reference.fromJson((json['enterer'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      facility: json['facility'] != null
          ? Reference.fromJson(
              (json['facility'] as Map).cast<String, dynamic>())
          : null,
      form: json['form'] != null
          ? Attachment.fromJson((json['form'] as Map).cast<String, dynamic>())
          : null,
      formCode: json['formCode'] != null
          ? CodeableConcept.fromJson(
              (json['formCode'] as Map).cast<String, dynamic>())
          : null,
      fundsReserve: json['fundsReserve'] != null
          ? CodeableConcept.fromJson(
              (json['fundsReserve'] as Map).cast<String, dynamic>())
          : null,
      fundsReserveRequested: json['fundsReserveRequested'] != null
          ? CodeableConcept.fromJson(
              (json['fundsReserveRequested'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      insurance: (json['insurance'] as List<dynamic>)
          .map((e) => ExplanationOfBenefitInsurance.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      insurer:
          Reference.fromJson((json['insurer'] as Map).cast<String, dynamic>()),
      item: (json['item'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitItem.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      originalPrescription: json['originalPrescription'] != null
          ? Reference.fromJson(
              (json['originalPrescription'] as Map).cast<String, dynamic>())
          : null,
      outcome: json['outcome'] as String,
      patient:
          Reference.fromJson((json['patient'] as Map).cast<String, dynamic>()),
      payee: json['payee'] != null
          ? ExplanationOfBenefitPayee.fromJson(
              (json['payee'] as Map).cast<String, dynamic>())
          : null,
      payment: json['payment'] != null
          ? ExplanationOfBenefitPayment.fromJson(
              (json['payment'] as Map).cast<String, dynamic>())
          : null,
      preAuthRef: (json['preAuthRef'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      preAuthRefPeriod: (json['preAuthRefPeriod'] as List<dynamic>?)
          ?.map((e) => Period.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      precedence: json['precedence'] as int?,
      prescription: json['prescription'] != null
          ? Reference.fromJson(
              (json['prescription'] as Map).cast<String, dynamic>())
          : null,
      priority: json['priority'] != null
          ? CodeableConcept.fromJson(
              (json['priority'] as Map).cast<String, dynamic>())
          : null,
      procedure: (json['procedure'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitProcedure.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      processNote: (json['processNote'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitProcessNote.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      provider:
          Reference.fromJson((json['provider'] as Map).cast<String, dynamic>()),
      referral: json['referral'] != null
          ? Reference.fromJson(
              (json['referral'] as Map).cast<String, dynamic>())
          : null,
      related: (json['related'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitRelated.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String,
      subType: json['subType'] != null
          ? CodeableConcept.fromJson(
              (json['subType'] as Map).cast<String, dynamic>())
          : null,
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitSupportingInfo.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      total: (json['total'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitTotal.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      type: CodeableConcept.fromJson(
          (json['type'] as Map).cast<String, dynamic>()),
      use: json['use'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'accident': accident?.toJson(),
        'addItem': addItem?.map((e) => e.toJson()).toList(),
        'adjudication': adjudication?.map((e) => e.toJson()).toList(),
        'benefitBalance': benefitBalance?.map((e) => e.toJson()).toList(),
        'benefitPeriod': benefitPeriod?.toJson(),
        'billablePeriod': billablePeriod?.toJson(),
        'careTeam': careTeam?.map((e) => e.toJson()).toList(),
        'claim': claim?.toJson(),
        'claimResponse': claimResponse?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'created': created,
        'diagnosis': diagnosis?.map((e) => e.toJson()).toList(),
        'disposition': disposition,
        'enterer': enterer?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'facility': facility?.toJson(),
        'form': form?.toJson(),
        'formCode': formCode?.toJson(),
        'fundsReserve': fundsReserve?.toJson(),
        'fundsReserveRequested': fundsReserveRequested?.toJson(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'insurance': insurance.map((e) => e.toJson()).toList(),
        'insurer': insurer.toJson(),
        'item': item?.map((e) => e.toJson()).toList(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'originalPrescription': originalPrescription?.toJson(),
        'outcome': outcome,
        'patient': patient.toJson(),
        'payee': payee?.toJson(),
        'payment': payment?.toJson(),
        'preAuthRef': preAuthRef?.map((e) => e).toList(),
        'preAuthRefPeriod': preAuthRefPeriod?.map((e) => e.toJson()).toList(),
        'precedence': precedence,
        'prescription': prescription?.toJson(),
        'priority': priority?.toJson(),
        'procedure': procedure?.map((e) => e.toJson()).toList(),
        'processNote': processNote?.map((e) => e.toJson()).toList(),
        'provider': provider.toJson(),
        'referral': referral?.toJson(),
        'related': related?.map((e) => e.toJson()).toList(),
        'status': status,
        'subType': subType?.toJson(),
        'supportingInfo': supportingInfo?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'total': total?.map((e) => e.toJson()).toList(),
        'type': type.toJson(),
        'use': use,
      };

  @override
  ExplanationOfBenefit copyWith({
    ExplanationOfBenefitAccident? accident,
    List<ExplanationOfBenefitAddItem>? addItem,
    List<ExplanationOfBenefitItemAdjudication>? adjudication,
    List<ExplanationOfBenefitBenefitBalance>? benefitBalance,
    Period? benefitPeriod,
    Period? billablePeriod,
    List<ExplanationOfBenefitCareTeam>? careTeam,
    Reference? claim,
    Reference? claimResponse,
    List<Resource>? contained,
    String? created,
    List<ExplanationOfBenefitDiagnosis>? diagnosis,
    String? disposition,
    Reference? enterer,
    List<Extension>? fhirExtension,
    Reference? facility,
    Attachment? form,
    CodeableConcept? formCode,
    CodeableConcept? fundsReserve,
    CodeableConcept? fundsReserveRequested,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<ExplanationOfBenefitInsurance>? insurance,
    Reference? insurer,
    List<ExplanationOfBenefitItem>? item,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    Reference? originalPrescription,
    String? outcome,
    Reference? patient,
    ExplanationOfBenefitPayee? payee,
    ExplanationOfBenefitPayment? payment,
    List<String>? preAuthRef,
    List<Period>? preAuthRefPeriod,
    int? precedence,
    Reference? prescription,
    CodeableConcept? priority,
    List<ExplanationOfBenefitProcedure>? procedure,
    List<ExplanationOfBenefitProcessNote>? processNote,
    Reference? provider,
    Reference? referral,
    List<ExplanationOfBenefitRelated>? related,
    String? status,
    CodeableConcept? subType,
    List<ExplanationOfBenefitSupportingInfo>? supportingInfo,
    Narrative? text,
    List<ExplanationOfBenefitTotal>? total,
    CodeableConcept? type,
    String? use,
  }) {
    return ExplanationOfBenefit(
      accident: accident ?? this.accident,
      addItem: addItem ?? this.addItem,
      adjudication: adjudication ?? this.adjudication,
      benefitBalance: benefitBalance ?? this.benefitBalance,
      benefitPeriod: benefitPeriod ?? this.benefitPeriod,
      billablePeriod: billablePeriod ?? this.billablePeriod,
      careTeam: careTeam ?? this.careTeam,
      claim: claim ?? this.claim,
      claimResponse: claimResponse ?? this.claimResponse,
      contained: contained ?? this.contained,
      created: created ?? this.created,
      diagnosis: diagnosis ?? this.diagnosis,
      disposition: disposition ?? this.disposition,
      enterer: enterer ?? this.enterer,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      facility: facility ?? this.facility,
      form: form ?? this.form,
      formCode: formCode ?? this.formCode,
      fundsReserve: fundsReserve ?? this.fundsReserve,
      fundsReserveRequested:
          fundsReserveRequested ?? this.fundsReserveRequested,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      insurance: insurance ?? this.insurance,
      insurer: insurer ?? this.insurer,
      item: item ?? this.item,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      originalPrescription: originalPrescription ?? this.originalPrescription,
      outcome: outcome ?? this.outcome,
      patient: patient ?? this.patient,
      payee: payee ?? this.payee,
      payment: payment ?? this.payment,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      preAuthRefPeriod: preAuthRefPeriod ?? this.preAuthRefPeriod,
      precedence: precedence ?? this.precedence,
      prescription: prescription ?? this.prescription,
      priority: priority ?? this.priority,
      procedure: procedure ?? this.procedure,
      processNote: processNote ?? this.processNote,
      provider: provider ?? this.provider,
      referral: referral ?? this.referral,
      related: related ?? this.related,
      status: status ?? this.status,
      subType: subType ?? this.subType,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      text: text ?? this.text,
      total: total ?? this.total,
      type: type ?? this.type,
      use: use ?? this.use,
    );
  }
}
