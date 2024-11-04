part of '../fhir_dart.dart';

 /// When the event is to occur
 /// A set of rules that describe when the event is scheduled.
class TimingRepeat extends Element implements FhirResource {
   /// Length/Range of lengths, or (Start and/or end) limits
   /// Either a duration for the length of the timing schedule, a range of possible length, or outer bounds for start and/or end limits of the timing schedule.
  final Duration? boundsDuration;
   /// Length/Range of lengths, or (Start and/or end) limits
   /// Either a duration for the length of the timing schedule, a range of possible length, or outer bounds for start and/or end limits of the timing schedule.
  final Period? boundsPeriod;
   /// Length/Range of lengths, or (Start and/or end) limits
   /// Either a duration for the length of the timing schedule, a range of possible length, or outer bounds for start and/or end limits of the timing schedule.
  final Range? boundsRange;
   /// Number of times to repeat
   /// A total count of the desired number of repetitions across the duration of the entire timing specification. If countMax is present, this element indicates the lower bound of the allowed range of count values.
   /// If you have both bounds and count, then this should be understood as within the bounds period, until count times happens.
  final int? count;
   /// Maximum number of times to repeat
   /// If present, indicates that the count is a range - so to perform the action between [count] and [countMax] times.
  final int? countMax;
   /// If one or more days of week is provided, then the action happens only on the specified day(s).
   /// If no days are specified, the action is assumed to happen every day as otherwise specified. The elements frequency and period cannot be used as well as dayOfWeek.
  final List<String>? dayOfWeek; // Possible values: 'mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun'
   /// How long when it happens
   /// How long this thing happens for when it happens. If durationMax is present, this element indicates the lower bound of the allowed range of the duration.
   /// For some events the duration is part of the definition of the event (e.g. IV infusions, where the duration is implicit in the specified quantity and rate). For others, it's part of the timing specification (e.g. exercise).
  final num? duration;
   /// How long when it happens (Max)
   /// If present, indicates that the duration is a range - so to perform the action between [duration] and [durationMax] time length.
   /// For some events the duration is part of the definition of the event (e.g. IV infusions, where the duration is implicit in the specified quantity and rate). For others, it's part of the timing specification (e.g. exercise).
  final num? durationMax;
   /// The units of time for the duration, in UCUM units.
  final String? durationUnit; // Possible values: 's', 'min', 'h', 'd', 'wk', 'mo', 'a'
   /// Event occurs frequency times per period
   /// The number of times to repeat the action within the specified period. If frequencyMax is present, this element indicates the lower bound of the allowed range of the frequency.
  final int? frequency;
   /// Event occurs up to frequencyMax times per period
   /// If present, indicates that the frequency is a range - so to repeat between [frequency] and [frequencyMax] times within the period or period range.
  final int? frequencyMax;
   /// Minutes from event (before or after)
   /// The number of minutes from the event. If the event code does not indicate whether the minutes is before or after the event, then the offset is assumed to be after the event.
  final int? offset;
   /// Event occurs frequency times per period
   /// Indicates the duration of time over which repetitions are to occur; e.g. to express "3 times per day", 3 would be the frequency and "1 day" would be the period. If periodMax is present, this element indicates the lower bound of the allowed range of the period length.
  final num? period;
   /// Upper limit of period (3-4 hours)
   /// If present, indicates that the period is a range from [period] to [periodMax], allowing expressing concepts such as "do this once every 3-5 days.
  final num? periodMax;
   /// The units of time for the period in UCUM units.
  final String? periodUnit; // Possible values: 's', 'min', 'h', 'd', 'wk', 'mo', 'a'
   /// Time of day for action
   /// Specified time of day for action to take place.
   /// When time of day is specified, it is inferred that the action happens every day (as filtered by dayofWeek) on the specified times. The elements when, frequency and period cannot be used as well as timeOfDay.
  final List<String>? timeOfDay;
   /// Code for time period of occurrence
   /// An approximate time period during the day, potentially linked to an event of daily living that indicates when the action should occur.
   /// When more than one event is listed, the event is tied to the union of the specified events.
  final List<String>? when; // Possible values: 'MORN', 'MORN.early', 'MORN.late', 'NOON', 'AFT', 'AFT.early', 'AFT.late', 'EVE', 'EVE.early', 'EVE.late', 'NIGHT', 'PHS', 'HS', 'WAKE', 'C', 'CM', 'CD', 'CV', 'AC', 'ACM', 'ACD', 'ACV', 'PC', 'PCM', 'PCD', 'PCV'
  TimingRepeat({
    this.boundsDuration,
    this.boundsPeriod,
    this.boundsRange,
    this.count,
    this.countMax,
    this.dayOfWeek,
    this.duration,
    this.durationMax,
    this.durationUnit,
    super.fhirExtension,
    this.frequency,
    this.frequencyMax,
    super.id,
    this.offset,
    this.period,
    this.periodMax,
    this.periodUnit,
    this.timeOfDay,
    this.when,
  });
  
