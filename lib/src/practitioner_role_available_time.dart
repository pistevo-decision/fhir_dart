part of '../fhir_dart.dart';

/// Times the Service Site is available
/// A collection of times the practitioner is available or performing this role at the location and/or healthcareservice.
/// More detailed availability information may be provided in associated Schedule/Slot resources.
class PractitionerRoleAvailableTime extends BackboneElement
    implements FhirResource {
  /// Always available? e.g. 24 hour service
  /// Is this always available? (hence times are irrelevant) e.g. 24 hour service.
  final bool? allDay;

  /// Closing time of day (ignored if allDay = true)
  /// The closing time of day. Note: If the AllDay flag is set, then this time is ignored.
  /// The timezone is expected to be for where this HealthcareService is provided at.
  final String? availableEndTime;

  /// Opening time of day (ignored if allDay = true)
  /// The opening time of day. Note: If the AllDay flag is set, then this time is ignored.
  /// The timezone is expected to be for where this HealthcareService is provided at.
  final String? availableStartTime;

  /// Indicates which days of the week are available between the start and end Times.
  final List<String>?
      daysOfWeek; // Possible values: 'mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun'
  PractitionerRoleAvailableTime({
    this.allDay,
    this.availableEndTime,
    this.availableStartTime,
    this.daysOfWeek,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory PractitionerRoleAvailableTime.fromJson(Map<String, dynamic> json) {
    return PractitionerRoleAvailableTime(
      allDay: json['allDay'] as bool?,
      availableEndTime: json['availableEndTime'] as String?,
      availableStartTime: json['availableStartTime'] as String?,
      daysOfWeek: (json['daysOfWeek'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'allDay': allDay,
        'availableEndTime': availableEndTime,
        'availableStartTime': availableStartTime,
        'daysOfWeek': daysOfWeek?.map((e) => e).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  PractitionerRoleAvailableTime copyWith({
    bool? allDay,
    String? availableEndTime,
    String? availableStartTime,
    List<String>? daysOfWeek,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return PractitionerRoleAvailableTime(
      allDay: allDay ?? this.allDay,
      availableEndTime: availableEndTime ?? this.availableEndTime,
      availableStartTime: availableStartTime ?? this.availableStartTime,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
