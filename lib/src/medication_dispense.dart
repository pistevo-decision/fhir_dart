part of '../fhir_dart.dart';

 /// Indicates that a medication product is to be or has been dispensed for a named person/patient.  This includes a description of the medication product (supply) provided and the instructions for administering the medication.  The medication dispense is the result of a pharmacy system responding to a medication order.
class MedicationDispense extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'MedicationDispense';
   /// Medication order that authorizes the dispense
   /// Indicates the medication order that is being dispensed against.
   /// Maps to basedOn in Event logical model.
  final List<Reference>? authorizingPrescription;
   /// Type of medication dispense
   /// Indicates the type of medication dispense (for example, where the medication is expected to be consumed or administered (i.e. inpatient or outpatient)).
   /// The category can be used to include where the medication is expected to be consumed or other types of dispenses.  Invariants can be used to bind to different value sets when profiling to bind.
  final CodeableConcept? category;
   /// Encounter / Episode associated with event
   /// The encounter or episode of care that establishes the context for this event.
  final Reference? context;
   /// Amount of medication expressed as a timing amount
   /// The amount of medication expressed as a timing amount.
  final Quantity? daysSupply;
   /// Where the medication was sent
   /// Identification of the facility/location where the medication was shipped to, as part of the dispense event.
  final Reference? destination;
   /// Clinical issue with action
   /// Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. drug-drug interaction, duplicate therapy, dosage alert etc.
   /// This element can include a detected issue that has been identified either by a decision support system or by a clinician and may include information on the steps that were taken to address the issue.
  final List<Reference>? detectedIssue;
   /// How the medication is to be used by the patient or administered by the caregiver
   /// Indicates how the medication is to be used by the patient.
   /// When the dose or rate is intended to change over the entire administration period (e.g. Tapering dose prescriptions), multiple instances of dosage instructions will need to be supplied to convey the different doses/rates.
   /// The pharmacist reviews the medication order prior to dispense and updates the dosageInstruction based on the actual product being dispensed.
  final List<Dosage>? dosageInstruction;
   /// A list of relevant lifecycle events
   /// A summary of the events of interest that have occurred, such as when the dispense was verified.
   /// This might not include provenances for all versions of the request – only those deemed “relevant” or important. This SHALL NOT include the Provenance associated with this current version of the resource. (If that provenance is deemed to be a “relevant” change, it will need to be added as part of a later update. Until then, it can be queried directly as the Provenance that points to this version using _revinclude All Provenances should have some historical version of this Request as their subject.).
  final List<Reference>? eventHistory;
   /// External identifier
   /// Identifiers associated with this Medication Dispense that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate. They are business identifiers assigned to this resource by the performer or other systems and remain constant as the resource is updated and propagates from server to server.
   /// This is a business identifier, not a resource identifier.
  final List<Identifier>? identifier;
   /// Where the dispense occurred
   /// The principal physical location where the dispense was performed.
  final Reference? location;
   /// What medication was supplied
   /// Identifies the medication being administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code that identifies the medication from a known list of medications.
   /// If only a code is specified, then it needs to be a code for a specific product. If more information is required, then the use of the medication resource is recommended.  For example, if you require form or lot number, then you must reference the Medication resource.
  final CodeableConcept? medicationCodeableConcept;
   /// What medication was supplied
   /// Identifies the medication being administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code that identifies the medication from a known list of medications.
   /// If only a code is specified, then it needs to be a code for a specific product. If more information is required, then the use of the medication resource is recommended.  For example, if you require form or lot number, then you must reference the Medication resource.
  final Reference? medicationReference;
   /// Information about the dispense
   /// Extra information about the dispense that could not be conveyed in the other attributes.
  final List<Annotation>? note;
   /// Event that dispense is part of
   /// The procedure that trigger the dispense.
  final List<Reference>? partOf;
   /// Who performed event
   /// Indicates who or what performed the event.
  final List<MedicationDispensePerformer>? performer;
   /// Amount dispensed
   /// The amount of medication that has been dispensed. Includes unit of measure.
  final Quantity? quantity;
   /// Who collected the medication
   /// Identifies the person who picked up the medication.  This will usually be a patient or their caregiver, but some cases exist where it can be a healthcare professional.
  final List<Reference>? receiver;
   /// A code specifying the state of the set of dispense events.
   /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String status; // Possible values: 'preparation', 'in-progress', 'cancelled', 'on-hold', 'completed', 'entered-in-error', 'stopped', 'declined', 'unknown'
   /// Why a dispense was not performed
   /// Indicates the reason why a dispense was not performed.
  final CodeableConcept? statusReasonCodeableConcept;
   /// Why a dispense was not performed
   /// Indicates the reason why a dispense was not performed.
  final Reference? statusReasonReference;
   /// Who the dispense is for
   /// A link to a resource representing the person or the group to whom the medication will be given.
   /// SubstanceAdministration->subject->Patient.
  final Reference? subject;
   /// Whether a substitution was performed on the dispense
   /// Indicates whether or not substitution was made as part of the dispense.  In some cases, substitution will be expected but does not happen, in other cases substitution is not expected but does happen.  This block explains what substitution did or did not happen and why.  If nothing is specified, substitution was not done.
  final MedicationDispenseSubstitution? substitution;
   /// Information that supports the dispensing of the medication
   /// Additional information that supports the medication being dispensed.
  final List<Reference>? supportingInformation;
   /// Trial fill, partial fill, emergency fill, etc.
   /// Indicates the type of dispensing event that is performed. For example, Trial Fill, Completion of Trial, Partial Fill, Emergency Fill, Samples, etc.
  final CodeableConcept? type;
   /// When product was given out
   /// The time the dispensed product was provided to the patient or their representative.
  final String? whenHandedOver;
   /// When product was packaged and reviewed
   /// The time when the dispensed product was packaged and reviewed.
  final String? whenPrepared;
  MedicationDispense({
    this.authorizingPrescription,
    this.category,
    super.contained,
    this.context,
    this.daysSupply,
    this.destination,
    this.detectedIssue,
    this.dosageInstruction,
    this.eventHistory,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.location,
    this.medicationCodeableConcept,
    this.medicationReference,
    super.meta,
    super.modifierExtension,
    this.note,
    this.partOf,
    this.performer,
    this.quantity,
    this.receiver,
    required this.status,
    this.statusReasonCodeableConcept,
    this.statusReasonReference,
    this.subject,
    this.substitution,
    this.supportingInformation,
    super.text,
    this.type,
    this.whenHandedOver,
    this.whenPrepared,
  });
  
  @override
  factory MedicationDispense.fromJson(Map<String, dynamic> json) {
    return MedicationDispense(
      authorizingPrescription: (json['authorizingPrescription'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      category: json['category'] != null ? CodeableConcept.fromJson(json['category'] as Map<String, dynamic>) : null,
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      context: json['context'] != null ? Reference.fromJson(json['context'] as Map<String, dynamic>) : null,
      daysSupply: json['daysSupply'] != null ? Quantity.fromJson(json['daysSupply'] as Map<String, dynamic>) : null,
      destination: json['destination'] != null ? Reference.fromJson(json['destination'] as Map<String, dynamic>) : null,
      detectedIssue: (json['detectedIssue'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      dosageInstruction: (json['dosageInstruction'] as List<dynamic>?)?.map((e) => Dosage.fromJson(e as Map<String, dynamic>)).toList(),
      eventHistory: (json['eventHistory'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      location: json['location'] != null ? Reference.fromJson(json['location'] as Map<String, dynamic>) : null,
      medicationCodeableConcept: json['medicationCodeableConcept'] != null ? CodeableConcept.fromJson(json['medicationCodeableConcept'] as Map<String, dynamic>) : null,
      medicationReference: json['medicationReference'] != null ? Reference.fromJson(json['medicationReference'] as Map<String, dynamic>) : null,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      note: (json['note'] as List<dynamic>?)?.map((e) => Annotation.fromJson(e as Map<String, dynamic>)).toList(),
      partOf: (json['partOf'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      performer: (json['performer'] as List<dynamic>?)?.map((e) => MedicationDispensePerformer.fromJson(e as Map<String, dynamic>)).toList(),
      quantity: json['quantity'] != null ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>) : null,
      receiver: (json['receiver'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      status: json['status'] as String,
      statusReasonCodeableConcept: json['statusReasonCodeableConcept'] != null ? CodeableConcept.fromJson(json['statusReasonCodeableConcept'] as Map<String, dynamic>) : null,
      statusReasonReference: json['statusReasonReference'] != null ? Reference.fromJson(json['statusReasonReference'] as Map<String, dynamic>) : null,
      subject: json['subject'] != null ? Reference.fromJson(json['subject'] as Map<String, dynamic>) : null,
      substitution: json['substitution'] != null ? MedicationDispenseSubstitution.fromJson(json['substitution'] as Map<String, dynamic>) : null,
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
      type: json['type'] != null ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>) : null,
      whenHandedOver: json['whenHandedOver'] as String?,
      whenPrepared: json['whenPrepared'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'authorizingPrescription': authorizingPrescription?.map((e) => e.toJson()).toList(),
      'category': category?.toJson(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'context': context?.toJson(),
      'daysSupply': daysSupply?.toJson(),
      'destination': destination?.toJson(),
      'detectedIssue': detectedIssue?.map((e) => e.toJson()).toList(),
      'dosageInstruction': dosageInstruction?.map((e) => e.toJson()).toList(),
      'eventHistory': eventHistory?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'language': language,
      'location': location?.toJson(),
      'medicationCodeableConcept': medicationCodeableConcept?.toJson(),
      'medicationReference': medicationReference?.toJson(),
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'note': note?.map((e) => e.toJson()).toList(),
      'partOf': partOf?.map((e) => e.toJson()).toList(),
      'performer': performer?.map((e) => e.toJson()).toList(),
      'quantity': quantity?.toJson(),
      'receiver': receiver?.map((e) => e.toJson()).toList(),
      'status': status,
      'statusReasonCodeableConcept': statusReasonCodeableConcept?.toJson(),
      'statusReasonReference': statusReasonReference?.toJson(),
      'subject': subject?.toJson(),
      'substitution': substitution?.toJson(),
      'supportingInformation': supportingInformation?.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
      'type': type?.toJson(),
      'whenHandedOver': whenHandedOver,
      'whenPrepared': whenPrepared,
    };
  
  @override
  MedicationDispense copyWith({
    List<Reference>? authorizingPrescription,
    CodeableConcept? category,
    List<Resource>? contained,
    Reference? context,
    Quantity? daysSupply,
    Reference? destination,
    List<Reference>? detectedIssue,
    List<Dosage>? dosageInstruction,
    List<Reference>? eventHistory,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Reference? location,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    List<Reference>? partOf,
    List<MedicationDispensePerformer>? performer,
    Quantity? quantity,
    List<Reference>? receiver,
    String? status,
    CodeableConcept? statusReasonCodeableConcept,
    Reference? statusReasonReference,
    Reference? subject,
    MedicationDispenseSubstitution? substitution,
    List<Reference>? supportingInformation,
    Narrative? text,
    CodeableConcept? type,
    String? whenHandedOver,
    String? whenPrepared,
  }) {
    return MedicationDispense(
      authorizingPrescription: authorizingPrescription ?? this.authorizingPrescription,
      category: category ?? this.category,
      contained: contained ?? this.contained,
      context: context ?? this.context,
      daysSupply: daysSupply ?? this.daysSupply,
      destination: destination ?? this.destination,
      detectedIssue: detectedIssue ?? this.detectedIssue,
      dosageInstruction: dosageInstruction ?? this.dosageInstruction,
      eventHistory: eventHistory ?? this.eventHistory,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      location: location ?? this.location,
      medicationCodeableConcept: medicationCodeableConcept ?? this.medicationCodeableConcept,
      medicationReference: medicationReference ?? this.medicationReference,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      partOf: partOf ?? this.partOf,
      performer: performer ?? this.performer,
      quantity: quantity ?? this.quantity,
      receiver: receiver ?? this.receiver,
      status: status ?? this.status,
      statusReasonCodeableConcept: statusReasonCodeableConcept ?? this.statusReasonCodeableConcept,
      statusReasonReference: statusReasonReference ?? this.statusReasonReference,
      subject: subject ?? this.subject,
      substitution: substitution ?? this.substitution,
      supportingInformation: supportingInformation ?? this.supportingInformation,
      text: text ?? this.text,
      type: type ?? this.type,
      whenHandedOver: whenHandedOver ?? this.whenHandedOver,
      whenPrepared: whenPrepared ?? this.whenPrepared,
    );
  }
}
