part of '../fhir_dart.dart';

/// A reply to an appointment request for a patient and/or practitioner(s), such as a confirmation or rejection.
class AppointmentResponse extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'AppointmentResponse';

  /// Person, Location, HealthcareService, or Device
  /// A Person, Location, HealthcareService, or Device that is participating in the appointment.
  final Reference? actor;

  /// Appointment this response relates to
  /// Appointment that this response is replying to.
  final Reference appointment;

  /// Additional comments about the appointment.
  /// This comment is particularly important when the responder is declining, tentatively accepting or requesting another time to indicate the reasons why.
  final String? comment;

  /// Time from appointment, or requested new end time
  /// This may be either the same as the appointment request to confirm the details of the appointment, or alternately a new time to request a re-negotiation of the end time.
  final String? end;

  /// External Ids for this item
  /// This records identifiers associated with this appointment response concern that are defined by business processes and/ or used to refer to it when a direct URL reference to the resource itself is not appropriate.
  final List<Identifier>? identifier;

  /// Participation status of the participant. When the status is declined or tentative if the start/end times are different to the appointment, then these times should be interpreted as a requested time change. When the status is accepted, the times can either be the time of the appointment (as a confirmation of the time) or can be empty.
  /// This element is labeled as a modifier because the status contains the code entered-in-error that marks the participant as not currently valid.
  final String
      participantStatus; // Possible values: 'accepted', 'declined', 'tentative', 'needs-action'
  /// Role of participant in the appointment.
  /// The role of the participant can be used to declare what the actor will be doing in the scope of the referenced appointment.
  /// If the actor is not specified, then it is expected that the actor will be filled in at a later stage of planning.
  /// This value SHALL be the same as specified on the referenced Appointment so that they can be matched, and subsequently updated.
  final List<CodeableConcept>? participantType;

  /// Time from appointment, or requested new start time
  /// Date/Time that the appointment is to take place, or requested new start time.
  /// This may be either the same as the appointment request to confirm the details of the appointment, or alternately a new time to request a re-negotiation of the start time.
  final String? start;
  AppointmentResponse({
    this.actor,
    required this.appointment,
    this.comment,
    super.contained,
    this.end,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    required this.participantStatus,
    this.participantType,
    this.start,
    super.text,
  });

  @override
  factory AppointmentResponse.fromJson(Map<String, dynamic> json) {
    return AppointmentResponse(
      actor: json['actor'] != null
          ? Reference.fromJson((json['actor'] as Map).cast<String, dynamic>())
          : null,
      appointment: Reference.fromJson(
          (json['appointment'] as Map).cast<String, dynamic>()),
      comment: json['comment'] as String?,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      participantStatus: json['participantStatus'] as String,
      participantType: (json['participantType'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      start: json['start'] as String?,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'actor': actor?.toJson(),
        'appointment': appointment.toJson(),
        'comment': comment,
        'contained': contained?.map((e) => e.toJson()).toList(),
        'end': end,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'participantStatus': participantStatus,
        'participantType': participantType?.map((e) => e.toJson()).toList(),
        'start': start,
        'text': text?.toJson(),
      };

  @override
  AppointmentResponse copyWith({
    Reference? actor,
    Reference? appointment,
    String? comment,
    List<Resource>? contained,
    String? end,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? participantStatus,
    List<CodeableConcept>? participantType,
    String? start,
    Narrative? text,
  }) {
    return AppointmentResponse(
      actor: actor ?? this.actor,
      appointment: appointment ?? this.appointment,
      comment: comment ?? this.comment,
      contained: contained ?? this.contained,
      end: end ?? this.end,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      participantStatus: participantStatus ?? this.participantStatus,
      participantType: participantType ?? this.participantType,
      start: start ?? this.start,
      text: text ?? this.text,
    );
  }
}
