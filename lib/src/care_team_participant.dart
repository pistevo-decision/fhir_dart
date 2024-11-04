part of '../fhir_dart.dart';

/// Members of the team
/// Identifies all people and organizations who are expected to be involved in the care team.
class CareTeamParticipant extends BackboneElement implements FhirResource {
  /// Who is involved
  /// The specific person or organization who is participating/expected to participate in the care team.
  /// Patient only needs to be listed if they have a role other than "subject of care".
  /// Member is optional because some participants may be known only by their role, particularly in draft plans.
  final Reference? member;

  /// Organization of the practitioner
  /// The organization of the practitioner.
  final Reference? onBehalfOf;

  /// Time period of participant
  /// Indicates when the specific member or organization did (or is intended to) come into effect and end.
  final Period? period;

  /// Type of involvement
  /// Indicates specific responsibility of an individual within the care team, such as "Primary care physician", "Trained social worker counselor", "Caregiver", etc.
  /// Roles may sometimes be inferred by type of Practitioner.  These are relationships that hold only within the context of the care team.  General relationships should be handled as properties of the Patient resource directly.
  final List<CodeableConcept>? role;
  CareTeamParticipant({
    super.fhirExtension,
    super.id,
    this.member,
    super.modifierExtension,
    this.onBehalfOf,
    this.period,
    this.role,
  });

  @override
  factory CareTeamParticipant.fromJson(Map<String, dynamic> json) {
    return CareTeamParticipant(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      member: json['member'] != null
          ? Reference.fromJson(json['member'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      onBehalfOf: json['onBehalfOf'] != null
          ? Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>)
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      role: (json['role'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'member': member?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'onBehalfOf': onBehalfOf?.toJson(),
        'period': period?.toJson(),
        'role': role?.map((e) => e.toJson()).toList(),
      };

  @override
  CareTeamParticipant copyWith({
    List<Extension>? fhirExtension,
    String? id,
    Reference? member,
    List<Extension>? modifierExtension,
    Reference? onBehalfOf,
    Period? period,
    List<CodeableConcept>? role,
  }) {
    return CareTeamParticipant(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      member: member ?? this.member,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      period: period ?? this.period,
      role: role ?? this.role,
    );
  }
}
