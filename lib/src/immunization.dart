part of '../fhir_dart.dart';

/// Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party.
class Immunization extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Immunization';

  /// Amount of vaccine administered
  /// The quantity of vaccine product that was administered.
  final Quantity? doseQuantity;

  /// Educational material presented to patient
  /// Educational material presented to the patient (or guardian) at the time of vaccine administration.
  final List<ImmunizationEducation>? education;

  /// Encounter immunization was part of
  /// The visit or admission or other contact between patient and health care provider the immunization was performed as part of.
  final Reference? encounter;

  /// Vaccine expiration date
  /// Date vaccine batch expires.
  final String? expirationDate;

  /// Funding source for the vaccine
  /// Indicates the source of the vaccine actually administered. This may be different than the patient eligibility (e.g. the patient may be eligible for a publically purchased vaccine but due to inventory issues, vaccine purchased with private funds was actually administered).
  final CodeableConcept? fundingSource;

  /// Business identifier
  /// A unique identifier assigned to this immunization record.
  final List<Identifier>? identifier;

  /// Dose potency
  /// Indication if a dose is considered to be subpotent. By default, a dose should be considered to be potent.
  /// Typically, the recognition of the dose being sub-potent is retrospective, after the administration (ex. notification of a manufacturer recall after administration). However, in the case of a partial administration (the patient moves unexpectedly and only some of the dose is actually administered), subpotency may be recognized immediately, but it is still important to record the event.
  final bool? isSubpotent;

  /// Where immunization occurred
  /// The service delivery location where the vaccine administration occurred.
  final Reference? location;

  /// Vaccine lot number
  /// Lot number of the  vaccine product.
  final String? lotNumber;

  /// Vaccine manufacturer
  /// Name of vaccine manufacturer.
  final Reference? manufacturer;

  /// Additional immunization notes
  /// Extra information about the immunization that is not conveyed by the other attributes.
  final List<Annotation>? note;

  /// Vaccine administration date
  /// Date vaccine administered or was to be administered.
  /// When immunizations are given a specific date and time should always be known.   When immunizations are patient reported, a specific date might not be known.  Although partial dates are allowed, an adult patient might not be able to recall the year a childhood immunization was given. An exact date is always preferable, but the use of the String data type is acceptable when an exact date is not known. A small number of vaccines (e.g. live oral typhoid vaccine) are given as a series of patient self-administered dose over a span of time. In cases like this, often, only the first dose (typically a provider supervised dose) is recorded with the occurrence indicating the date/time of the first dose.
  final String? occurrenceDateTime;

  /// Vaccine administration date
  /// Date vaccine administered or was to be administered.
  /// When immunizations are given a specific date and time should always be known.   When immunizations are patient reported, a specific date might not be known.  Although partial dates are allowed, an adult patient might not be able to recall the year a childhood immunization was given. An exact date is always preferable, but the use of the String data type is acceptable when an exact date is not known. A small number of vaccines (e.g. live oral typhoid vaccine) are given as a series of patient self-administered dose over a span of time. In cases like this, often, only the first dose (typically a provider supervised dose) is recorded with the occurrence indicating the date/time of the first dose.
  final String? occurrenceString;

  /// Who was immunized
  /// The patient who either received or did not receive the immunization.
  final Reference patient;

  /// Who performed event
  /// Indicates who performed the immunization event.
  final List<ImmunizationPerformer>? performer;

  /// Indicates context the data was recorded in
  /// An indication that the content of the record is based on information from the person who administered the vaccine. This reflects the context under which the data was originally recorded.
  /// Reflects the “reliability” of the content.
  final bool? primarySource;

  /// Patient eligibility for a vaccination program
  /// Indicates a patient's eligibility for a funding program.
  final List<CodeableConcept>? programEligibility;

  /// Protocol followed by the provider
  /// The protocol (set of recommendations) being followed by the provider who administered the dose.
  final List<ImmunizationProtocolApplied>? protocolApplied;

  /// Details of a reaction that follows immunization
  /// Categorical data indicating that an adverse event is associated in time to an immunization.
  /// A reaction may be an indication of an allergy or intolerance and, if this is determined to be the case, it should be recorded as a new AllergyIntolerance resource instance as most systems will not query against past Immunization.reaction elements.
  final List<ImmunizationReaction>? reaction;

  /// Why immunization occurred
  /// Reasons why the vaccine was administered.
  final List<CodeableConcept>? reasonCode;

  /// Why immunization occurred
  /// Condition, Observation or DiagnosticReport that supports why the immunization was administered.
  final List<Reference>? reasonReference;

  /// When the immunization was first captured in the subject's record
  /// The date the occurrence of the immunization was first captured in the record - potentially significantly after the occurrence of the event.
  final String? recorded;

  /// Indicates the source of a secondarily reported record
  /// The source of the data when the report of the immunization event is not based on information from the person who administered the vaccine.
  /// Should not be populated if primarySource = True, not required even if primarySource = False.
  final CodeableConcept? reportOrigin;

  /// How vaccine entered body
  /// The path by which the vaccine product is taken into the body.
  final CodeableConcept? route;

  /// Body site vaccine  was administered
  /// Body site where vaccine was administered.
  final CodeableConcept? site;

  /// Indicates the current status of the immunization event.
  /// Will generally be set to show that the immunization has been completed or not done.  This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'completed', 'entered-in-error', 'not-done'
  /// Reason not done
  /// Indicates the reason the immunization event was not performed.
  /// This is generally only used for the status of "not-done". The reason for performing the immunization event is captured in reasonCode, not here.
  final CodeableConcept? statusReason;

  /// Reason for being subpotent
  /// Reason why a dose is considered to be subpotent.
  final List<CodeableConcept>? subpotentReason;

  /// Vaccine product administered
  /// Vaccine that was administered or was to be administered.
  final CodeableConcept vaccineCode;
  Immunization({
    super.contained,
    this.doseQuantity,
    this.education,
    this.encounter,
    this.expirationDate,
    super.fhirExtension,
    this.fundingSource,
    super.id,
    this.identifier,
    super.implicitRules,
    this.isSubpotent,
    super.language,
    this.location,
    this.lotNumber,
    this.manufacturer,
    super.meta,
    super.modifierExtension,
    this.note,
    this.occurrenceDateTime,
    this.occurrenceString,
    required this.patient,
    this.performer,
    this.primarySource,
    this.programEligibility,
    this.protocolApplied,
    this.reaction,
    this.reasonCode,
    this.reasonReference,
    this.recorded,
    this.reportOrigin,
    this.route,
    this.site,
    required this.status,
    this.statusReason,
    this.subpotentReason,
    super.text,
    required this.vaccineCode,
  });

  @override
  factory Immunization.fromJson(Map<String, dynamic> json) {
    return Immunization(
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      doseQuantity: json['doseQuantity'] != null
          ? Quantity.fromJson(
              (json['doseQuantity'] as Map).cast<String, dynamic>())
          : null,
      education: (json['education'] as List<dynamic>?)
          ?.map((e) => ImmunizationEducation.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              (json['encounter'] as Map).cast<String, dynamic>())
          : null,
      expirationDate: json['expirationDate'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fundingSource: json['fundingSource'] != null
          ? CodeableConcept.fromJson(
              (json['fundingSource'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      isSubpotent: json['isSubpotent'] as bool?,
      language: json['language'] as String?,
      location: json['location'] != null
          ? Reference.fromJson(
              (json['location'] as Map).cast<String, dynamic>())
          : null,
      lotNumber: json['lotNumber'] as String?,
      manufacturer: json['manufacturer'] != null
          ? Reference.fromJson(
              (json['manufacturer'] as Map).cast<String, dynamic>())
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
      occurrenceDateTime: json['occurrenceDateTime'] as String?,
      occurrenceString: json['occurrenceString'] as String?,
      patient:
          Reference.fromJson((json['patient'] as Map).cast<String, dynamic>()),
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => ImmunizationPerformer.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      primarySource: json['primarySource'] as bool?,
      programEligibility: (json['programEligibility'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      protocolApplied: (json['protocolApplied'] as List<dynamic>?)
          ?.map((e) => ImmunizationProtocolApplied.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      reaction: (json['reaction'] as List<dynamic>?)
          ?.map((e) =>
              ImmunizationReaction.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      recorded: json['recorded'] as String?,
      reportOrigin: json['reportOrigin'] != null
          ? CodeableConcept.fromJson(
              (json['reportOrigin'] as Map).cast<String, dynamic>())
          : null,
      route: json['route'] != null
          ? CodeableConcept.fromJson(
              (json['route'] as Map).cast<String, dynamic>())
          : null,
      site: json['site'] != null
          ? CodeableConcept.fromJson(
              (json['site'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              (json['statusReason'] as Map).cast<String, dynamic>())
          : null,
      subpotentReason: (json['subpotentReason'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      vaccineCode: CodeableConcept.fromJson(
          (json['vaccineCode'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contained': contained?.map((e) => e.toJson()).toList(),
        'doseQuantity': doseQuantity?.toJson(),
        'education': education?.map((e) => e.toJson()).toList(),
        'encounter': encounter?.toJson(),
        'expirationDate': expirationDate,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'fundingSource': fundingSource?.toJson(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'isSubpotent': isSubpotent,
        'language': language,
        'location': location?.toJson(),
        'lotNumber': lotNumber,
        'manufacturer': manufacturer?.toJson(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'occurrenceDateTime': occurrenceDateTime,
        'occurrenceString': occurrenceString,
        'patient': patient.toJson(),
        'performer': performer?.map((e) => e.toJson()).toList(),
        'primarySource': primarySource,
        'programEligibility':
            programEligibility?.map((e) => e.toJson()).toList(),
        'protocolApplied': protocolApplied?.map((e) => e.toJson()).toList(),
        'reaction': reaction?.map((e) => e.toJson()).toList(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'recorded': recorded,
        'reportOrigin': reportOrigin?.toJson(),
        'route': route?.toJson(),
        'site': site?.toJson(),
        'status': status,
        'statusReason': statusReason?.toJson(),
        'subpotentReason': subpotentReason?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'vaccineCode': vaccineCode.toJson(),
      };

  @override
  Immunization copyWith({
    List<Resource>? contained,
    Quantity? doseQuantity,
    List<ImmunizationEducation>? education,
    Reference? encounter,
    String? expirationDate,
    List<Extension>? fhirExtension,
    CodeableConcept? fundingSource,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    bool? isSubpotent,
    String? language,
    Reference? location,
    String? lotNumber,
    Reference? manufacturer,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    String? occurrenceDateTime,
    String? occurrenceString,
    Reference? patient,
    List<ImmunizationPerformer>? performer,
    bool? primarySource,
    List<CodeableConcept>? programEligibility,
    List<ImmunizationProtocolApplied>? protocolApplied,
    List<ImmunizationReaction>? reaction,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    String? recorded,
    CodeableConcept? reportOrigin,
    CodeableConcept? route,
    CodeableConcept? site,
    String? status,
    CodeableConcept? statusReason,
    List<CodeableConcept>? subpotentReason,
    Narrative? text,
    CodeableConcept? vaccineCode,
  }) {
    return Immunization(
      contained: contained ?? this.contained,
      doseQuantity: doseQuantity ?? this.doseQuantity,
      education: education ?? this.education,
      encounter: encounter ?? this.encounter,
      expirationDate: expirationDate ?? this.expirationDate,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      fundingSource: fundingSource ?? this.fundingSource,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      isSubpotent: isSubpotent ?? this.isSubpotent,
      language: language ?? this.language,
      location: location ?? this.location,
      lotNumber: lotNumber ?? this.lotNumber,
      manufacturer: manufacturer ?? this.manufacturer,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrenceString: occurrenceString ?? this.occurrenceString,
      patient: patient ?? this.patient,
      performer: performer ?? this.performer,
      primarySource: primarySource ?? this.primarySource,
      programEligibility: programEligibility ?? this.programEligibility,
      protocolApplied: protocolApplied ?? this.protocolApplied,
      reaction: reaction ?? this.reaction,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      recorded: recorded ?? this.recorded,
      reportOrigin: reportOrigin ?? this.reportOrigin,
      route: route ?? this.route,
      site: site ?? this.site,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      subpotentReason: subpotentReason ?? this.subpotentReason,
      text: text ?? this.text,
      vaccineCode: vaccineCode ?? this.vaccineCode,
    );
  }
}
