part of '../fhir_dart.dart';

 /// Participants involved in appointment
 /// List of participants involved in the appointment.
class AppointmentParticipant extends BackboneElement implements FhirResource {
   /// Person, Location/HealthcareService or Device
   /// A Person, Location/HealthcareService or Device that is participating in the appointment.
  final Reference? actor;
   /// Participation period of the actor.
  final Period? period;
   /// Whether this participant is required to be present at the meeting. This covers a use-case where two doctors need to meet to discuss the results for a specific patient, and the patient is not required to be present.
  final String? required; // Possible values: 'required', 'optional', 'information-only'
   /// Participation status of the actor.
  final String status; // Possible values: 'accepted', 'declined', 'tentative', 'needs-action'
   /// Role of participant in the appointment.
   /// The role of the participant can be used to declare what the actor will be doing in the scope of this appointment.
   /// If the actor is not specified, then it is expected that the actor will be filled in at a later stage of planning.
   /// This value SHALL be the same when creating an AppointmentResponse so that they can be matched, and subsequently update the Appointment.
  final List<CodeableConcept>? type;
  AppointmentParticipant({
    this.actor,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.period,
    this.required,
    required this.status,
    this.type,
  });
  
  @override
  factory AppointmentParticipant.fromJson(Map<String, dynamic> json) {
    return AppointmentParticipant(
      actor: json['actor'] != null ? Reference.fromJson(json['actor'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      period: json['period'] != null ? Period.fromJson(json['period'] as Map<String, dynamic>) : null,
      required: json['required'] as String?,
      status: json['status'] as String,
      type: (json['type'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'actor': actor?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'period': period?.toJson(),
      'required': required,
      'status': status,
      'type': type?.map((e) => e.toJson()).toList(),
    };
  
  @override
  AppointmentParticipant copyWith({
    Reference? actor,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Period? period,
    String? required,
    String? status,
    List<CodeableConcept>? type,
  }) {
    return AppointmentParticipant(
      actor: actor ?? this.actor,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      required: required ?? this.required,
      status: status ?? this.status,
      type: type ?? this.type,
    );
  }
}
