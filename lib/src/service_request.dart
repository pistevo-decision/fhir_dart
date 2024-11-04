part of '../fhir_dart.dart';

 /// A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.
class ServiceRequest extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'ServiceRequest';
   /// Preconditions for service
   /// If a CodeableConcept is present, it indicates the pre-condition for performing the service.  For example "pain", "on flare-up", etc.
  final bool? asNeededBoolean;
   /// Preconditions for service
   /// If a CodeableConcept is present, it indicates the pre-condition for performing the service.  For example "pain", "on flare-up", etc.
  final CodeableConcept? asNeededCodeableConcept;
   /// Date request signed
   /// When the request transitioned to being actionable.
  final String? authoredOn;
   /// What request fulfills
   /// Plan/proposal/order fulfilled by this request.
  final List<Reference>? basedOn;
   /// Location on Body
   /// Anatomic location where the procedure should be performed. This is the target site.
   /// Only used if not implicit in the code found in ServiceRequest.code.  If the use case requires BodySite to be handled as a separate resource instead of an inline coded element (e.g. to identify and track separately)  then use the standard extension [procedure-targetBodyStructure](extension-procedure-targetbodystructure.html).
  final List<CodeableConcept>? bodySite;
   /// Classification of service
   /// A code that classifies the service for searching, sorting and display purposes (e.g. "Surgical Procedure").
   /// There may be multiple axis of categorization depending on the context or use case for retrieving or displaying the resource.  The level of granularity is defined by the category concepts in the value set.
  final List<CodeableConcept>? category;
   /// What is being requested/ordered
   /// A code that identifies a particular service (i.e., procedure, diagnostic investigation, or panel of investigations) that have been requested.
   /// Many laboratory and radiology procedure codes embed the specimen/organ system in the test order name, for example,  serum or serum/plasma glucose, or a chest x-ray. The specimen might not be recorded separately from the test code.
  final CodeableConcept? code;
   /// True if service/procedure should not be performed
   /// Set this to true if the record is saying that the service/procedure should NOT be performed.
   /// In general, only the code and timeframe will be present, though occasional additional qualifiers such as body site or even performer could be included to narrow the scope of the prohibition.  If the ServiceRequest.code and ServiceRequest.doNotPerform both contain negation, that will reinforce prohibition and should not have a double negative interpretation.
  final bool? doNotPerform;
   /// Encounter in which the request was created
   /// An encounter that provides additional information about the healthcare context in which this request is made.
  final Reference? encounter;
   /// Identifiers assigned to this order instance by the orderer and/or the receiver and/or order fulfiller.
   /// The identifier.type element is used to distinguish between the identifiers assigned by the orderer (known as the 'Placer' in HL7 v2) and the producer of the observations in response to the order (known as the 'Filler' in HL7 v2).  For further discussion and examples see the resource notes section below.
  final List<Identifier>? identifier;
   /// Instantiates FHIR protocol or definition
   /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this ServiceRequest.
   /// Note: This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number.
  final List<String>? instantiatesCanonical;
   /// Instantiates external protocol or definition
   /// The URL pointing to an externally maintained protocol, guideline, orderset or other definition that is adhered to in whole or in part by this ServiceRequest.
   /// This might be an HTML page, PDF, etc. or could just be a non-resolvable URI identifier.
  final List<String>? instantiatesUri;
   /// Associated insurance coverage
   /// Insurance plans, coverage extensions, pre-authorizations and/or pre-determinations that may be needed for delivering the requested service.
  final List<Reference>? insurance;
   /// Whether the request is a proposal, plan, an original order or a reflex order.
   /// This element is labeled as a modifier because the intent alters when and how the resource is actually applicable.
  final String intent; // Possible values: 'proposal', 'plan', 'directive', 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order', 'option'
   /// Requested location
   /// The preferred location(s) where the procedure should actually happen in coded or free text form. E.g. at home or nursing day care center.
  final List<CodeableConcept>? locationCode;
   /// Requested location
   /// A reference to the the preferred location(s) where the procedure should actually happen. E.g. at home or nursing day care center.
  final List<Reference>? locationReference;
   /// Comments
   /// Any other notes and comments made about the service request. For example, internal billing notes.
  final List<Annotation>? note;
   /// When service should occur
   /// The date/time at which the requested service should occur.
  final String? occurrenceDateTime;
   /// When service should occur
   /// The date/time at which the requested service should occur.
  final Period? occurrencePeriod;
   /// When service should occur
   /// The date/time at which the requested service should occur.
  final Timing? occurrenceTiming;
   /// Additional order information
   /// Additional details and instructions about the how the services are to be delivered.   For example, and order for a urinary catheter may have an order detail for an external or indwelling catheter, or an order for a bandage may require additional instructions specifying how the bandage should be applied.
   /// For information from the medical record intended to support the delivery of the requested services, use the `supportingInformation` element.
  final List<CodeableConcept>? orderDetail;
   /// Patient or consumer-oriented instructions
   /// Instructions in terms that are understood by the patient or consumer.
  final String? patientInstruction;
   /// Requested performer
   /// The desired performer for doing the requested service.  For example, the surgeon, dermatopathologist, endoscopist, etc.
   /// If multiple performers are present, it is interpreted as a list of *alternative* performers without any preference regardless of order.  If order of preference is needed use the [request-performerOrder extension](extension-request-performerorder.html).  Use CareTeam to represent a group of performers (for example, Practitioner A *and* Practitioner B).
  final List<Reference>? performer;
   /// Performer role
   /// Desired type of performer for doing the requested service.
   /// This is a  role, not  a participation type.  In other words, does not describe the task but describes the capacity.  For example, “compounding pharmacy”, “psychiatrist” or “internal referral”.
  final CodeableConcept? performerType;
   /// Indicates how quickly the ServiceRequest should be addressed with respect to other requests.
  final String? priority; // Possible values: 'routine', 'urgent', 'asap', 'stat'
   /// Service amount
   /// An amount of service being requested which can be a quantity ( for example $1,500 home modification), a ratio ( for example, 20 half day visits per month), or a range (2.0 to 1.8 Gy per fraction).
  final Quantity? quantityQuantity;
   /// Service amount
   /// An amount of service being requested which can be a quantity ( for example $1,500 home modification), a ratio ( for example, 20 half day visits per month), or a range (2.0 to 1.8 Gy per fraction).
  final Range? quantityRange;
   /// Service amount
   /// An amount of service being requested which can be a quantity ( for example $1,500 home modification), a ratio ( for example, 20 half day visits per month), or a range (2.0 to 1.8 Gy per fraction).
  final Ratio? quantityRatio;
   /// Explanation/Justification for procedure or service
   /// An explanation or justification for why this service is being requested in coded or textual form.   This is often for billing purposes.  May relate to the resources referred to in `supportingInfo`.
   /// This element represents why the referral is being made and may be used to decide how the service will be performed, or even if it will be performed at all.   Use `CodeableConcept.text` element if the data is free (uncoded) text as shown in the [CT Scan example](servicerequest-example-di.html).
  final List<CodeableConcept>? reasonCode;
   /// Explanation/Justification for service or service
   /// Indicates another resource that provides a justification for why this service is being requested.   May relate to the resources referred to in `supportingInfo`.
   /// This element represents why the referral is being made and may be used to decide how the service will be performed, or even if it will be performed at all.    To be as specific as possible,  a reference to  *Observation* or *Condition* should be used if available.  Otherwise when referencing  *DiagnosticReport*  it should contain a finding  in `DiagnosticReport.conclusion` and/or `DiagnosticReport.conclusionCode`.   When using a reference to *DocumentReference*, the target document should contain clear findings language providing the relevant reason for this service request.  Use  the CodeableConcept text element in `ServiceRequest.reasonCode` if the data is free (uncoded) text as shown in the [CT Scan example](servicerequest-example-di.html).
  final List<Reference>? reasonReference;
   /// Request provenance
   /// Key events in the history of the request.
   /// This might not include provenances for all versions of the request – only those deemed “relevant” or important.
   /// This SHALL NOT include the Provenance associated with this current version of the resource.  (If that provenance is deemed to be a “relevant” change, it will need to be added as part of a later update.  Until then, it can be queried directly as the Provenance that points to this version using _revinclude
   /// All Provenances should have some historical version of this Request as their subject.
  final List<Reference>? relevantHistory;
   /// What request replaces
   /// The request takes the place of the referenced completed or terminated request(s).
  final List<Reference>? replaces;
   /// Who/what is requesting service
   /// The individual who initiated the request and has responsibility for its activation.
   /// This not the dispatcher, but rather who is the authorizer.  This element is not intended to handle delegation which would generally be managed through the Provenance resource.
  final Reference? requester;
   /// Composite Request ID
   /// A shared identifier common to all service requests that were authorized more or less simultaneously by a single author, representing the composite or group identifier.
   /// Requests are linked either by a "basedOn" relationship (i.e. one request is fulfilling another) or by having a common requisition. Requests that are part of the same requisition are generally treated independently from the perspective of changing their state or maintaining them after initial creation.
  final Identifier? requisition;
   /// Procedure Samples
   /// One or more specimens that the laboratory procedure will use.
   /// Many diagnostic procedures need a specimen, but the request itself is not actually about the specimen. This element is for when the diagnostic is requested on already existing specimens and the request points to the specimen it applies to.    Conversely, if the request is entered first with an unknown specimen, then the [Specimen](specimen.html) resource points to the ServiceRequest.
  final List<Reference>? specimen;
   /// The status of the order.
   /// The status is generally fully in the control of the requester - they determine whether the order is draft or active and, after it has been activated, competed, cancelled or suspended. States relating to the activities of the performer are reflected on either the corresponding event (see [Event Pattern](event.html) for general discussion) or using the [Task](task.html) resource.
  final String status; // Possible values: 'draft', 'active', 'on-hold', 'revoked', 'completed', 'entered-in-error', 'unknown'
   /// Individual or Entity the service is ordered for
   /// On whom or what the service is to be performed. This is usually a human patient, but can also be requested on animals, groups of humans or animals, devices such as dialysis machines, or even locations (typically for environmental scans).
  final Reference subject;
   /// Additional clinical information about the patient or specimen that may influence the services or their interpretations.     This information includes diagnosis, clinical findings and other observations.  In laboratory ordering these are typically referred to as "ask at order entry questions (AOEs)".  This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order. For example,  reporting the amount of inspired oxygen for blood gas measurements.
   /// To represent information about how the services are to be delivered use the `instructions` element.
  final List<Reference>? supportingInfo;
  ServiceRequest({
    this.asNeededBoolean,
    this.asNeededCodeableConcept,
    this.authoredOn,
    this.basedOn,
    this.bodySite,
    this.category,
    this.code,
    super.contained,
    this.doNotPerform,
    this.encounter,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.insurance,
    required this.intent,
    super.language,
    this.locationCode,
    this.locationReference,
    super.meta,
    super.modifierExtension,
    this.note,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.orderDetail,
    this.patientInstruction,
    this.performer,
    this.performerType,
    this.priority,
    this.quantityQuantity,
    this.quantityRange,
    this.quantityRatio,
    this.reasonCode,
    this.reasonReference,
    this.relevantHistory,
    this.replaces,
    this.requester,
    this.requisition,
    this.specimen,
    required this.status,
    required this.subject,
    this.supportingInfo,
    super.text,
  });
  
  @override
  factory ServiceRequest.fromJson(Map<String, dynamic> json) {
    return ServiceRequest(
      asNeededBoolean: json['asNeededBoolean'] as bool?,
      asNeededCodeableConcept: json['asNeededCodeableConcept'] != null ? CodeableConcept.fromJson(json['asNeededCodeableConcept'] as Map<String, dynamic>) : null,
      authoredOn: json['authoredOn'] as String?,
      basedOn: (json['basedOn'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      bodySite: (json['bodySite'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      category: (json['category'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      code: json['code'] != null ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>) : null,
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      doNotPerform: json['doNotPerform'] as bool?,
      encounter: json['encounter'] != null ? Reference.fromJson(json['encounter'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      instantiatesCanonical: (json['instantiatesCanonical'] as List<dynamic>?)?.map((e) => e as String).toList(),
      instantiatesUri: (json['instantiatesUri'] as List<dynamic>?)?.map((e) => e as String).toList(),
      insurance: (json['insurance'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      intent: json['intent'] as String,
      language: json['language'] as String?,
      locationCode: (json['locationCode'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      locationReference: (json['locationReference'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      note: (json['note'] as List<dynamic>?)?.map((e) => Annotation.fromJson(e as Map<String, dynamic>)).toList(),
      occurrenceDateTime: json['occurrenceDateTime'] as String?,
      occurrencePeriod: json['occurrencePeriod'] != null ? Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>) : null,
      occurrenceTiming: json['occurrenceTiming'] != null ? Timing.fromJson(json['occurrenceTiming'] as Map<String, dynamic>) : null,
      orderDetail: (json['orderDetail'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      patientInstruction: json['patientInstruction'] as String?,
      performer: (json['performer'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      performerType: json['performerType'] != null ? CodeableConcept.fromJson(json['performerType'] as Map<String, dynamic>) : null,
      priority: json['priority'] as String?,
      quantityQuantity: json['quantityQuantity'] != null ? Quantity.fromJson(json['quantityQuantity'] as Map<String, dynamic>) : null,
      quantityRange: json['quantityRange'] != null ? Range.fromJson(json['quantityRange'] as Map<String, dynamic>) : null,
      quantityRatio: json['quantityRatio'] != null ? Ratio.fromJson(json['quantityRatio'] as Map<String, dynamic>) : null,
      reasonCode: (json['reasonCode'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      replaces: (json['replaces'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      requester: json['requester'] != null ? Reference.fromJson(json['requester'] as Map<String, dynamic>) : null,
      requisition: json['requisition'] != null ? Identifier.fromJson(json['requisition'] as Map<String, dynamic>) : null,
      specimen: (json['specimen'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      status: json['status'] as String,
      subject: Reference.fromJson(json['subject'] as Map<String, dynamic>),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'asNeededBoolean': asNeededBoolean,
      'asNeededCodeableConcept': asNeededCodeableConcept?.toJson(),
      'authoredOn': authoredOn,
      'basedOn': basedOn?.map((e) => e.toJson()).toList(),
      'bodySite': bodySite?.map((e) => e.toJson()).toList(),
      'category': category?.map((e) => e.toJson()).toList(),
      'code': code?.toJson(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'doNotPerform': doNotPerform,
      'encounter': encounter?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'instantiatesCanonical': instantiatesCanonical?.map((e) => e).toList(),
      'instantiatesUri': instantiatesUri?.map((e) => e).toList(),
      'insurance': insurance?.map((e) => e.toJson()).toList(),
      'intent': intent,
      'language': language,
      'locationCode': locationCode?.map((e) => e.toJson()).toList(),
      'locationReference': locationReference?.map((e) => e.toJson()).toList(),
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'note': note?.map((e) => e.toJson()).toList(),
      'occurrenceDateTime': occurrenceDateTime,
      'occurrencePeriod': occurrencePeriod?.toJson(),
      'occurrenceTiming': occurrenceTiming?.toJson(),
      'orderDetail': orderDetail?.map((e) => e.toJson()).toList(),
      'patientInstruction': patientInstruction,
      'performer': performer?.map((e) => e.toJson()).toList(),
      'performerType': performerType?.toJson(),
      'priority': priority,
      'quantityQuantity': quantityQuantity?.toJson(),
      'quantityRange': quantityRange?.toJson(),
      'quantityRatio': quantityRatio?.toJson(),
      'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
      'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
      'relevantHistory': relevantHistory?.map((e) => e.toJson()).toList(),
      'replaces': replaces?.map((e) => e.toJson()).toList(),
      'requester': requester?.toJson(),
      'requisition': requisition?.toJson(),
      'specimen': specimen?.map((e) => e.toJson()).toList(),
      'status': status,
      'subject': subject.toJson(),
      'supportingInfo': supportingInfo?.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
    };
  
  @override
  ServiceRequest copyWith({
    bool? asNeededBoolean,
    CodeableConcept? asNeededCodeableConcept,
    String? authoredOn,
    List<Reference>? basedOn,
    List<CodeableConcept>? bodySite,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    List<Resource>? contained,
    bool? doNotPerform,
    Reference? encounter,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<String>? instantiatesCanonical,
    List<String>? instantiatesUri,
    List<Reference>? insurance,
    String? intent,
    String? language,
    List<CodeableConcept>? locationCode,
    List<Reference>? locationReference,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    String? occurrenceDateTime,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    List<CodeableConcept>? orderDetail,
    String? patientInstruction,
    List<Reference>? performer,
    CodeableConcept? performerType,
    String? priority,
    Quantity? quantityQuantity,
    Range? quantityRange,
    Ratio? quantityRatio,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? relevantHistory,
    List<Reference>? replaces,
    Reference? requester,
    Identifier? requisition,
    List<Reference>? specimen,
    String? status,
    Reference? subject,
    List<Reference>? supportingInfo,
    Narrative? text,
  }) {
    return ServiceRequest(
      asNeededBoolean: asNeededBoolean ?? this.asNeededBoolean,
      asNeededCodeableConcept: asNeededCodeableConcept ?? this.asNeededCodeableConcept,
      authoredOn: authoredOn ?? this.authoredOn,
      basedOn: basedOn ?? this.basedOn,
      bodySite: bodySite ?? this.bodySite,
      category: category ?? this.category,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      instantiatesCanonical: instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      insurance: insurance ?? this.insurance,
      intent: intent ?? this.intent,
      language: language ?? this.language,
      locationCode: locationCode ?? this.locationCode,
      locationReference: locationReference ?? this.locationReference,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      orderDetail: orderDetail ?? this.orderDetail,
      patientInstruction: patientInstruction ?? this.patientInstruction,
      performer: performer ?? this.performer,
      performerType: performerType ?? this.performerType,
      priority: priority ?? this.priority,
      quantityQuantity: quantityQuantity ?? this.quantityQuantity,
      quantityRange: quantityRange ?? this.quantityRange,
      quantityRatio: quantityRatio ?? this.quantityRatio,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      relevantHistory: relevantHistory ?? this.relevantHistory,
      replaces: replaces ?? this.replaces,
      requester: requester ?? this.requester,
      requisition: requisition ?? this.requisition,
      specimen: specimen ?? this.specimen,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      text: text ?? this.text,
    );
  }
}