  @override
  factory TimingRepeat.fromJson(Map<String, dynamic> json) {
    return TimingRepeat(
      boundsDuration: json['boundsDuration'] != null ? Duration.fromJson(json['boundsDuration'] as Map<String, dynamic>) : null,
      boundsPeriod: json['boundsPeriod'] != null ? Period.fromJson(json['boundsPeriod'] as Map<String, dynamic>) : null,
      boundsRange: json['boundsRange'] != null ? Range.fromJson(json['boundsRange'] as Map<String, dynamic>) : null,
      count: json['count'] as int?,
      countMax: json['countMax'] as int?,
      dayOfWeek: (json['dayOfWeek'] as List<dynamic>?)?.map((e) => e as String).toList(),
      duration: json['duration'] as num?,
      durationMax: json['durationMax'] as num?,
      durationUnit: json['durationUnit'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      frequency: json['frequency'] as int?,
      frequencyMax: json['frequencyMax'] as int?,
      id: json['id'] as String?,
      offset: json['offset'] as int?,
      period: json['period'] as num?,
      periodMax: json['periodMax'] as num?,
      periodUnit: json['periodUnit'] as String?,
      timeOfDay: (json['timeOfDay'] as List<dynamic>?)?.map((e) => e as String).toList(),
      when: (json['when'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'boundsDuration': boundsDuration?.toJson(),
      'boundsPeriod': boundsPeriod?.toJson(),
      'boundsRange': boundsRange?.toJson(),
      'count': count,
      'countMax': countMax,
      'dayOfWeek': dayOfWeek?.map((e) => e).toList(),
      'duration': duration,
      'durationMax': durationMax,
      'durationUnit': durationUnit,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'frequency': frequency,
      'frequencyMax': frequencyMax,
      'id': id,
      'offset': offset,
      'period': period,
      'periodMax': periodMax,
      'periodUnit': periodUnit,
      'timeOfDay': timeOfDay?.map((e) => e).toList(),
      'when': when?.map((e) => e).toList(),
    };
  
  @override
  TimingRepeat copyWith({
    Duration? boundsDuration,
    Period? boundsPeriod,
    Range? boundsRange,
    int? count,
    int? countMax,
    List<String>? dayOfWeek,
    num? duration,
    num? durationMax,
    String? durationUnit,
    List<Extension>? fhirExtension,
    int? frequency,
    int? frequencyMax,
    String? id,
    int? offset,
    num? period,
    num? periodMax,
    String? periodUnit,
    List<String>? timeOfDay,
    List<String>? when,
  }) {
    return TimingRepeat(
      boundsDuration: boundsDuration ?? this.boundsDuration,
      boundsPeriod: boundsPeriod ?? this.boundsPeriod,
      boundsRange: boundsRange ?? this.boundsRange,
      count: count ?? this.count,
      countMax: countMax ?? this.countMax,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      duration: duration ?? this.duration,
      durationMax: durationMax ?? this.durationMax,
      durationUnit: durationUnit ?? this.durationUnit,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      frequency: frequency ?? this.frequency,
      frequencyMax: frequencyMax ?? this.frequencyMax,
      id: id ?? this.id,
      offset: offset ?? this.offset,
      period: period ?? this.period,
      periodMax: periodMax ?? this.periodMax,
      periodUnit: periodUnit ?? this.periodUnit,
      timeOfDay: timeOfDay ?? this.timeOfDay,
      when: when ?? this.when,
    );
  }
}
