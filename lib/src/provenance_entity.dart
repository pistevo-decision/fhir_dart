part of '../fhir_dart.dart';

 /// An entity used in this activity.
class ProvenanceEntity extends BackboneElement implements FhirResource {
   /// Entity is attributed to this agent
   /// The entity is attributed to an agent to express the agent's responsibility for that entity, possibly along with other agents. This description can be understood as shorthand for saying that the agent was responsible for the activity which generated the entity.
   /// A usecase where one Provenance.entity.agent is used where the Entity that was used in the creation/updating of the Target, is not in the context of the same custodianship as the Target, and thus the meaning of Provenance.entity.agent is to say that the entity referenced is managed elsewhere and that this Agent provided access to it.  This would be similar to where the Entity being referenced is managed outside FHIR, such as through HL7 v2, v3, or XDS. This might be where the Entity being referenced is managed in another FHIR resource server. Thus it explains the Provenance of that Entity's use in the context of this Provenance activity.
  final List<ProvenanceAgent>? agent;
   /// How the entity was used during the activity.
  final String role; // Possible values: 'derivation', 'revision', 'quotation', 'source', 'removal'
   /// Identity of entity
   /// Identity of the  Entity used. May be a logical or physical uri and maybe absolute or relative.
   /// whatIdentity should be used for entities that are not a Resource type.
  final Reference what;
  ProvenanceEntity({
    this.agent,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.role,
    required this.what,
  });
  
  @override
  factory ProvenanceEntity.fromJson(Map<String, dynamic> json) {
    return ProvenanceEntity(
      agent: (json['agent'] as List<dynamic>?)?.map((e) => ProvenanceAgent.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      role: json['role'] as String,
      what: Reference.fromJson(json['what'] as Map<String, dynamic>),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'agent': agent?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'role': role,
      'what': what.toJson(),
    };
  
  @override
  ProvenanceEntity copyWith({
    List<ProvenanceAgent>? agent,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? role,
    Reference? what,
  }) {
    return ProvenanceEntity(
      agent: agent ?? this.agent,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      what: what ?? this.what,
    );
  }
}
