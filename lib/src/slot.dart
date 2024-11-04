part of '../fhir_dart.dart';

 /// A slot of time on a schedule that may be available for booking appointments.
class Slot extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'Slot';
   /// The style of appointment or patient that may be booked in the slot (not service type).
  final CodeableConcept? appointmentType;
   /// Comments on the slot to describe any extended information. Such as custom constraints on the slot.
  final String? comment;
   /// Date/Time that the slot is to conclude.
  final String end;
   /// External Ids for this item.
  final List<Identifier>? identifier;
   /// This slot has already been overbooked, appointments are unlikely to be accepted for this time.
  final bool? overbooked;
   /// The schedule resource that this slot defines an interval of status information.
  final Reference schedule;
   /// A broad categorization of the service that is to be performed during this appointment.
  final List<CodeableConcept>? serviceCategory;
   /// The type of appointments that can be booked into this slot (ideally this would be an identifiable service - which is at a location, rather than the location itself). If provided then this overrides the value provided on the availability resource.
  final List<CodeableConcept>? serviceType;
   /// The specialty of a practitioner that would be required to perform the service requested in this appointment.
  final List<CodeableConcept>? specialty;
   /// Date/Time that the slot is to begin.
  final String start;
   /// busy | free | busy-unavailable | busy-tentative | entered-in-error.
  final String status; // Possible values: 'busy', 'free', 'busy-unavailable', 'busy-tentative', 'entered-in-error'
  Slot({
    this.appointmentType,
    this.comment,
    super.contained,
    required this.end,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.overbooked,
    required this.schedule,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    required this.start,
    required this.status,
    super.text,
  });
  
  @override
  factory Slot.fromJson(Map<String, dynamic> json) {
    return Slot(
      appointmentType: json['appointmentType'] != null ? CodeableConcept.fromJson(json['appointmentType'] as Map<String, dynamic>) : null,
      comment: json['comment'] as String?,
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      end: json['end'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      overbooked: json['overbooked'] as bool?,
      schedule: Reference.fromJson(json['schedule'] as Map<String, dynamic>),
      serviceCategory: (json['serviceCategory'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      serviceType: (json['serviceType'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      specialty: (json['specialty'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      start: json['start'] as String,
      status: json['status'] as String,
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'appointmentType': appointmentType?.toJson(),
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
      'overbooked': overbooked,
      'schedule': schedule.toJson(),
      'serviceCategory': serviceCategory?.map((e) => e.toJson()).toList(),
      'serviceType': serviceType?.map((e) => e.toJson()).toList(),
      'specialty': specialty?.map((e) => e.toJson()).toList(),
      'start': start,
      'status': status,
      'text': text?.toJson(),
    };
  
  @override
  Slot copyWith({
    CodeableConcept? appointmentType,
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
    bool? overbooked,
    Reference? schedule,
    List<CodeableConcept>? serviceCategory,
    List<CodeableConcept>? serviceType,
    List<CodeableConcept>? specialty,
    String? start,
    String? status,
    Narrative? text,
  }) {
    return Slot(
      appointmentType: appointmentType ?? this.appointmentType,
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
      overbooked: overbooked ?? this.overbooked,
      schedule: schedule ?? this.schedule,
      serviceCategory: serviceCategory ?? this.serviceCategory,
      serviceType: serviceType ?? this.serviceType,
      specialty: specialty ?? this.specialty,
      start: start ?? this.start,
      status: status ?? this.status,
      text: text ?? this.text,
    );
  }
}
