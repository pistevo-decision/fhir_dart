part of '../fhir_dart.dart';

/// The Claim resource fulfills three information request requirements: Claim - a request for adjudication for reimbursement for products and/or services provided; Preauthorization - a request to authorize the future provision of products and/or services including an anticipated adjudication; and, Predetermination - a request for a non-bind adjudication of possible future products and/or services.
/// A provider issued list of professional services and products which have been provided, or are to be provided, to a patient which is sent to an insurer for reimbursement.
/// The Claim resource is used by providers to exchange services and products rendered to patients or planned to be rendered with insurers for reimbuserment. It is also used by insurers to exchange claims information with statutory reporting and data analytics firms.
class Claim extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'Claim';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Details of the event
  /// Details of an accident which resulted in injuries which required the products and services listed in the claim.
  final ClaimAccident? accident;

  /// Relevant time frame for the claim
  /// The period for which charges are being submitted.
  /// Typically this would be today or in the past for a claim, and today or in the future for preauthorizations and predeterminations. Typically line item dates of service should fall within the billing period if one is specified.
  final Period? billablePeriod;

  /// Members of the care team
  /// The members of the team who provided the products and services.
  final List<ClaimCareTeam>? careTeam;

  /// Resource creation date
  /// The date this resource was created.
  /// This field is independent of the date of creation of the resource as it may reflect the creation date of a source document prior to digitization. Typically for claims all services must be completed as of this date.
  final String created;

  /// Pertinent diagnosis information
  /// Information about diagnoses relevant to the claim items.
  final List<ClaimDiagnosis>? diagnosis;

  /// Author of the claim
  /// Individual who created the claim, predetermination or preauthorization.
  final Reference? enterer;

  /// Servicing facility
  /// Facility where the services were provided.
  final Reference? facility;

  /// For whom to reserve funds
  /// A code to indicate whether and for whom funds are to be reserved for future claims.
  /// This field is only used for preauthorizations.
  final CodeableConcept? fundsReserve;

  /// Business Identifier for claim
  /// A unique identifier assigned to this claim.
  final List<Identifier>? identifier;

  /// Patient insurance information
  /// Financial instruments for reimbursement for the health care products and services specified on the claim.
  /// All insurance coverages for the patient which may be applicable for reimbursement, of the products and services listed in the claim, are typically provided in the claim to allow insurers to confirm the ordering of the insurance coverages relative to local 'coordination of benefit' rules. One coverage (and only one) with 'focal=true' is to be used in the adjudication of this claim. Coverages appearing before the focal Coverage in the list, and where 'Coverage.subrogation=false', should provide a reference to the ClaimResponse containing the adjudication results of the prior claim.
  final List<ClaimInsurance> insurance;

  /// Target
  /// The Insurer who is target of the request.
  final Reference? insurer;

  /// Product or service provided
  /// A claim line. Either a simple  product or service or a 'group' of details which can each be a simple items or groups of sub-details.
  final List<ClaimItem>? item;

  /// Original prescription if superseded by fulfiller
  /// Original prescription which has been superseded by this prescription to support the dispensing of pharmacy services, medications or products.
  /// For example, a physician may prescribe a medication which the pharmacy determines is contraindicated, or for which the patient has an intolerance, and therefore issues a new prescription for an alternate medication which has the same therapeutic intent. The prescription from the pharmacy becomes the 'prescription' and that from the physician becomes the 'original prescription'.
  final Reference? originalPrescription;

  /// The recipient of the products and services
  /// The party to whom the professional services and/or products have been supplied or are being considered and for whom actual or forecast reimbursement is sought.
  final Reference patient;

  /// Recipient of benefits payable
  /// The party to be reimbursed for cost of the products and services according to the terms of the policy.
  /// Often providers agree to receive the benefits payable to reduce the near-term costs to the patient. The insurer may decline to pay the provider and choose to pay the subscriber instead.
  final ClaimPayee? payee;

  /// Prescription authorizing services and products
  /// Prescription to support the dispensing of pharmacy, device or vision products.
  final Reference? prescription;

  /// Desired processing ugency
  /// The provider-required urgency of processing the request. Typical values include: stat, routine deferred.
  /// If a claim processor is unable to complete the processing as per the priority then they should generate and error and not process the request.
  final CodeableConcept priority;

  /// Clinical procedures performed
  /// Procedures performed on the patient relevant to the billing items with the claim.
  final List<ClaimProcedure>? procedure;

  /// Party responsible for the claim
  /// The provider which is responsible for the claim, predetermination or preauthorization.
  /// Typically this field would be 1..1 where this party is responsible for the claim but not necessarily professionally responsible for the provision of the individual products and services listed below.
  final Reference provider;

  /// Treatment referral
  /// A reference to a referral resource.
  /// The referral resource which lists the date, practitioner, reason and other supporting information.
  final Reference? referral;

  /// Prior or corollary claims
  /// Other claims which are related to this claim such as prior submissions or claims for related services or for the same event.
  /// For example,  for the original treatment and follow-up exams.
  final List<ClaimRelated>? related;

  /// The status of the resource instance.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'active', 'cancelled', 'draft', 'entered-in-error'
  /// More granular claim type
  /// A finer grained suite of claim type codes which may convey additional information such as Inpatient vs Outpatient and/or a specialty service.
  /// This may contain the local bill type codes, for example the US UB-04 bill type code or the CMS bill type.
  final CodeableConcept? subType;

  /// Supporting information
  /// Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues.
  /// Often there are multiple jurisdiction specific valuesets which are required.
  final List<ClaimSupportingInfo>? supportingInfo;

  /// Total claim cost
  /// The total value of the all the items in the claim.
  final Money? total;

  /// Category or discipline
  /// The category of claim, e.g. oral, pharmacy, vision, institutional, professional.
  /// The majority of jurisdictions use: oral, pharmacy, vision, professional and institutional, or variants on those terms, as the general styles of claims. The valueset is extensible to accommodate other jurisdictional requirements.
  final CodeableConcept type;

  /// A code to indicate whether the nature of the request is: to request adjudication of products and services previously rendered; or requesting authorization and adjudication for provision in the future; or requesting the non-binding adjudication of the listed products and services which could be provided in the future.
  final String
      use; // Possible values: 'claim', 'preauthorization', 'predetermination'
  Claim({
    this.accident,
    this.billablePeriod,
    this.careTeam,
    super.contained,
    required this.created,
    this.diagnosis,
    this.enterer,
    super.fhirExtension,
    this.facility,
    this.fundsReserve,
    super.id,
    this.identifier,
    super.implicitRules,
    required this.insurance,
    this.insurer,
    this.item,
    super.language,
    super.meta,
    super.modifierExtension,
    this.originalPrescription,
    required this.patient,
    this.payee,
    this.prescription,
    required this.priority,
    this.procedure,
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
  factory Claim.fromJson(Map<String, dynamic> json) {
    return Claim(
      accident: json['accident'] != null
          ? ClaimAccident.fromJson(
              (json['accident'] as Map).cast<String, dynamic>())
          : null,
      billablePeriod: json['billablePeriod'] != null
          ? Period.fromJson(
              (json['billablePeriod'] as Map).cast<String, dynamic>())
          : null,
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map(
              (e) => ClaimCareTeam.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      created: json['created'] as String,
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map((e) =>
              ClaimDiagnosis.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
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
      fundsReserve: json['fundsReserve'] != null
          ? CodeableConcept.fromJson(
              (json['fundsReserve'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      insurance: (json['insurance'] as List<dynamic>)
          .map((e) =>
              ClaimInsurance.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      insurer: json['insurer'] != null
          ? Reference.fromJson((json['insurer'] as Map).cast<String, dynamic>())
          : null,
      item: (json['item'] as List<dynamic>?)
          ?.map((e) => ClaimItem.fromJson((e as Map).cast<String, dynamic>()))
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
      patient:
          Reference.fromJson((json['patient'] as Map).cast<String, dynamic>()),
      payee: json['payee'] != null
          ? ClaimPayee.fromJson((json['payee'] as Map).cast<String, dynamic>())
          : null,
      prescription: json['prescription'] != null
          ? Reference.fromJson(
              (json['prescription'] as Map).cast<String, dynamic>())
          : null,
      priority: CodeableConcept.fromJson(
          (json['priority'] as Map).cast<String, dynamic>()),
      procedure: (json['procedure'] as List<dynamic>?)
          ?.map((e) =>
              ClaimProcedure.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      provider:
          Reference.fromJson((json['provider'] as Map).cast<String, dynamic>()),
      referral: json['referral'] != null
          ? Reference.fromJson(
              (json['referral'] as Map).cast<String, dynamic>())
          : null,
      related: (json['related'] as List<dynamic>?)
          ?.map(
              (e) => ClaimRelated.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String,
      subType: json['subType'] != null
          ? CodeableConcept.fromJson(
              (json['subType'] as Map).cast<String, dynamic>())
          : null,
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map((e) =>
              ClaimSupportingInfo.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      total: json['total'] != null
          ? Money.fromJson((json['total'] as Map).cast<String, dynamic>())
          : null,
      type: CodeableConcept.fromJson(
          (json['type'] as Map).cast<String, dynamic>()),
      use: json['use'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'accident': accident?.toJson(),
        'billablePeriod': billablePeriod?.toJson(),
        'careTeam': careTeam?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'created': created,
        'diagnosis': diagnosis?.map((e) => e.toJson()).toList(),
        'enterer': enterer?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'facility': facility?.toJson(),
        'fundsReserve': fundsReserve?.toJson(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'insurance': insurance.map((e) => e.toJson()).toList(),
        'insurer': insurer?.toJson(),
        'item': item?.map((e) => e.toJson()).toList(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'originalPrescription': originalPrescription?.toJson(),
        'patient': patient.toJson(),
        'payee': payee?.toJson(),
        'prescription': prescription?.toJson(),
        'priority': priority.toJson(),
        'procedure': procedure?.map((e) => e.toJson()).toList(),
        'provider': provider.toJson(),
        'referral': referral?.toJson(),
        'related': related?.map((e) => e.toJson()).toList(),
        'status': status,
        'subType': subType?.toJson(),
        'supportingInfo': supportingInfo?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'total': total?.toJson(),
        'type': type.toJson(),
        'use': use,
      };

  @override
  Claim copyWith({
    ClaimAccident? accident,
    Period? billablePeriod,
    List<ClaimCareTeam>? careTeam,
    List<Resource>? contained,
    String? created,
    List<ClaimDiagnosis>? diagnosis,
    Reference? enterer,
    List<Extension>? fhirExtension,
    Reference? facility,
    CodeableConcept? fundsReserve,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<ClaimInsurance>? insurance,
    Reference? insurer,
    List<ClaimItem>? item,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    Reference? originalPrescription,
    Reference? patient,
    ClaimPayee? payee,
    Reference? prescription,
    CodeableConcept? priority,
    List<ClaimProcedure>? procedure,
    Reference? provider,
    Reference? referral,
    List<ClaimRelated>? related,
    String? status,
    CodeableConcept? subType,
    List<ClaimSupportingInfo>? supportingInfo,
    Narrative? text,
    Money? total,
    CodeableConcept? type,
    String? use,
  }) {
    return Claim(
      accident: accident ?? this.accident,
      billablePeriod: billablePeriod ?? this.billablePeriod,
      careTeam: careTeam ?? this.careTeam,
      contained: contained ?? this.contained,
      created: created ?? this.created,
      diagnosis: diagnosis ?? this.diagnosis,
      enterer: enterer ?? this.enterer,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      facility: facility ?? this.facility,
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
      originalPrescription: originalPrescription ?? this.originalPrescription,
      patient: patient ?? this.patient,
      payee: payee ?? this.payee,
      prescription: prescription ?? this.prescription,
      priority: priority ?? this.priority,
      procedure: procedure ?? this.procedure,
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
