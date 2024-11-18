part of '../fhir_dart.dart';

/// Represents a request for a patient to employ a medical device. The device may be an implantable device, or an external assistive device, such as a walker.
class DeviceRequest extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'DeviceRequest';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// When recorded
  /// When the request transitioned to being actionable.
  final String? authoredOn;

  /// What request fulfills
  /// Plan/proposal/order fulfilled by this request.
  final List<Reference>? basedOn;

  /// Device requested
  /// The details of the device to be used.
  final CodeableConcept? codeCodeableConcept;

  /// Device requested
  /// The details of the device to be used.
  final Reference? codeReference;

  /// Encounter motivating request
  /// An encounter that provides additional context in which this request is made.
  final Reference? encounter;

  /// Identifier of composite request
  /// Composite request this is part of.
  final Identifier? groupIdentifier;

  /// External Request identifier
  /// Identifiers assigned to this order by the orderer or by the receiver.
  final List<Identifier>? identifier;

  /// Instantiates FHIR protocol or definition
  /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this DeviceRequest.
  /// Note: This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number.
  final List<String>? instantiatesCanonical;

  /// Instantiates external protocol or definition
  /// The URL pointing to an externally maintained protocol, guideline, orderset or other definition that is adhered to in whole or in part by this DeviceRequest.
  /// This might be an HTML page, PDF, etc. or could just be a non-resolvable URI identifier.
  final List<String>? instantiatesUri;

  /// Associated insurance coverage
  /// Insurance plans, coverage extensions, pre-authorizations and/or pre-determinations that may be required for delivering the requested service.
  final List<Reference>? insurance;

  /// Whether the request is a proposal, plan, an original order or a reflex order.
  final String
      intent; // Possible values: 'proposal', 'plan', 'directive', 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order', 'option'
  /// Notes or comments
  /// Details about this request that were not represented at all or sufficiently in one of the attributes provided in a class. These may include for example a comment, an instruction, or a note associated with the statement.
  final List<Annotation>? note;

  /// Desired time or schedule for use
  /// The timing schedule for the use of the device. The Schedule data type allows many different expressions, for example. "Every 8 hours"; "Three times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  final String? occurrenceDateTime;

  /// Desired time or schedule for use
  /// The timing schedule for the use of the device. The Schedule data type allows many different expressions, for example. "Every 8 hours"; "Three times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  final Period? occurrencePeriod;

  /// Desired time or schedule for use
  /// The timing schedule for the use of the device. The Schedule data type allows many different expressions, for example. "Every 8 hours"; "Three times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  final Timing? occurrenceTiming;

  /// Device details
  /// Specific parameters for the ordered item.  For example, the prism value for lenses.
  final List<DeviceRequestParameter>? parameter;

  /// Requested Filler
  /// The desired performer for doing the diagnostic testing.
  final Reference? performer;

  /// Filler role
  /// Desired type of performer for doing the diagnostic testing.
  final CodeableConcept? performerType;

  /// Indicates how quickly the {{title}} should be addressed with respect to other requests.
  final String?
      priority; // Possible values: 'routine', 'urgent', 'asap', 'stat'
  /// What request replaces
  /// The request takes the place of the referenced completed or terminated request(s).
  final List<Reference>? priorRequest;

  /// Coded Reason for request
  /// Reason or justification for the use of this device.
  final List<CodeableConcept>? reasonCode;

  /// Linked Reason for request
  /// Reason or justification for the use of this device.
  final List<Reference>? reasonReference;

  /// Request provenance
  /// Key events in the history of the request.
  /// This might not include provenances for all versions of the request - only those deemed "relevant" or important.
  /// This SHALL NOT include the Provenance associated with this current version of the resource.  (If that provenance is deemed to be a "relevant" change, it will need to be added as part of a later update.  Until then, it can be queried directly as the Provenance that points to this version using _revinclude
  /// All Provenances should have some historical version of this Request as their subject.
  final List<Reference>? relevantHistory;

  /// Who/what is requesting diagnostics
  /// The individual who initiated the request and has responsibility for its activation.
  final Reference? requester;

  /// The status of the request.
  /// This element is labeled as a modifier because the status contains the codes cancelled and entered-in-error that mark the request as not currently valid.
  final String?
      status; // Possible values: 'draft', 'active', 'on-hold', 'revoked', 'completed', 'entered-in-error', 'unknown'
  /// Focus of request
  /// The patient who will use the device.
  final Reference subject;

  /// Additional clinical information about the patient that may influence the request fulfilment.  For example, this may include where on the subject's body the device will be used (i.e. the target site).
  final List<Reference>? supportingInfo;
  DeviceRequest({
    this.authoredOn,
    this.basedOn,
    this.codeCodeableConcept,
    this.codeReference,
    super.contained,
    this.encounter,
    super.fhirExtension,
    this.groupIdentifier,
    super.id,
    this.identifier,
    super.implicitRules,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.insurance,
    required this.intent,
    super.language,
    super.meta,
    super.modifierExtension,
    this.note,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.parameter,
    this.performer,
    this.performerType,
    this.priority,
    this.priorRequest,
    this.reasonCode,
    this.reasonReference,
    this.relevantHistory,
    this.requester,
    this.status,
    required this.subject,
    this.supportingInfo,
    super.text,
  });

  @override
  factory DeviceRequest.fromJson(Map<String, dynamic> json) {
    return DeviceRequest(
      authoredOn: json['authoredOn'] as String?,
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      codeCodeableConcept: json['codeCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['codeCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      codeReference: json['codeReference'] != null
          ? Reference.fromJson(
              (json['codeReference'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              (json['encounter'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      groupIdentifier: json['groupIdentifier'] != null
          ? Identifier.fromJson(
              (json['groupIdentifier'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      instantiatesCanonical: (json['instantiatesCanonical'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      instantiatesUri: (json['instantiatesUri'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      intent: json['intent'] as String,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      occurrenceDateTime: json['occurrenceDateTime'] as String?,
      occurrencePeriod: json['occurrencePeriod'] != null
          ? Period.fromJson(
              (json['occurrencePeriod'] as Map).cast<String, dynamic>())
          : null,
      occurrenceTiming: json['occurrenceTiming'] != null
          ? Timing.fromJson(
              (json['occurrenceTiming'] as Map).cast<String, dynamic>())
          : null,
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map((e) => DeviceRequestParameter.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      performer: json['performer'] != null
          ? Reference.fromJson(
              (json['performer'] as Map).cast<String, dynamic>())
          : null,
      performerType: json['performerType'] != null
          ? CodeableConcept.fromJson(
              (json['performerType'] as Map).cast<String, dynamic>())
          : null,
      priority: json['priority'] as String?,
      priorRequest: (json['priorRequest'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      requester: json['requester'] != null
          ? Reference.fromJson(
              (json['requester'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String?,
      subject:
          Reference.fromJson((json['subject'] as Map).cast<String, dynamic>()),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'authoredOn': authoredOn,
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'codeCodeableConcept': codeCodeableConcept?.toJson(),
        'codeReference': codeReference?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'encounter': encounter?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'groupIdentifier': groupIdentifier?.toJson(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'instantiatesCanonical': instantiatesCanonical?.map((e) => e).toList(),
        'instantiatesUri': instantiatesUri?.map((e) => e).toList(),
        'insurance': insurance?.map((e) => e.toJson()).toList(),
        'intent': intent,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'occurrenceDateTime': occurrenceDateTime,
        'occurrencePeriod': occurrencePeriod?.toJson(),
        'occurrenceTiming': occurrenceTiming?.toJson(),
        'parameter': parameter?.map((e) => e.toJson()).toList(),
        'performer': performer?.toJson(),
        'performerType': performerType?.toJson(),
        'priority': priority,
        'priorRequest': priorRequest?.map((e) => e.toJson()).toList(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'relevantHistory': relevantHistory?.map((e) => e.toJson()).toList(),
        'requester': requester?.toJson(),
        'status': status,
        'subject': subject.toJson(),
        'supportingInfo': supportingInfo?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  DeviceRequest copyWith({
    String? authoredOn,
    List<Reference>? basedOn,
    CodeableConcept? codeCodeableConcept,
    Reference? codeReference,
    List<Resource>? contained,
    Reference? encounter,
    List<Extension>? fhirExtension,
    Identifier? groupIdentifier,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<String>? instantiatesCanonical,
    List<String>? instantiatesUri,
    List<Reference>? insurance,
    String? intent,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    String? occurrenceDateTime,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    List<DeviceRequestParameter>? parameter,
    Reference? performer,
    CodeableConcept? performerType,
    String? priority,
    List<Reference>? priorRequest,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? relevantHistory,
    Reference? requester,
    String? status,
    Reference? subject,
    List<Reference>? supportingInfo,
    Narrative? text,
  }) {
    return DeviceRequest(
      authoredOn: authoredOn ?? this.authoredOn,
      basedOn: basedOn ?? this.basedOn,
      codeCodeableConcept: codeCodeableConcept ?? this.codeCodeableConcept,
      codeReference: codeReference ?? this.codeReference,
      contained: contained ?? this.contained,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      insurance: insurance ?? this.insurance,
      intent: intent ?? this.intent,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      parameter: parameter ?? this.parameter,
      performer: performer ?? this.performer,
      performerType: performerType ?? this.performerType,
      priority: priority ?? this.priority,
      priorRequest: priorRequest ?? this.priorRequest,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      relevantHistory: relevantHistory ?? this.relevantHistory,
      requester: requester ?? this.requester,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      text: text ?? this.text,
    );
  }
}
