part of '../fhir_dart.dart';

/// When interpreting a medicationStatement, the value of the status and NotTaken needed to be considered:
/// MedicationStatement.status + MedicationStatement.wasNotTaken
/// Status=Active + NotTaken=T = Not currently taking
/// Status=Completed + NotTaken=T = Not taken in the past
/// Status=Intended + NotTaken=T = No intention of taking
/// Status=Active + NotTaken=F = Taking, but not as prescribed
/// Status=Active + NotTaken=F = Taking
/// Status=Intended +NotTaken= F = Will be taking (not started)
/// Status=Completed + NotTaken=F = Taken in past
/// Status=In Error + NotTaken=N/A = In Error.
/// A record of a medication that is being consumed by a patient.   A MedicationStatement may indicate that the patient may be taking the medication now or has taken the medication in the past or will be taking the medication in the future.  The source of this information can be the patient, significant other (such as a family member or spouse), or a clinician.  A common scenario where this information is captured is during the history taking process during a patient visit or stay.   The medication information may come from sources such as the patient's memory, from a prescription bottle,  or from a list of medications the patient, clinician or other party maintains.
/// The primary difference between a medication statement and a medication administration is that the medication administration has complete administration information and is based on actual administration information from the person who administered the medication.  A medication statement is often, if not always, less specific.  There is no required date/time when the medication was administered, in fact we only know that a source has reported the patient is taking this medication, where details such as time, quantity, or rate or even medication product may be incomplete or missing or less precise.  As stated earlier, the medication statement information may come from the patient's memory, from a prescription bottle or from a list of medications the patient, clinician or other party maintains.  Medication administration is more formal and is not missing detailed information.
class MedicationStatement extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'MedicationStatement';

  /// Fulfils plan, proposal or order
  /// A plan, proposal or order that is fulfilled in whole or in part by this event.
  final List<Reference>? basedOn;

  /// Type of medication usage
  /// Indicates where the medication is expected to be consumed or administered.
  final CodeableConcept? category;

  /// Encounter / Episode associated with MedicationStatement
  /// The encounter or episode of care that establishes the context for this MedicationStatement.
  final Reference? context;

  /// When the statement was asserted?
  /// The date when the medication statement was asserted by the information source.
  final String? dateAsserted;

  /// Additional supporting information
  /// Allows linking the MedicationStatement to the underlying MedicationRequest, or to other information that supports or is used to derive the MedicationStatement.
  /// Likely references would be to MedicationRequest, MedicationDispense, Claim, Observation or QuestionnaireAnswers.  The most common use cases for deriving a MedicationStatement comes from creating a MedicationStatement from a MedicationRequest or from a lab observation or a claim.  it should be noted that the amount of information that is available varies from the type resource that you derive the MedicationStatement from.
  final List<Reference>? derivedFrom;

  /// Details of how medication is/was taken or should be taken
  /// Indicates how the medication is/was or should be taken by the patient.
  /// The dates included in the dosage on a Medication Statement reflect the dates for a given dose.  For example, "from November 1, 2016 to November 3, 2016, take one tablet daily and from November 4, 2016 to November 7, 2016, take two tablets daily."  It is expected that this specificity may only be populated where the patient brings in their labeled container or where the Medication Statement is derived from a MedicationRequest.
  final List<Dosage>? dosage;

  /// The date/time or interval when the medication is/was/will be taken
  /// The interval of time during which it is being asserted that the patient is/was/will be taking the medication (or was not taking, when the MedicationStatement.taken element is No).
  /// This attribute reflects the period over which the patient consumed the medication and is expected to be populated on the majority of Medication Statements. If the medication is still being taken at the time the statement is recorded, the "end" date will be omitted.  The date/time attribute supports a variety of dates - year, year/month and exact date.  If something more than this is required, this should be conveyed as text.
  final String? effectiveDateTime;

  /// The date/time or interval when the medication is/was/will be taken
  /// The interval of time during which it is being asserted that the patient is/was/will be taking the medication (or was not taking, when the MedicationStatement.taken element is No).
  /// This attribute reflects the period over which the patient consumed the medication and is expected to be populated on the majority of Medication Statements. If the medication is still being taken at the time the statement is recorded, the "end" date will be omitted.  The date/time attribute supports a variety of dates - year, year/month and exact date.  If something more than this is required, this should be conveyed as text.
  final Period? effectivePeriod;

  /// External identifier
  /// Identifiers associated with this Medication Statement that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate. They are business identifiers assigned to this resource by the performer or other systems and remain constant as the resource is updated and propagates from server to server.
  /// This is a business identifier, not a resource identifier.
  final List<Identifier>? identifier;

  /// Person or organization that provided the information about the taking of this medication
  /// The person or organization that provided the information about the taking of this medication. Note: Use derivedFrom when a MedicationStatement is derived from other resources, e.g. Claim or MedicationRequest.
  final Reference? informationSource;

  /// What medication was taken
  /// Identifies the medication being administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code that identifies the medication from a known list of medications.
  /// If only a code is specified, then it needs to be a code for a specific product. If more information is required, then the use of the medication resource is recommended.  For example, if you require form or lot number, then you must reference the Medication resource.
  final CodeableConcept? medicationCodeableConcept;

  /// What medication was taken
  /// Identifies the medication being administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code that identifies the medication from a known list of medications.
  /// If only a code is specified, then it needs to be a code for a specific product. If more information is required, then the use of the medication resource is recommended.  For example, if you require form or lot number, then you must reference the Medication resource.
  final Reference? medicationReference;

  /// Further information about the statement
  /// Provides extra information about the medication statement that is not conveyed by the other attributes.
  final List<Annotation>? note;

  /// Part of referenced event
  /// A larger event of which this particular event is a component or step.
  final List<Reference>? partOf;

  /// Reason for why the medication is being/was taken
  /// A reason for why the medication is being/was taken.
  /// This could be a diagnosis code. If a full condition record exists or additional detail is needed, use reasonForUseReference.
  final List<CodeableConcept>? reasonCode;

  /// Condition or observation that supports why the medication is being/was taken.
  /// This is a reference to a condition that is the reason why the medication is being/was taken.  If only a code exists, use reasonForUseCode.
  final List<Reference>? reasonReference;

  /// A code representing the patient or other source's judgment about the state of the medication used that this statement is about.  Generally, this will be active or completed.
  /// MedicationStatement is a statement at a point in time.  The status is only representative at the point when it was asserted.  The value set for MedicationStatement.status contains codes that assert the status of the use of the medication by the patient (for example, stopped or on hold) as well as codes that assert the status of the medication statement itself (for example, entered in error).
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'active', 'completed', 'entered-in-error', 'intended', 'stopped', 'on-hold', 'unknown', 'not-taken'
  /// Reason for current status
  /// Captures the reason for the current state of the MedicationStatement.
  /// This is generally only used for "exception" statuses such as "not-taken", "on-hold", "cancelled" or "entered-in-error". The reason for performing the event at all is captured in reasonCode, not here.
  final List<CodeableConcept>? statusReason;

  /// Who is/was taking  the medication
  /// The person, animal or group who is/was taking the medication.
  final Reference subject;
  MedicationStatement({
    this.basedOn,
    this.category,
    super.contained,
    this.context,
    this.dateAsserted,
    this.derivedFrom,
    this.dosage,
    this.effectiveDateTime,
    this.effectivePeriod,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.informationSource,
    super.language,
    this.medicationCodeableConcept,
    this.medicationReference,
    super.meta,
    super.modifierExtension,
    this.note,
    this.partOf,
    this.reasonCode,
    this.reasonReference,
    required this.status,
    this.statusReason,
    required this.subject,
    super.text,
  });

  @override
  factory MedicationStatement.fromJson(Map<String, dynamic> json) {
    return MedicationStatement(
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
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
      dateAsserted: json['dateAsserted'] as String?,
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      dosage: (json['dosage'] as List<dynamic>?)
          ?.map((e) => Dosage.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      effectiveDateTime: json['effectiveDateTime'] as String?,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              (json['effectivePeriod'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      informationSource: json['informationSource'] != null
          ? Reference.fromJson(
              (json['informationSource'] as Map).cast<String, dynamic>())
          : null,
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
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String,
      statusReason: (json['statusReason'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      subject:
          Reference.fromJson((json['subject'] as Map).cast<String, dynamic>()),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'category': category?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'context': context?.toJson(),
        'dateAsserted': dateAsserted,
        'derivedFrom': derivedFrom?.map((e) => e.toJson()).toList(),
        'dosage': dosage?.map((e) => e.toJson()).toList(),
        'effectiveDateTime': effectiveDateTime,
        'effectivePeriod': effectivePeriod?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'informationSource': informationSource?.toJson(),
        'language': language,
        'medicationCodeableConcept': medicationCodeableConcept?.toJson(),
        'medicationReference': medicationReference?.toJson(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'partOf': partOf?.map((e) => e.toJson()).toList(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'status': status,
        'statusReason': statusReason?.map((e) => e.toJson()).toList(),
        'subject': subject.toJson(),
        'text': text?.toJson(),
      };

  @override
  MedicationStatement copyWith({
    List<Reference>? basedOn,
    CodeableConcept? category,
    List<Resource>? contained,
    Reference? context,
    String? dateAsserted,
    List<Reference>? derivedFrom,
    List<Dosage>? dosage,
    String? effectiveDateTime,
    Period? effectivePeriod,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    Reference? informationSource,
    String? language,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    List<Reference>? partOf,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    String? status,
    List<CodeableConcept>? statusReason,
    Reference? subject,
    Narrative? text,
  }) {
    return MedicationStatement(
      basedOn: basedOn ?? this.basedOn,
      category: category ?? this.category,
      contained: contained ?? this.contained,
      context: context ?? this.context,
      dateAsserted: dateAsserted ?? this.dateAsserted,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      dosage: dosage ?? this.dosage,
      effectiveDateTime: effectiveDateTime ?? this.effectiveDateTime,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      informationSource: informationSource ?? this.informationSource,
      language: language ?? this.language,
      medicationCodeableConcept:
          medicationCodeableConcept ?? this.medicationCodeableConcept,
      medicationReference: medicationReference ?? this.medicationReference,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      partOf: partOf ?? this.partOf,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      subject: subject ?? this.subject,
      text: text ?? this.text,
    );
  }
}
