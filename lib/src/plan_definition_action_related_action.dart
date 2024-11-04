part of '../fhir_dart.dart';

/// Relationship to another action
/// A relationship to another action such as "before" or "30-60 minutes after start of".
/// When an action depends on multiple actions, the meaning is that all actions are dependencies, rather than that any of the actions are a dependency.
class PlanDefinitionActionRelatedAction extends BackboneElement
    implements FhirResource {
  /// What action is this related to
  /// The element id of the related action.
  final String actionId;

  /// Time offset for the relationship
  /// A duration or range of durations to apply to the relationship. For example, 30-60 minutes before.
  final Duration? offsetDuration;

  /// Time offset for the relationship
  /// A duration or range of durations to apply to the relationship. For example, 30-60 minutes before.
  final Range? offsetRange;

  /// The relationship of this action to the related action.
  final String
      relationship; // Possible values: 'before-start', 'before', 'before-end', 'concurrent-with-start', 'concurrent', 'concurrent-with-end', 'after-start', 'after', 'after-end'
  PlanDefinitionActionRelatedAction({
    required this.actionId,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.offsetDuration,
    this.offsetRange,
    required this.relationship,
  });

  @override
  factory PlanDefinitionActionRelatedAction.fromJson(
      Map<String, dynamic> json) {
    return PlanDefinitionActionRelatedAction(
      actionId: json['actionId'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      offsetDuration: json['offsetDuration'] != null
          ? Duration.fromJson(json['offsetDuration'] as Map<String, dynamic>)
          : null,
      offsetRange: json['offsetRange'] != null
          ? Range.fromJson(json['offsetRange'] as Map<String, dynamic>)
          : null,
      relationship: json['relationship'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'actionId': actionId,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'offsetDuration': offsetDuration?.toJson(),
        'offsetRange': offsetRange?.toJson(),
        'relationship': relationship,
      };

  @override
  PlanDefinitionActionRelatedAction copyWith({
    String? actionId,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Duration? offsetDuration,
    Range? offsetRange,
    String? relationship,
  }) {
    return PlanDefinitionActionRelatedAction(
      actionId: actionId ?? this.actionId,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      offsetDuration: offsetDuration ?? this.offsetDuration,
      offsetRange: offsetRange ?? this.offsetRange,
      relationship: relationship ?? this.relationship,
    );
  }
}
