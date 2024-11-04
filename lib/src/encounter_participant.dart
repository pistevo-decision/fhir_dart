part of '../fhir_dart.dart';

/// List of participants involved in the encounter
/// The list of people responsible for providing the service.
class EncounterParticipant extends BackboneElement implements FhirResource {
  /// Persons involved in the encounter other than the patient.
  final Reference? individual;

  /// Period of time during the encounter that the participant participated
  /// The period of time that the specified participant participated in the encounter. These can overlap or be sub-sets of the overall encounter's period.
  final Period? period;

  /// Role of participant in encounter.
  /// The participant type indicates how an individual participates in an encounter. It includes non-practitioner participants, and for practitioners this is to describe the action type in the context of this encounter (e.g. Admitting Dr, Attending Dr, Translator, Consulting Dr). This is different to the practitioner roles which are functional roles, derived from terms of employment, education, licensing, etc.
  final List<CodeableConcept>? type;
  EncounterParticipant({
    super.fhirExtension,
    super.id,
    this.individual,
    super.modifierExtension,
    this.period,
    this.type,
  });

  @override
  factory EncounterParticipant.fromJson(Map<String, dynamic> json) {
    return EncounterParticipant(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      individual: json['individual'] != null
          ? Reference.fromJson(json['individual'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'individual': individual?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'period': period?.toJson(),
        'type': type?.map((e) => e.toJson()).toList(),
      };

  @override
  EncounterParticipant copyWith({
    List<Extension>? fhirExtension,
    String? id,
    Reference? individual,
    List<Extension>? modifierExtension,
    Period? period,
    List<CodeableConcept>? type,
  }) {
    return EncounterParticipant(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      individual: individual ?? this.individual,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      type: type ?? this.type,
    );
  }
}
