part of '../fhir_dart.dart';

/// The CoverageEligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-force and optionally to provide the insurance details of the policy.
class CoverageEligibilityRequest extends DomainResource
    implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'CoverageEligibilityRequest';

  /// Creation date
  /// The date when this resource was created.
  final String created;

  /// Author
  /// Person who created the request.
  final Reference? enterer;

  /// Servicing facility
  /// Facility where the services are intended to be provided.
  final Reference? facility;

  /// Business Identifier for coverage eligiblity request
  /// A unique identifier assigned to this coverage eligiblity request.
  final List<Identifier>? identifier;

  /// Patient insurance information
  /// Financial instruments for reimbursement for the health care products and services.
  /// All insurance coverages for the patient which may be applicable for reimbursement, of the products and services listed in the claim, are typically provided in the claim to allow insurers to confirm the ordering of the insurance coverages relative to local 'coordination of benefit' rules. One coverage (and only one) with 'focal=true' is to be used in the adjudication of this claim. Coverages appearing before the focal Coverage in the list, and where 'subrogation=false', should provide a reference to the ClaimResponse containing the adjudication results of the prior claim.
  final List<CoverageEligibilityRequestInsurance>? insurance;

  /// Coverage issuer
  /// The Insurer who issued the coverage in question and is the recipient of the request.
  final Reference insurer;

  /// Item to be evaluated for eligibiity
  /// Service categories or billable services for which benefit details and/or an authorization prior to service delivery may be required by the payor.
  final List<CoverageEligibilityRequestItem>? item;

  /// Intended recipient of products and services
  /// The party who is the beneficiary of the supplied coverage and for whom eligibility is sought.
  /// 1..1.
  final Reference patient;

  /// Desired processing priority
  /// When the requestor expects the processor to complete processing.
  final CodeableConcept? priority;

  /// Party responsible for the request
  /// The provider which is responsible for the request.
  /// Typically this field would be 1..1 where this party is responsible for the eligibility request but not necessarily professionally responsible for the provision of the individual products and services listed below.
  final Reference? provider;

  /// Code to specify whether requesting: prior authorization requirements for some service categories or billing codes; benefits for coverages specified or discovered; discovery and return of coverages for the patient; and/or validation that the specified coverage is in-force at the date/period specified or 'now' if not specified.
  final List<String>
      purpose; // Possible values: 'auth-requirements', 'benefits', 'discovery', 'validation'
  /// Estimated date or dates of service
  /// The date or dates when the enclosed suite of services were performed or completed.
  final String? servicedDate;

  /// Estimated date or dates of service
  /// The date or dates when the enclosed suite of services were performed or completed.
  final Period? servicedPeriod;

  /// The status of the resource instance.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'active', 'cancelled', 'draft', 'entered-in-error'
  /// Supporting information
  /// Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues.
  /// Often there are multiple jurisdiction specific valuesets which are required.
  final List<CoverageEligibilityRequestSupportingInfo>? supportingInfo;
  CoverageEligibilityRequest({
    super.contained,
    required this.created,
    this.enterer,
    super.fhirExtension,
    this.facility,
    super.id,
    this.identifier,
    super.implicitRules,
    this.insurance,
    required this.insurer,
    this.item,
    super.language,
    super.meta,
    super.modifierExtension,
    required this.patient,
    this.priority,
    this.provider,
    required this.purpose,
    this.servicedDate,
    this.servicedPeriod,
    required this.status,
    this.supportingInfo,
    super.text,
  });

  @override
  factory CoverageEligibilityRequest.fromJson(Map<String, dynamic> json) {
    return CoverageEligibilityRequest(
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      created: json['created'] as String,
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
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map((e) => CoverageEligibilityRequestInsurance.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      insurer:
          Reference.fromJson((json['insurer'] as Map).cast<String, dynamic>()),
      item: (json['item'] as List<dynamic>?)
          ?.map((e) => CoverageEligibilityRequestItem.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      patient:
          Reference.fromJson((json['patient'] as Map).cast<String, dynamic>()),
      priority: json['priority'] != null
          ? CodeableConcept.fromJson(
              (json['priority'] as Map).cast<String, dynamic>())
          : null,
      provider: json['provider'] != null
          ? Reference.fromJson(
              (json['provider'] as Map).cast<String, dynamic>())
          : null,
      purpose:
          (json['purpose'] as List<dynamic>).map((e) => e as String).toList(),
      servicedDate: json['servicedDate'] as String?,
      servicedPeriod: json['servicedPeriod'] != null
          ? Period.fromJson(
              (json['servicedPeriod'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map((e) => CoverageEligibilityRequestSupportingInfo.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contained': contained?.map((e) => e.toJson()).toList(),
        'created': created,
        'enterer': enterer?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'facility': facility?.toJson(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'insurance': insurance?.map((e) => e.toJson()).toList(),
        'insurer': insurer.toJson(),
        'item': item?.map((e) => e.toJson()).toList(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'patient': patient.toJson(),
        'priority': priority?.toJson(),
        'provider': provider?.toJson(),
        'purpose': purpose.map((e) => e).toList(),
        'servicedDate': servicedDate,
        'servicedPeriod': servicedPeriod?.toJson(),
        'status': status,
        'supportingInfo': supportingInfo?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  CoverageEligibilityRequest copyWith({
    List<Resource>? contained,
    String? created,
    Reference? enterer,
    List<Extension>? fhirExtension,
    Reference? facility,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<CoverageEligibilityRequestInsurance>? insurance,
    Reference? insurer,
    List<CoverageEligibilityRequestItem>? item,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    Reference? patient,
    CodeableConcept? priority,
    Reference? provider,
    List<String>? purpose,
    String? servicedDate,
    Period? servicedPeriod,
    String? status,
    List<CoverageEligibilityRequestSupportingInfo>? supportingInfo,
    Narrative? text,
  }) {
    return CoverageEligibilityRequest(
      contained: contained ?? this.contained,
      created: created ?? this.created,
      enterer: enterer ?? this.enterer,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      facility: facility ?? this.facility,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      insurance: insurance ?? this.insurance,
      insurer: insurer ?? this.insurer,
      item: item ?? this.item,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      patient: patient ?? this.patient,
      priority: priority ?? this.priority,
      provider: provider ?? this.provider,
      purpose: purpose ?? this.purpose,
      servicedDate: servicedDate ?? this.servicedDate,
      servicedPeriod: servicedPeriod ?? this.servicedPeriod,
      status: status ?? this.status,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      text: text ?? this.text,
    );
  }
}
