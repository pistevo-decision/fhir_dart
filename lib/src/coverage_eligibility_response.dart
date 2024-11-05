part of '../fhir_dart.dart';

/// This resource provides eligibility and plan details from the processing of an CoverageEligibilityRequest resource.
class CoverageEligibilityResponse extends DomainResource
    implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'CoverageEligibilityResponse';

  /// Response creation date
  /// The date this resource was created.
  final String created;

  /// Disposition Message
  /// A human readable description of the status of the adjudication.
  final String? disposition;

  /// Processing errors
  /// Errors encountered during the processing of the request.
  final List<CoverageEligibilityResponseError>? error;

  /// Printed form identifier
  /// A code for the form to be used for printing the content.
  /// May be needed to identify specific jurisdictional forms.
  final CodeableConcept? form;

  /// Business Identifier for coverage eligiblity request
  /// A unique identifier assigned to this coverage eligiblity request.
  final List<Identifier>? identifier;

  /// Patient insurance information
  /// Financial instruments for reimbursement for the health care products and services.
  /// All insurance coverages for the patient which may be applicable for reimbursement, of the products and services listed in the claim, are typically provided in the claim to allow insurers to confirm the ordering of the insurance coverages relative to local 'coordination of benefit' rules. One coverage (and only one) with 'focal=true' is to be used in the adjudication of this claim. Coverages appearing before the focal Coverage in the list, and where 'subrogation=false', should provide a reference to the ClaimResponse containing the adjudication results of the prior claim.
  final List<CoverageEligibilityResponseInsurance>? insurance;

  /// Coverage issuer
  /// The Insurer who issued the coverage in question and is the author of the response.
  final Reference insurer;

  /// The outcome of the request processing.
  /// The resource may be used to indicate that: the request has been held (queued) for processing; that it has been processed and errors found (error); that no errors were found and that some of the adjudication has been undertaken (partial) or that all of the adjudication has been undertaken (complete).
  final String
      outcome; // Possible values: 'queued', 'complete', 'error', 'partial'
  /// Intended recipient of products and services
  /// The party who is the beneficiary of the supplied coverage and for whom eligibility is sought.
  final Reference patient;

  /// Preauthorization reference
  /// A reference from the Insurer to which these services pertain to be used on further communication and as proof that the request occurred.
  final String? preAuthRef;

  /// Code to specify whether requesting: prior authorization requirements for some service categories or billing codes; benefits for coverages specified or discovered; discovery and return of coverages for the patient; and/or validation that the specified coverage is in-force at the date/period specified or 'now' if not specified.
  final List<String>
      purpose; // Possible values: 'auth-requirements', 'benefits', 'discovery', 'validation'
  /// Eligibility request reference
  /// Reference to the original request resource.
  final Reference request;

  /// Party responsible for the request
  /// The provider which is responsible for the request.
  /// Typically this field would be 1..1 where this party is responsible for the claim but not necessarily professionally responsible for the provision of the individual products and services listed below.
  final Reference? requestor;

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
  CoverageEligibilityResponse({
    super.contained,
    required this.created,
    this.disposition,
    this.error,
    super.fhirExtension,
    this.form,
    super.id,
    this.identifier,
    super.implicitRules,
    this.insurance,
    required this.insurer,
    super.language,
    super.meta,
    super.modifierExtension,
    required this.outcome,
    required this.patient,
    this.preAuthRef,
    required this.purpose,
    required this.request,
    this.requestor,
    this.servicedDate,
    this.servicedPeriod,
    required this.status,
    super.text,
  });

  @override
  factory CoverageEligibilityResponse.fromJson(Map<String, dynamic> json) {
    return CoverageEligibilityResponse(
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      created: json['created'] as String,
      disposition: json['disposition'] as String?,
      error: (json['error'] as List<dynamic>?)
          ?.map((e) => CoverageEligibilityResponseError.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      form: json['form'] != null
          ? CodeableConcept.fromJson(
              (json['form'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map((e) => CoverageEligibilityResponseInsurance.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      insurer:
          Reference.fromJson((json['insurer'] as Map).cast<String, dynamic>()),
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      outcome: json['outcome'] as String,
      patient:
          Reference.fromJson((json['patient'] as Map).cast<String, dynamic>()),
      preAuthRef: json['preAuthRef'] as String?,
      purpose:
          (json['purpose'] as List<dynamic>).map((e) => e as String).toList(),
      request:
          Reference.fromJson((json['request'] as Map).cast<String, dynamic>()),
      requestor: json['requestor'] != null
          ? Reference.fromJson(
              (json['requestor'] as Map).cast<String, dynamic>())
          : null,
      servicedDate: json['servicedDate'] as String?,
      servicedPeriod: json['servicedPeriod'] != null
          ? Period.fromJson(
              (json['servicedPeriod'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contained': contained?.map((e) => e.toJson()).toList(),
        'created': created,
        'disposition': disposition,
        'error': error?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'form': form?.toJson(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'insurance': insurance?.map((e) => e.toJson()).toList(),
        'insurer': insurer.toJson(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'outcome': outcome,
        'patient': patient.toJson(),
        'preAuthRef': preAuthRef,
        'purpose': purpose.map((e) => e).toList(),
        'request': request.toJson(),
        'requestor': requestor?.toJson(),
        'servicedDate': servicedDate,
        'servicedPeriod': servicedPeriod?.toJson(),
        'status': status,
        'text': text?.toJson(),
      };

  @override
  CoverageEligibilityResponse copyWith({
    List<Resource>? contained,
    String? created,
    String? disposition,
    List<CoverageEligibilityResponseError>? error,
    List<Extension>? fhirExtension,
    CodeableConcept? form,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<CoverageEligibilityResponseInsurance>? insurance,
    Reference? insurer,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? outcome,
    Reference? patient,
    String? preAuthRef,
    List<String>? purpose,
    Reference? request,
    Reference? requestor,
    String? servicedDate,
    Period? servicedPeriod,
    String? status,
    Narrative? text,
  }) {
    return CoverageEligibilityResponse(
      contained: contained ?? this.contained,
      created: created ?? this.created,
      disposition: disposition ?? this.disposition,
      error: error ?? this.error,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      form: form ?? this.form,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      insurance: insurance ?? this.insurance,
      insurer: insurer ?? this.insurer,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      outcome: outcome ?? this.outcome,
      patient: patient ?? this.patient,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      purpose: purpose ?? this.purpose,
      request: request ?? this.request,
      requestor: requestor ?? this.requestor,
      servicedDate: servicedDate ?? this.servicedDate,
      servicedPeriod: servicedPeriod ?? this.servicedPeriod,
      status: status ?? this.status,
      text: text ?? this.text,
    );
  }
}
