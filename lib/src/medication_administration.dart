part of '../fhir_dart.dart';

/// Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple as swallowing a tablet or it may be a long running infusion.  Related resources tie this event to the authorizing prescription, and the specific encounter between patient and health care practitioner.
class MedicationAdministration extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'MedicationAdministration';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Type of medication usage
  /// Indicates where the medication is expected to be consumed or administered.
  final CodeableConcept? category;

  /// Encounter or Episode of Care administered as part of
  /// The visit, admission, or other contact between patient and health care provider during which the medication administration was performed.
  final Reference? context;

  /// Device used to administer
  /// The device used in administering the medication to the patient.  For example, a particular infusion pump.
  final List<Reference>? device;

  /// Details of how medication was taken
  /// Describes the medication dosage information details e.g. dose, rate, site, route, etc.
  final MedicationAdministrationDosage? dosage;

  /// Start and end time of administration
  /// A specific date/time or interval of time during which the administration took place (or did not take place, when the 'notGiven' attribute is true). For many administrations, such as swallowing a tablet the use of dateTime is more appropriate.
  final String? effectiveDateTime;

  /// Start and end time of administration
  /// A specific date/time or interval of time during which the administration took place (or did not take place, when the 'notGiven' attribute is true). For many administrations, such as swallowing a tablet the use of dateTime is more appropriate.
  final Period? effectivePeriod;

  /// A list of events of interest in the lifecycle
  /// A summary of the events of interest that have occurred, such as when the administration was verified.
  /// This might not include provenances for all versions of the request – only those deemed “relevant” or important. This SHALL NOT include the Provenance associated with this current version of the resource. (If that provenance is deemed to be a “relevant” change, it will need to be added as part of a later update. Until then, it can be queried directly as the Provenance that points to this version using _revinclude All Provenances should have some historical version of this Request as their subject.
  final List<Reference>? eventHistory;

  /// External identifier
  /// Identifiers associated with this Medication Administration that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate. They are business identifiers assigned to this resource by the performer or other systems and remain constant as the resource is updated and propagates from server to server.
  /// This is a business identifier, not a resource identifier.
  final List<Identifier>? identifier;

  /// Instantiates protocol or definition
  /// A protocol, guideline, orderset, or other definition that was adhered to in whole or in part by this event.
  final List<String>? instantiates;

  /// What was administered
  /// Identifies the medication that was administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code that identifies the medication from a known list of medications.
  /// If only a code is specified, then it needs to be a code for a specific product. If more information is required, then the use of the medication resource is recommended.  For example, if you require form or lot number, then you must reference the Medication resource.
  final CodeableConcept? medicationCodeableConcept;

  /// What was administered
  /// Identifies the medication that was administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code that identifies the medication from a known list of medications.
  /// If only a code is specified, then it needs to be a code for a specific product. If more information is required, then the use of the medication resource is recommended.  For example, if you require form or lot number, then you must reference the Medication resource.
  final Reference? medicationReference;

  /// Information about the administration
  /// Extra information about the medication administration that is not conveyed by the other attributes.
  final List<Annotation>? note;

  /// Part of referenced event
  /// A larger event of which this particular event is a component or step.
  final List<Reference>? partOf;

  /// Who performed the medication administration and what they did
  /// Indicates who or what performed the medication administration and how they were involved.
  final List<MedicationAdministrationPerformer>? performer;

  /// Reason administration performed
  /// A code indicating why the medication was given.
  final List<CodeableConcept>? reasonCode;

  /// Condition or observation that supports why the medication was administered.
  /// This is a reference to a condition that is the reason for the medication request.  If only a code exists, use reasonCode.
  final List<Reference>? reasonReference;

  /// Request administration performed against
  /// The original request, instruction or authority to perform the administration.
  /// This is a reference to the MedicationRequest  where the intent is either order or instance-order.  It should not reference MedicationRequests where the intent is any other value.
  final Reference? request;

  /// Will generally be set to show that the administration has been completed.  For some long running administrations such as infusions, it is possible for an administration to be started but not completed or it may be paused while some other process is under way.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'in-progress', 'not-done', 'on-hold', 'completed', 'entered-in-error', 'stopped', 'unknown'
  /// Reason administration not performed
  /// A code indicating why the administration was not performed.
  final List<CodeableConcept>? statusReason;

  /// Who received medication
  /// The person or animal or group receiving the medication.
  final Reference subject;

  /// Additional information to support administration
  /// Additional information (for example, patient height and weight) that supports the administration of the medication.
  final List<Reference>? supportingInformation;
  MedicationAdministration({
    this.category,
    super.contained,
    this.context,
    this.device,
    this.dosage,
    this.effectiveDateTime,
    this.effectivePeriod,
    this.eventHistory,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.instantiates,
    super.language,
    this.medicationCodeableConcept,
    this.medicationReference,
    super.meta,
    super.modifierExtension,
    this.note,
    this.partOf,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.request,
    required this.status,
    this.statusReason,
    required this.subject,
    this.supportingInformation,
    super.text,
  });

  @override
  factory MedicationAdministration.fromJson(Map<String, dynamic> json) {
    return MedicationAdministration(
      category: json['category'] != null
          ? CodeableConcept.fromJson(
              (json['category'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      context: json['context'] != null
          ? Reference.fromJson((json['context'] as Map).cast<String, dynamic>())
          : null,
      device: (json['device'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      dosage: json['dosage'] != null
          ? MedicationAdministrationDosage.fromJson(
              (json['dosage'] as Map).cast<String, dynamic>())
          : null,
      effectiveDateTime: json['effectiveDateTime'] as String?,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              (json['effectivePeriod'] as Map).cast<String, dynamic>())
          : null,
      eventHistory: (json['eventHistory'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      instantiates: (json['instantiates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
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
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => MedicationAdministrationPerformer.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      request: json['request'] != null
          ? Reference.fromJson((json['request'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      statusReason: (json['statusReason'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      subject:
          Reference.fromJson((json['subject'] as Map).cast<String, dynamic>()),
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
        'category': category?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'context': context?.toJson(),
        'device': device?.map((e) => e.toJson()).toList(),
        'dosage': dosage?.toJson(),
        'effectiveDateTime': effectiveDateTime,
        'effectivePeriod': effectivePeriod?.toJson(),
        'eventHistory': eventHistory?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'instantiates': instantiates?.map((e) => e).toList(),
        'language': language,
        'medicationCodeableConcept': medicationCodeableConcept?.toJson(),
        'medicationReference': medicationReference?.toJson(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'partOf': partOf?.map((e) => e.toJson()).toList(),
        'performer': performer?.map((e) => e.toJson()).toList(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'request': request?.toJson(),
        'status': status,
        'statusReason': statusReason?.map((e) => e.toJson()).toList(),
        'subject': subject.toJson(),
        'supportingInformation':
            supportingInformation?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  MedicationAdministration copyWith({
    CodeableConcept? category,
    List<Resource>? contained,
    Reference? context,
    List<Reference>? device,
    MedicationAdministrationDosage? dosage,
    String? effectiveDateTime,
    Period? effectivePeriod,
    List<Reference>? eventHistory,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<String>? instantiates,
    String? language,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    List<Reference>? partOf,
    List<MedicationAdministrationPerformer>? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    Reference? request,
    String? status,
    List<CodeableConcept>? statusReason,
    Reference? subject,
    List<Reference>? supportingInformation,
    Narrative? text,
  }) {
    return MedicationAdministration(
      category: category ?? this.category,
      contained: contained ?? this.contained,
      context: context ?? this.context,
      device: device ?? this.device,
      dosage: dosage ?? this.dosage,
      effectiveDateTime: effectiveDateTime ?? this.effectiveDateTime,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      eventHistory: eventHistory ?? this.eventHistory,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      instantiates: instantiates ?? this.instantiates,
      language: language ?? this.language,
      medicationCodeableConcept:
          medicationCodeableConcept ?? this.medicationCodeableConcept,
      medicationReference: medicationReference ?? this.medicationReference,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      partOf: partOf ?? this.partOf,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      request: request ?? this.request,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      subject: subject ?? this.subject,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      text: text ?? this.text,
    );
  }
}
