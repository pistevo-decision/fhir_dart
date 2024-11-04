part of '../fhir_dart.dart';

/// The Coverage resource contains the insurance card level information, which is customary to provide on claims and other communications between providers and insurers.
/// Financial instrument which may be used to reimburse or pay for health care products and services. Includes both insurance and self-payment.
/// Coverage provides a link between covered parties (patients) and the payors of their healthcare costs (both insurance and self-pay).
class Coverage extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Coverage';

  /// Plan beneficiary
  /// The party who benefits from the insurance coverage; the patient when products and/or services are provided.
  final Reference beneficiary;

  /// Additional coverage classifications
  /// A suite of underwriter specific classifiers.
  /// For example may be used to identify a class of coverage or employer group, Policy, Plan.
  final List<CoverageClass>? fhirClass;

  /// Contract details
  /// The policy(s) which constitute this insurance coverage.
  final List<Reference>? contract;

  /// Patient payments for services/products
  /// A suite of codes indicating the cost category and associated amount which have been detailed in the policy and may have been  included on the health card.
  /// For example by knowing the patient visit co-pay, the provider can collect the amount prior to undertaking treatment.
  final List<CoverageCostToBeneficiary>? costToBeneficiary;

  /// Dependent number
  /// A unique identifier for a dependent under the coverage.
  /// Periodically the member number is constructed from the subscriberId and the dependant number.
  final String? dependent;

  /// Business Identifier for the coverage
  /// A unique identifier assigned to this coverage.
  /// The main (and possibly only) identifier for the coverage - often referred to as a Member Id, Certificate number, Personal Health Number or Case ID. May be constructed as the concatenation of the Coverage.SubscriberID and the Coverage.dependant.
  final List<Identifier>? identifier;

  /// Insurer network
  /// The insurer-specific identifier for the insurer-defined network of providers to which the beneficiary may seek treatment which will be covered at the 'in-network' rate, otherwise 'out of network' terms and conditions apply.
  final String? network;

  /// Relative order of the coverage
  /// The order of applicability of this coverage relative to other coverages which are currently in force. Note, there may be gaps in the numbering and this does not imply primary, secondary etc. as the specific positioning of coverages depends upon the episode of care.
  final int? order;

  /// Issuer of the policy
  /// The program or plan underwriter or payor including both insurance and non-insurance agreements, such as patient-pay agreements.
  /// May provide multiple identifiers such as insurance company identifier or business identifier (BIN number).
  /// For selfpay it may provide multiple paying persons and/or organizations.
  final List<Reference> payor;

  /// Coverage start and end dates
  /// Time period during which the coverage is in force. A missing start date indicates the start date isn't known, a missing end date means the coverage is continuing to be in force.
  final Period? period;

  /// Owner of the policy
  /// The party who 'owns' the insurance policy.
  /// For example: may be an individual, corporation or the subscriber's employer.
  final Reference? policyHolder;

  /// Beneficiary relationship to the subscriber
  /// The relationship of beneficiary (patient) to the subscriber.
  /// Typically, an individual uses policies which are theirs (relationship='self') before policies owned by others.
  final CodeableConcept? relationship;

  /// The status of the resource instance.
  /// This element is labeled as a modifier because the status contains the code entered-in-error that marks the coverage as not currently valid.
  final String
      status; // Possible values: 'active', 'cancelled', 'draft', 'entered-in-error'
  /// Reimbursement to insurer
  /// When 'subrogation=true' this insurance instance has been included not for adjudication but to provide insurers with the details to recover costs.
  /// Typically, automotive and worker's compensation policies would be flagged with 'subrogation=true' to enable healthcare payors to collect against accident claims.
  final bool? subrogation;

  /// Subscriber to the policy
  /// The party who has signed-up for or 'owns' the contractual relationship to the policy or to whom the benefit of the policy for services rendered to them or their family is due.
  /// May be self or a parent in the case of dependants.
  final Reference? subscriber;

  /// ID assigned to the subscriber
  /// The insurer assigned ID for the Subscriber.
  final String? subscriberId;

  /// Coverage category such as medical or accident
  /// The type of coverage: social program, medical plan, accident coverage (workers compensation, auto), group health or payment by an individual or organization.
  final CodeableConcept? type;
  Coverage({
    required this.beneficiary,
    this.fhirClass,
    super.contained,
    this.contract,
    this.costToBeneficiary,
    this.dependent,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.network,
    this.order,
    required this.payor,
    this.period,
    this.policyHolder,
    this.relationship,
    required this.status,
    this.subrogation,
    this.subscriber,
    this.subscriberId,
    super.text,
    this.type,
  });

  @override
  factory Coverage.fromJson(Map<String, dynamic> json) {
    return Coverage(
      beneficiary:
          Reference.fromJson(json['beneficiary'] as Map<String, dynamic>),
      fhirClass: (json['class'] as List<dynamic>?)
          ?.map((e) => CoverageClass.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      contract: (json['contract'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      costToBeneficiary: (json['costToBeneficiary'] as List<dynamic>?)
          ?.map((e) =>
              CoverageCostToBeneficiary.fromJson(e as Map<String, dynamic>))
          .toList(),
      dependent: json['dependent'] as String?,
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
      network: json['network'] as String?,
      order: json['order'] as int?,
      payor: (json['payor'] as List<dynamic>)
          .map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      policyHolder: json['policyHolder'] != null
          ? Reference.fromJson(json['policyHolder'] as Map<String, dynamic>)
          : null,
      relationship: json['relationship'] != null
          ? CodeableConcept.fromJson(
              json['relationship'] as Map<String, dynamic>)
          : null,
      status: json['status'] as String,
      subrogation: json['subrogation'] as bool?,
      subscriber: json['subscriber'] != null
          ? Reference.fromJson(json['subscriber'] as Map<String, dynamic>)
          : null,
      subscriberId: json['subscriberId'] as String?,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'beneficiary': beneficiary.toJson(),
        'class': fhirClass?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'contract': contract?.map((e) => e.toJson()).toList(),
        'costToBeneficiary': costToBeneficiary?.map((e) => e.toJson()).toList(),
        'dependent': dependent,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'network': network,
        'order': order,
        'payor': payor.map((e) => e.toJson()).toList(),
        'period': period?.toJson(),
        'policyHolder': policyHolder?.toJson(),
        'relationship': relationship?.toJson(),
        'status': status,
        'subrogation': subrogation,
        'subscriber': subscriber?.toJson(),
        'subscriberId': subscriberId,
        'text': text?.toJson(),
        'type': type?.toJson(),
      };

  @override
  Coverage copyWith({
    Reference? beneficiary,
    List<CoverageClass>? fhirClass,
    List<Resource>? contained,
    List<Reference>? contract,
    List<CoverageCostToBeneficiary>? costToBeneficiary,
    String? dependent,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? network,
    int? order,
    List<Reference>? payor,
    Period? period,
    Reference? policyHolder,
    CodeableConcept? relationship,
    String? status,
    bool? subrogation,
    Reference? subscriber,
    String? subscriberId,
    Narrative? text,
    CodeableConcept? type,
  }) {
    return Coverage(
      beneficiary: beneficiary ?? this.beneficiary,
      fhirClass: fhirClass ?? this.fhirClass,
      contained: contained ?? this.contained,
      contract: contract ?? this.contract,
      costToBeneficiary: costToBeneficiary ?? this.costToBeneficiary,
      dependent: dependent ?? this.dependent,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      network: network ?? this.network,
      order: order ?? this.order,
      payor: payor ?? this.payor,
      period: period ?? this.period,
      policyHolder: policyHolder ?? this.policyHolder,
      relationship: relationship ?? this.relationship,
      status: status ?? this.status,
      subrogation: subrogation ?? this.subrogation,
      subscriber: subscriber ?? this.subscriber,
      subscriberId: subscriberId ?? this.subscriberId,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
