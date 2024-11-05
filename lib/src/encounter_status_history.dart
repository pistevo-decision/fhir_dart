part of '../fhir_dart.dart';

/// List of past encounter statuses
/// The status history permits the encounter resource to contain the status history without needing to read through the historical versions of the resource, or even have the server store them.
/// The current status is always found in the current version of the resource, not the status history.
class EncounterStatusHistory extends BackboneElement implements FhirResource {
  /// The time that the episode was in the specified status.
  final Period period;

  /// planned | arrived | triaged | in-progress | onleave | finished | cancelled +.
  final String
      status; // Possible values: 'planned', 'arrived', 'triaged', 'in-progress', 'onleave', 'finished', 'cancelled', 'entered-in-error', 'unknown'
  EncounterStatusHistory({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.period,
    required this.status,
  });

  @override
  factory EncounterStatusHistory.fromJson(Map<String, dynamic> json) {
    return EncounterStatusHistory(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      period: Period.fromJson((json['period'] as Map).cast<String, dynamic>()),
      status: json['status'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'period': period.toJson(),
        'status': status,
      };

  @override
  EncounterStatusHistory copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Period? period,
    String? status,
  }) {
    return EncounterStatusHistory(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      status: status ?? this.status,
    );
  }
}
