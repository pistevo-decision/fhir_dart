part of '../fhir_dart.dart';

 /// Past list of status codes (the current status may be included to cover the start date of the status)
 /// The history of statuses that the EpisodeOfCare has been through (without requiring processing the history of the resource).
class EpisodeOfCareStatusHistory extends BackboneElement implements FhirResource {
   /// Duration the EpisodeOfCare was in the specified status
   /// The period during this EpisodeOfCare that the specific status applied.
  final Period period;
   /// planned | waitlist | active | onhold | finished | cancelled.
  final String status; // Possible values: 'planned', 'waitlist', 'active', 'onhold', 'finished', 'cancelled', 'entered-in-error'
  EpisodeOfCareStatusHistory({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.period,
    required this.status,
  });
  
  @override
  factory EpisodeOfCareStatusHistory.fromJson(Map<String, dynamic> json) {
    return EpisodeOfCareStatusHistory(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      period: Period.fromJson(json['period'] as Map<String, dynamic>),
      status: json['status'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'period': period.toJson(),
      'status': status,
    };
  
  @override
  EpisodeOfCareStatusHistory copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Period? period,
    String? status,
  }) {
    return EpisodeOfCareStatusHistory(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      status: status ?? this.status,
    );
  }
}
