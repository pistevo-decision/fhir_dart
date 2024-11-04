part of '../fhir_dart.dart';

/// Actor involved
/// An actor taking a role in an activity  for which it can be assigned some degree of responsibility for the activity taking place.
/// Several agents may be associated (i.e. has some responsibility for an activity) with an activity and vice-versa.
class ProvenanceAgent extends BackboneElement implements FhirResource {
  /// Who the agent is representing
  /// The individual, device, or organization for whom the change was made.
  /// onBehalfOfIdentity should be used when the agent is not a Resource type.
  final Reference? onBehalfOf;

  /// What the agents role was
  /// The function of the agent with respect to the activity. The security role enabling the agent with respect to the activity.
  /// For example: doctor, nurse, clerk, etc.
  final List<CodeableConcept>? role;

  /// How the agent participated
  /// The participation the agent had with respect to the activity.
  /// For example: author, performer, enterer, attester, etc.
  final CodeableConcept? type;

  /// Who participated
  /// The individual, device or organization that participated in the event.
  /// whoIdentity should be used when the agent is not a Resource type.
  final Reference who;
  ProvenanceAgent({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.onBehalfOf,
    this.role,
    this.type,
    required this.who,
  });

  @override
  factory ProvenanceAgent.fromJson(Map<String, dynamic> json) {
    return ProvenanceAgent(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      onBehalfOf: json['onBehalfOf'] != null
          ? Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>)
          : null,
      role: (json['role'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      who: Reference.fromJson(json['who'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'onBehalfOf': onBehalfOf?.toJson(),
        'role': role?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
        'who': who.toJson(),
      };

  @override
  ProvenanceAgent copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? onBehalfOf,
    List<CodeableConcept>? role,
    CodeableConcept? type,
    Reference? who,
  }) {
    return ProvenanceAgent(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      role: role ?? this.role,
      type: type ?? this.type,
      who: who ?? this.who,
    );
  }
}
