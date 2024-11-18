part of '../fhir_dart.dart';

/// A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s).
class Appointment extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'Appointment';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// The style of appointment or patient that has been booked in the slot (not service type).
  final CodeableConcept? appointmentType;

  /// The service request this appointment is allocated to assess (e.g. incoming referral or procedure request).
  final List<Reference>? basedOn;

  /// The coded reason for the appointment being cancelled. This is often used in reporting/billing/futher processing to determine if further actions are required, or specific fees apply.
  final CodeableConcept? cancelationReason;

  /// Additional comments about the appointment.
  /// Additional text to aid in facilitating the appointment. For instance, a comment might be, "patient should proceed immediately to infusion room upon arrival"
  /// Where this is a planned appointment and the start/end dates are not set then this field can be used to provide additional guidance on the details of the appointment request, including any restrictions on when to book it.
  final String? comment;

  /// The date that this appointment was initially created. This could be different to the meta.lastModified value on the initial entry, as this could have been before the resource was created on the FHIR server, and should remain unchanged over the lifespan of the appointment.
  /// This property is required for many use cases where the age of an appointment is considered in processing workflows for scheduling and billing of appointments.
  final String? created;

  /// Shown on a subject line in a meeting request, or appointment list
  /// The brief description of the appointment as would be shown on a subject line in a meeting request, or appointment list. Detailed or expanded information should be put in the comment field.
  final String? description;

  /// When appointment is to conclude
  /// Date/Time that the appointment is to conclude.
  final String? end;

  /// External Ids for this item
  /// This records identifiers associated with this appointment concern that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate (e.g. in CDA documents, or in written / printed documentation).
  final List<Identifier>? identifier;

  /// Can be less than start/end (e.g. estimate)
  /// Number of minutes that the appointment is to take. This can be less than the duration between the start and end times.  For example, where the actual time of appointment is only an estimate or if a 30 minute appointment is being requested, but any time would work.  Also, if there is, for example, a planned 15 minute break in the middle of a long appointment, the duration may be 15 minutes less than the difference between the start and end.
  final int? minutesDuration;

  /// Participants involved in appointment
  /// List of participants involved in the appointment.
  final List<AppointmentParticipant> participant;

  /// Detailed information and instructions for the patient
  /// While Appointment.comment contains information for internal use, Appointment.patientInstructions is used to capture patient facing information about the Appointment (e.g. please bring your referral or fast from 8pm night before).
  final String? patientInstruction;

  /// Used to make informed decisions if needing to re-prioritize
  /// The priority of the appointment. Can be used to make informed decisions if needing to re-prioritize appointments. (The iCal Standard specifies 0 as undefined, 1 as highest, 9 as lowest priority).
  /// Seeking implementer feedback on this property and how interoperable it is.
  /// Using an extension to record a CodeableConcept for named values may be tested at a future connectathon.
  final int? priority;

  /// Coded reason this appointment is scheduled
  /// The coded reason that this appointment is being scheduled. This is more clinical than administrative.
  final List<CodeableConcept>? reasonCode;

  /// Reason the appointment is to take place (resource)
  /// Reason the appointment has been scheduled to take place, as specified using information from another resource. When the patient arrives and the encounter begins it may be used as the admission diagnosis. The indication will typically be a Condition (with other resources referenced in the evidence.detail), or a Procedure.
  final List<Reference>? reasonReference;

  /// Potential date/time interval(s) requested to allocate the appointment within
  /// A set of date ranges (potentially including times) that the appointment is preferred to be scheduled within.
  /// The duration (usually in minutes) could also be provided to indicate the length of the appointment to fill and populate the start/end times for the actual allocated time. However, in other situations the duration may be calculated by the scheduling system.
  /// This does not introduce a capacity for recurring appointments.
  final List<Period>? requestedPeriod;

  /// A broad categorization of the service that is to be performed during this appointment.
  final List<CodeableConcept>? serviceCategory;

  /// The specific service that is to be performed during this appointment.
  /// For a provider to provider appointment the code "FOLLOWUP" may be appropriate, as this is expected to be discussing some patient that was seen in the past.
  final List<CodeableConcept>? serviceType;

  /// The slots that this appointment is filling
  /// The slots from the participants' schedules that will be filled by the appointment.
  final List<Reference>? slot;

  /// The specialty of a practitioner that would be required to perform the service requested in this appointment.
  final List<CodeableConcept>? specialty;

  /// When appointment is to take place
  /// Date/Time that the appointment is to take place.
  final String? start;

  /// The overall status of the Appointment. Each of the participants has their own participation status which indicates their involvement in the process, however this status indicates the shared status.
  /// If the Appointment's status is "cancelled" then all participants are expected to have their calendars released for the appointment period, and as such any Slots that were marked as BUSY can be re-set to FREE.
  /// This element is labeled as a modifier because the status contains the code entered-in-error that mark the Appointment as not currently valid.
  final String
      status; // Possible values: 'proposed', 'pending', 'booked', 'arrived', 'fulfilled', 'cancelled', 'noshow', 'entered-in-error', 'checked-in', 'waitlist'
  /// Additional information to support the appointment provided when making the appointment.
  final List<Reference>? supportingInformation;
  Appointment({
    this.appointmentType,
    this.basedOn,
    this.cancelationReason,
    this.comment,
    super.contained,
    this.created,
    this.description,
    this.end,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    this.minutesDuration,
    super.modifierExtension,
    required this.participant,
    this.patientInstruction,
    this.priority,
    this.reasonCode,
    this.reasonReference,
    this.requestedPeriod,
    this.serviceCategory,
    this.serviceType,
    this.slot,
    this.specialty,
    this.start,
    required this.status,
    this.supportingInformation,
    super.text,
  });

  @override
  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      appointmentType: json['appointmentType'] != null
          ? CodeableConcept.fromJson(
              (json['appointmentType'] as Map).cast<String, dynamic>())
          : null,
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      cancelationReason: json['cancelationReason'] != null
          ? CodeableConcept.fromJson(
              (json['cancelationReason'] as Map).cast<String, dynamic>())
          : null,
      comment: json['comment'] as String?,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      created: json['created'] as String?,
      description: json['description'] as String?,
      end: json['end'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      minutesDuration: json['minutesDuration'] as int?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      participant: (json['participant'] as List<dynamic>)
          .map((e) => AppointmentParticipant.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      patientInstruction: json['patientInstruction'] as String?,
      priority: json['priority'] as int?,
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      requestedPeriod: (json['requestedPeriod'] as List<dynamic>?)
          ?.map((e) => Period.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      serviceCategory: (json['serviceCategory'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      serviceType: (json['serviceType'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      slot: (json['slot'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      start: json['start'] as String?,
      status: json['status'] as String,
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
        'appointmentType': appointmentType?.toJson(),
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'cancelationReason': cancelationReason?.toJson(),
        'comment': comment,
        'contained': contained?.map((e) => e.toJson()).toList(),
        'created': created,
        'description': description,
        'end': end,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'minutesDuration': minutesDuration,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'participant': participant.map((e) => e.toJson()).toList(),
        'patientInstruction': patientInstruction,
        'priority': priority,
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'reasonReference': reasonReference?.map((e) => e.toJson()).toList(),
        'requestedPeriod': requestedPeriod?.map((e) => e.toJson()).toList(),
        'serviceCategory': serviceCategory?.map((e) => e.toJson()).toList(),
        'serviceType': serviceType?.map((e) => e.toJson()).toList(),
        'slot': slot?.map((e) => e.toJson()).toList(),
        'specialty': specialty?.map((e) => e.toJson()).toList(),
        'start': start,
        'status': status,
        'supportingInformation':
            supportingInformation?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  Appointment copyWith({
    CodeableConcept? appointmentType,
    List<Reference>? basedOn,
    CodeableConcept? cancelationReason,
    String? comment,
    List<Resource>? contained,
    String? created,
    String? description,
    String? end,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    int? minutesDuration,
    List<Extension>? modifierExtension,
    List<AppointmentParticipant>? participant,
    String? patientInstruction,
    int? priority,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Period>? requestedPeriod,
    List<CodeableConcept>? serviceCategory,
    List<CodeableConcept>? serviceType,
    List<Reference>? slot,
    List<CodeableConcept>? specialty,
    String? start,
    String? status,
    List<Reference>? supportingInformation,
    Narrative? text,
  }) {
    return Appointment(
      appointmentType: appointmentType ?? this.appointmentType,
      basedOn: basedOn ?? this.basedOn,
      cancelationReason: cancelationReason ?? this.cancelationReason,
      comment: comment ?? this.comment,
      contained: contained ?? this.contained,
      created: created ?? this.created,
      description: description ?? this.description,
      end: end ?? this.end,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      minutesDuration: minutesDuration ?? this.minutesDuration,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      participant: participant ?? this.participant,
      patientInstruction: patientInstruction ?? this.patientInstruction,
      priority: priority ?? this.priority,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      requestedPeriod: requestedPeriod ?? this.requestedPeriod,
      serviceCategory: serviceCategory ?? this.serviceCategory,
      serviceType: serviceType ?? this.serviceType,
      slot: slot ?? this.slot,
      specialty: specialty ?? this.specialty,
      start: start ?? this.start,
      status: status ?? this.status,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      text: text ?? this.text,
    );
  }
}
