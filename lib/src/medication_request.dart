part of '../fhir_dart.dart';

/// An order or request for both supply of the medication and the instructions for administration of the medication to a patient. The resource is called "MedicationRequest" rather than "MedicationPrescription" or "MedicationOrder" to generalize the use across inpatient and outpatient settings, including care plans, etc., and to harmonize with workflow patterns.
class MedicationRequest extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'MedicationRequest';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// When request was initially authored
  /// The date (and perhaps time) when the prescription was initially written or authored on.
  final String? authoredOn;

  /// What request fulfills
  /// A plan or request that is fulfilled in whole or in part by this medication request.
  final List<Reference>? basedOn;

  /// Type of medication usage
  /// Indicates the type of medication request (for example, where the medication is expected to be consumed or administered (i.e. inpatient or outpatient)).
  /// The category can be used to include where the medication is expected to be consumed or other types of requests.
  final List<CodeableConcept>? category;

  /// Overall pattern of medication administration
  /// The description of the overall patte3rn of the administration of the medication to the patient.
  /// This attribute should not be confused with the protocol of the medication.
  final CodeableConcept? courseOfTherapyType;

  /// Clinical Issue with action
  /// Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction, duplicate therapy, dosage alert etc.
  /// This element can include a detected issue that has been identified either by a decision support system or by a clinician and may include information on the steps that were taken to address the issue.
  final List<Reference>? detectedIssue;

  /// Medication supply authorization
  /// Indicates the specific details for the dispense or medication supply part of a medication request (also known as a Medication Prescription or Medication Order).  Note that this information is not always sent with the order.  There may be in some settings (e.g. hospitals) institutional or system support for completing the dispense details in the pharmacy department.
  final MedicationRequestDispenseRequest? dispenseRequest;

  /// True if request is prohibiting action
  /// If true indicates that the provider is asking for the medication request not to occur.
  /// If do not perform is not specified, the request is a positive request e.g. "do perform".
  final bool? doNotPerform;

  /// How the medication should be taken
  /// Indicates how the medication is to be used by the patient.
  /// There are examples where a medication request may include the option of an oral dose or an Intravenous or Intramuscular dose.  For example, "Ondansetron 8mg orally or IV twice a day as needed for nausea" or "Compazine® (prochlorperazine) 5-10mg PO or 25mg PR bid prn nausea or vomiting".  In these cases, two medication requests would be created that could be grouped together.  The decision on which dose and route of administration to use is based on the patient's condition at the time the dose is needed.
  final List<Dosage>? dosageInstruction;

  /// Encounter created as part of encounter/admission/stay
  /// The Encounter during which this [x] was created or to which the creation of this record is tightly associated.
  /// This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter."    If there is a need to link to episodes of care they will be handled with an extension.
  final Reference? encounter;

  /// A list of events of interest in the lifecycle
  /// Links to Provenance records for past versions of this resource or fulfilling request or event resources that identify key state transitions or updates that are likely to be relevant to a user looking at the current version of the resource.
  /// This might not include provenances for all versions of the request – only those deemed “relevant” or important. This SHALL NOT include the provenance associated with this current version of the resource. (If that provenance is deemed to be a “relevant” change, it will need to be added as part of a later update. Until then, it can be queried directly as the provenance that points to this version using _revinclude All Provenances should have some historical version of this Request as their subject.).
  final List<Reference>? eventHistory;

  /// Composite request this is part of
  /// A shared identifier common to all requests that were authorized more or less simultaneously by a single author, representing the identifier of the requisition or prescription.
  final Identifier? groupIdentifier;

  /// External ids for this request
  /// Identifiers associated with this medication request that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate. They are business identifiers assigned to this resource by the performer or other systems and remain constant as the resource is updated and propagates from server to server.
  /// This is a business identifier, not a resource identifier.
  final List<Identifier>? identifier;

  /// Instantiates FHIR protocol or definition
  /// The URL pointing to a protocol, guideline, orderset, or other definition that is adhered to in whole or in part by this MedicationRequest.
  final List<String>? instantiatesCanonical;

  /// Instantiates external protocol or definition
  /// The URL pointing to an externally maintained protocol, guideline, orderset or other definition that is adhered to in whole or in part by this MedicationRequest.
  final List<String>? instantiatesUri;

  /// Associated insurance coverage
  /// Insurance plans, coverage extensions, pre-authorizations and/or pre-determinations that may be required for delivering the requested service.
  final List<Reference>? insurance;

  /// Whether the request is a proposal, plan, or an original order.
  /// It is expected that the type of requester will be restricted for different stages of a MedicationRequest.  For example, Proposals can be created by a patient, relatedPerson, Practitioner or Device.  Plans can be created by Practitioners, Patients, RelatedPersons and Devices.  Original orders can be created by a Practitioner only.
  /// An instance-order is an instantiation of a request or order and may be used to populate Medication Administration Record.
  /// This element is labeled as a modifier because the intent alters when and how the resource is actually applicable.
  final String
      intent; // Possible values: 'proposal', 'plan', 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order', 'option'
  /// Medication to be taken
  /// Identifies the medication being requested. This is a link to a resource that represents the medication which may be the details of the medication or simply an attribute carrying a code that identifies the medication from a known list of medications.
  /// If only a code is specified, then it needs to be a code for a specific product. If more information is required, then the use of the Medication resource is recommended.  For example, if you require form or lot number or if the medication is compounded or extemporaneously prepared, then you must reference the Medication resource.
  final CodeableConcept? medicationCodeableConcept;

  /// Medication to be taken
  /// Identifies the medication being requested. This is a link to a resource that represents the medication which may be the details of the medication or simply an attribute carrying a code that identifies the medication from a known list of medications.
  /// If only a code is specified, then it needs to be a code for a specific product. If more information is required, then the use of the Medication resource is recommended.  For example, if you require form or lot number or if the medication is compounded or extemporaneously prepared, then you must reference the Medication resource.
  final Reference? medicationReference;

  /// Information about the prescription
  /// Extra information about the prescription that could not be conveyed by the other attributes.
  final List<Annotation>? note;

  /// Intended performer of administration
  /// The specified desired performer of the medication treatment (e.g. the performer of the medication administration).
  final Reference? performer;

  /// Desired kind of performer of the medication administration
  /// Indicates the type of performer of the administration of the medication.
  /// If specified without indicating a performer, this indicates that the performer must be of the specified type. If specified with a performer then it indicates the requirements of the performer if the designated performer is not available.
  final CodeableConcept? performerType;

  /// Indicates how quickly the Medication Request should be addressed with respect to other requests.
  final String?
      priority; // Possible values: 'routine', 'urgent', 'asap', 'stat'
  /// An order/prescription that is being replaced
  /// A link to a resource representing an earlier order related order or prescription.
  final Reference? priorPrescription;

  /// Reason or indication for ordering or not ordering the medication
  /// The reason or the indication for ordering or not ordering the medication.
  /// This could be a diagnosis code. If a full condition record exists or additional detail is needed, use reasonReference.
  final List<CodeableConcept>? reasonCode;

  /// Condition or observation that supports why the prescription is being written
  /// Condition or observation that supports why the medication was ordered.
  /// This is a reference to a condition or observation that is the reason for the medication order.  If only a code exists, use reasonCode.
  final List<Reference>? reasonReference;

  /// Person who entered the request
  /// The person who entered the order on behalf of another individual for example in the case of a verbal or a telephone order.
  final Reference? recorder;

  /// Reported rather than primary record
  /// Indicates if this record was captured as a secondary 'reported' record rather than as an original primary source-of-truth record.  It may also indicate the source of the report.
  final bool? reportedBoolean;

  /// Reported rather than primary record
  /// Indicates if this record was captured as a secondary 'reported' record rather than as an original primary source-of-truth record.  It may also indicate the source of the report.
  final Reference? reportedReference;

  /// Who/What requested the Request
  /// The individual, organization, or device that initiated the request and has responsibility for its activation.
  final Reference? requester;

  /// A code specifying the current state of the order.  Generally, this will be active or completed state.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'active', 'on-hold', 'cancelled', 'completed', 'entered-in-error', 'stopped', 'draft', 'unknown'
  /// Reason for current status
  /// Captures the reason for the current state of the MedicationRequest.
  /// This is generally only used for "exception" statuses such as "suspended" or "cancelled". The reason why the MedicationRequest was created at all is captured in reasonCode, not here.
  final CodeableConcept? statusReason;

  /// Who or group medication request is for
  /// A link to a resource representing the person or set of individuals to whom the medication will be given.
  /// The subject on a medication request is mandatory.  For the secondary use case where the actual subject is not provided, there still must be an anonymized subject specified.
  final Reference subject;

  /// Any restrictions on medication substitution
  /// Indicates whether or not substitution can or should be part of the dispense. In some cases, substitution must happen, in other cases substitution must not happen. This block explains the prescriber's intent. If nothing is specified substitution may be done.
  final MedicationRequestSubstitution? substitution;

  /// Information to support ordering of the medication
  /// Include additional information (for example, patient height and weight) that supports the ordering of the medication.
  final List<Reference>? supportingInformation;
  MedicationRequest({
    this.authoredOn,
    this.basedOn,
    this.category,
    super.contained,
    this.courseOfTherapyType,
    this.detectedIssue,
    this.dispenseRequest,
    this.doNotPerform,
    this.dosageInstruction,
    this.encounter,
    this.eventHistory,
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
    this.medicationCodeableConcept,
    this.medicationReference,
    super.meta,
    super.modifierExtension,
    this.note,
    this.performer,
    this.performerType,
    this.priority,
    this.priorPrescription,
    this.reasonCode,
    this.reasonReference,
    this.recorder,
    this.reportedBoolean,
    this.reportedReference,
    this.requester,
    required this.status,
    this.statusReason,
    required this.subject,
    this.substitution,
    this.supportingInformation,
    super.text,
  });

  @override
  factory MedicationRequest.fromJson(Map<String, dynamic> json) {
    return MedicationRequest(
      authoredOn: json['authoredOn'] as String?,
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      courseOfTherapyType: json['courseOfTherapyType'] != null
          ? CodeableConcept.fromJson(
              (json['courseOfTherapyType'] as Map).cast<String, dynamic>())
          : null,
      detectedIssue: (json['detectedIssue'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      dispenseRequest: json['dispenseRequest'] != null
          ? MedicationRequestDispenseRequest.fromJson(
              (json['dispenseRequest'] as Map).cast<String, dynamic>())
          : null,
      doNotPerform: json['doNotPerform'] as bool?,
      dosageInstruction: (json['dosageInstruction'] as List<dynamic>?)
          ?.map((e) => Dosage.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              (json['encounter'] as Map).cast<String, dynamic>())
          : null,
      eventHistory: (json['eventHistory'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
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
      medicationCodeableConcept: json['medicationCodeableConcept'] != null
          ? CodeableConcept.fromJson((json['medicationCodeableConcept'] as Map)
              .cast<String, dynamic>())
          : null,
      medicationReference: json['medicationReference'] != null
          ? Reference.fromJson(
              (json['medicationReference'] as Map).cast<String, dynamic>())
          : null,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
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
      priorPrescription: json['priorPrescription'] != null
          ? Reference.fromJson(
              (json['priorPrescription'] as Map).cast<String, dynamic>())
          : null,
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      recorder: json['recorder'] != null
          ? Reference.fromJson(
              (json['recorder'] as Map).cast<String, dynamic>())
          : null,
      reportedBoolean: json['reportedBoolean'] as bool?,
      reportedReference: json['reportedReference'] != null
          ? Reference.fromJson(
              (json['reportedReference'] as Map).cast<String, dynamic>())
          : null,
      requester: json['requester'] != null
          ? Reference.fromJson(
              (json['requester'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              (json['statusReason'] as Map).cast<String, dynamic>())
          : null,
      subject:
          Reference.fromJson((json['subject'] as Map).cast<String, dynamic>()),
      substitution: json['substitution'] != null
          ? MedicationRequestSubstitution.fromJson(
              (json['substitution'] as Map).cast<String, dynamic>())
          : null,
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
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
        'category': category?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'courseOfTherapyType': courseOfTherapyType?.toJson(),
        'detectedIssue': detectedIssue?.map((e) => e.toJson()).toList(),
        'dispenseRequest': dispenseRequest?.toJson(),
        'doNotPerform': doNotPerform,
        'dosageInstruction': dosageInstruction?.map((e) => e.toJson()).toList(),
        'encounter': encounter?.toJson(),
        'eventHistory': eventHistory?.map((e) => e.toJson()).toList(),
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
        'medicationCodeableConcept': medicationCodeableConcept?.toJson(),
        'medicationReference': medicationReference?.toJson(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'performer': performer?.toJson(),
        'performerType': performerType?.toJson(),
        'priority': priority,
        'priorPrescription': priorPrescription?.toJson(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'recorder': recorder?.toJson(),
        'reportedBoolean': reportedBoolean,
        'reportedReference': reportedReference?.toJson(),
        'requester': requester?.toJson(),
        'status': status,
        'statusReason': statusReason?.toJson(),
        'subject': subject.toJson(),
        'substitution': substitution?.toJson(),
        'supportingInformation':
            supportingInformation?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  MedicationRequest copyWith({
    String? authoredOn,
    List<Reference>? basedOn,
    List<CodeableConcept>? category,
    List<Resource>? contained,
    CodeableConcept? courseOfTherapyType,
    List<Reference>? detectedIssue,
    MedicationRequestDispenseRequest? dispenseRequest,
    bool? doNotPerform,
    List<Dosage>? dosageInstruction,
    Reference? encounter,
    List<Reference>? eventHistory,
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
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    Reference? performer,
    CodeableConcept? performerType,
    String? priority,
    Reference? priorPrescription,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    Reference? recorder,
    bool? reportedBoolean,
    Reference? reportedReference,
    Reference? requester,
    String? status,
    CodeableConcept? statusReason,
    Reference? subject,
    MedicationRequestSubstitution? substitution,
    List<Reference>? supportingInformation,
    Narrative? text,
  }) {
    return MedicationRequest(
      authoredOn: authoredOn ?? this.authoredOn,
      basedOn: basedOn ?? this.basedOn,
      category: category ?? this.category,
      contained: contained ?? this.contained,
      courseOfTherapyType: courseOfTherapyType ?? this.courseOfTherapyType,
      detectedIssue: detectedIssue ?? this.detectedIssue,
      dispenseRequest: dispenseRequest ?? this.dispenseRequest,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      dosageInstruction: dosageInstruction ?? this.dosageInstruction,
      encounter: encounter ?? this.encounter,
      eventHistory: eventHistory ?? this.eventHistory,
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
      medicationCodeableConcept:
          medicationCodeableConcept ?? this.medicationCodeableConcept,
      medicationReference: medicationReference ?? this.medicationReference,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      performer: performer ?? this.performer,
      performerType: performerType ?? this.performerType,
      priority: priority ?? this.priority,
      priorPrescription: priorPrescription ?? this.priorPrescription,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      recorder: recorder ?? this.recorder,
      reportedBoolean: reportedBoolean ?? this.reportedBoolean,
      reportedReference: reportedReference ?? this.reportedReference,
      requester: requester ?? this.requester,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      subject: subject ?? this.subject,
      substitution: substitution ?? this.substitution,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      text: text ?? this.text,
    );
  }
}
