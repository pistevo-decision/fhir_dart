part of '../fhir_dart.dart';

/// What days/times during a week is this location usually open.
/// This type of information is commonly found published in directories and on websites informing customers when the facility is available.
/// Specific services within the location may have their own hours which could be shorter (or longer) than the locations hours.
class LocationHoursOfOperation extends BackboneElement implements FhirResource {
  /// The Location is open all day.
  final bool? allDay;

  /// Time that the Location closes.
  final String? closingTime;

  /// Indicates which days of the week are available between the start and end Times.
  final List<String>?
      daysOfWeek; // Possible values: 'mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun'
  /// Time that the Location opens.
  final String? openingTime;
  LocationHoursOfOperation({
    this.allDay,
    this.closingTime,
    this.daysOfWeek,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.openingTime,
  });

  @override
  factory LocationHoursOfOperation.fromJson(Map<String, dynamic> json) {
    return LocationHoursOfOperation(
      allDay: json['allDay'] as bool?,
      closingTime: json['closingTime'] as String?,
      daysOfWeek: (json['daysOfWeek'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      openingTime: json['openingTime'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'allDay': allDay,
        'closingTime': closingTime,
        'daysOfWeek': daysOfWeek?.map((e) => e).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'openingTime': openingTime,
      };

  @override
  LocationHoursOfOperation copyWith({
    bool? allDay,
    String? closingTime,
    List<String>? daysOfWeek,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? openingTime,
  }) {
    return LocationHoursOfOperation(
      allDay: allDay ?? this.allDay,
      closingTime: closingTime ?? this.closingTime,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      openingTime: openingTime ?? this.openingTime,
    );
  }
}
