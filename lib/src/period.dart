part of '../fhir_dart.dart';

 /// A Period specifies a range of time; the context of use will specify whether the entire range applies (e.g. "the patient was an inpatient of the hospital for this time range") or one value from the range applies (e.g. "give to the patient between these two times").
 /// Period is not used for a duration (a measure of elapsed time). See [Duration](datatypes.html#Duration).
 /// Base StructureDefinition for Period Type: A time period defined by a start and end date and optionally time.
class Period extends Element implements FhirResource {
   /// End time with inclusive boundary, if not ongoing
   /// The end of the period. If the end of the period is missing, it means no end was known or planned at the time the instance was created. The start may be in the past, and the end date in the future, which means that period is expected/planned to end at that time.
   /// The high value includes any matching date/time. i.e. 2012-02-03T10:00:00 is in a period that has an end value of 2012-02-03.
  final String? end;
   /// Starting time with inclusive boundary
   /// The start of the period. The boundary is inclusive.
   /// If the low element is missing, the meaning is that the low boundary is not known.
  final String? start;
  Period({
    this.end,
    super.fhirExtension,
    super.id,
    this.start,
  });
  
  @override
  factory Period.fromJson(Map<String, dynamic> json) {
    return Period(
      end: json['end'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      start: json['start'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'end': end,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'start': start,
    };
  
  @override
  Period copyWith({
    String? end,
    List<Extension>? fhirExtension,
    String? id,
    String? start,
  }) {
    return Period(
      end: end ?? this.end,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      start: start ?? this.start,
    );
  }
}
