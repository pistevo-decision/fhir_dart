part of '../fhir_dart.dart';

/// Actor participating in the resource.
class ExampleScenarioActor extends BackboneElement implements FhirResource {
  /// ID or acronym of the actor
  /// ID or acronym of actor.
  /// should this be called ID or acronym?
  final String actorId;

  /// The description of the actor.
  /// Cardinality: is name and description 1..1?
  final String? description;

  /// The name of the actor as shown in the page.
  /// Cardinality: is name and description 1..1?
  final String? name;

  /// person | entity
  /// The type of actor - person or system.
  final String type; // Possible values: 'person', 'entity'
  ExampleScenarioActor({
    required this.actorId,
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.name,
    required this.type,
  });

  @override
  factory ExampleScenarioActor.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioActor(
      actorId: json['actorId'] as String,
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      type: json['type'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'actorId': actorId,
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'type': type,
      };

  @override
  ExampleScenarioActor copyWith({
    String? actorId,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    String? type,
  }) {
    return ExampleScenarioActor(
      actorId: actorId ?? this.actorId,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }
}
