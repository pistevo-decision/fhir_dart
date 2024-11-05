part of '../fhir_dart.dart';

/// Describes the occurrence of an event that may occur multiple times. Timing schedules are used for specifying when events are expected or requested to occur, and may also be used to represent the summary of a past or ongoing event.  For simplicity, the definitions of Timing components are expressed as 'future' events, but such components can also be used to describe historic or ongoing events.
/// A Timing schedule can be a list of events and/or criteria for when the event happens, which can be expressed in a structured form and/or as a code. When both event and a repeating specification are provided, the list of events should be understood as an interpretation of the information in the repeat structure.
/// Base StructureDefinition for Timing Type: Specifies an event that may occur multiple times. Timing schedules are used to record when things are planned, expected or requested to occur. The most common usage is in dosage instructions for medications. They are also used when planning care of various kinds, and may be used for reporting the schedule to which past regular activities were carried out.
/// Need to able to track proposed timing schedules. There are several different ways to do this: one or more specified times, a simple rules like three times a day, or  before/after meals.
class Timing extends BackboneElement implements FhirResource {
  /// BID | TID | QID | AM | PM | QD | QOD | +
  /// A code for the timing schedule (or just text in code.text). Some codes such as BID are ubiquitous, but many institutions define their own additional codes. If a code is provided, the code is understood to be a complete statement of whatever is specified in the structured timing data, and either the code or the data may be used to interpret the Timing, with the exception that .repeat.bounds still applies over the code (and is not contained in the code).
  /// BID etc. are defined as 'at institutionally specified times'. For example, an institution may choose that BID is "always at 7am and 6pm".  If it is inappropriate for this choice to be made, the code BID should not be used. Instead, a distinct organization-specific code should be used in place of the HL7-defined BID code and/or a structured representation should be used (in this case, specifying the two event times).
  final CodeableConcept? code;

  /// When the event occurs
  /// Identifies specific times when the event occurs.
  final List<String>? event;

  /// When the event is to occur
  /// A set of rules that describe when the event is scheduled.
  final TimingRepeat? repeat;
  Timing({
    this.code,
    this.event,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.repeat,
  });

  @override
  factory Timing.fromJson(Map<String, dynamic> json) {
    return Timing(
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              (json['code'] as Map).cast<String, dynamic>())
          : null,
      event:
          (json['event'] as List<dynamic>?)?.map((e) => e as String).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      repeat: json['repeat'] != null
          ? TimingRepeat.fromJson(
              (json['repeat'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code?.toJson(),
        'event': event?.map((e) => e).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'repeat': repeat?.toJson(),
      };

  @override
  Timing copyWith({
    CodeableConcept? code,
    List<String>? event,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    TimingRepeat? repeat,
  }) {
    return Timing(
      code: code ?? this.code,
      event: event ?? this.event,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      repeat: repeat ?? this.repeat,
    );
  }
}
