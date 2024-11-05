part of '../fhir_dart.dart';

/// List of past encounter classes
/// The class history permits the tracking of the encounters transitions without needing to go  through the resource history.  This would be used for a case where an admission starts of as an emergency encounter, then transitions into an inpatient scenario. Doing this and not restarting a new encounter ensures that any lab/diagnostic results can more easily follow the patient and not require re-processing and not get lost or cancelled during a kind of discharge from emergency to inpatient.
class EncounterClassHistory extends BackboneElement implements FhirResource {
  /// inpatient | outpatient | ambulatory | emergency +.
  final Coding fhirClass;

  /// The time that the episode was in the specified class.
  final Period period;
  EncounterClassHistory({
    required this.fhirClass,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.period,
  });

  @override
  factory EncounterClassHistory.fromJson(Map<String, dynamic> json) {
    return EncounterClassHistory(
      fhirClass:
          Coding.fromJson((json['class'] as Map).cast<String, dynamic>()),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      period: Period.fromJson((json['period'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'class': fhirClass.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'period': period.toJson(),
      };

  @override
  EncounterClassHistory copyWith({
    Coding? fhirClass,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Period? period,
  }) {
    return EncounterClassHistory(
      fhirClass: fhirClass ?? this.fhirClass,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
    );
  }
}
