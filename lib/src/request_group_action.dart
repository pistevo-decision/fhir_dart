part of '../fhir_dart.dart';

/// Proposed actions, if any
/// The actions, if any, produced by the evaluation of the artifact.
class RequestGroupAction extends BackboneElement implements FhirResource {
  /// Sub actions.
  final List<RequestGroupAction>? action;

  /// single | multiple
  /// Defines whether the action can be selected multiple times.
  final String? cardinalityBehavior; // Possible values: 'single', 'multiple'
  /// Code representing the meaning of the action or sub-actions
  /// A code that provides meaning for the action or action group. For example, a section may have a LOINC code for a section of a documentation template.
  final List<CodeableConcept>? code;

  /// Whether or not the action is applicable
  /// An expression that describes applicability criteria, or start/stop conditions for the action.
  /// When multiple conditions of the same kind are present, the effects are combined using AND semantics, so the overall condition is true only if all of the conditions are true.
  final List<RequestGroupActionCondition>? condition;

  /// Short description of the action
  /// A short description of the action used to provide a summary to display to the user.
  final String? description;

  /// Supporting documentation for the intended performer of the action
  /// Didactic or other informational resources associated with the action that can be provided to the CDS recipient. Information resources can include inline text commentary and links to web resources.
  final List<RelatedArtifact>? documentation;

  /// Defines the grouping behavior for the action and its children.
  final String?
      groupingBehavior; // Possible values: 'visual-group', 'logical-group', 'sentence-group'
  /// Who should perform the action
  /// The participant that should perform or be responsible for this action.
  final List<Reference>? participant;

  /// yes | no
  /// Defines whether the action should usually be preselected.
  final String? precheckBehavior; // Possible values: 'yes', 'no'
  /// User-visible prefix for the action (e.g. 1. or A.)
  /// A user-visible prefix for the action.
  final String? prefix;

  /// Indicates how quickly the action should be addressed with respect to other actions.
  final String?
      priority; // Possible values: 'routine', 'urgent', 'asap', 'stat'
  /// Relationship to another action
  /// A relationship to another action such as "before" or "30-60 minutes after start of".
  final List<RequestGroupActionRelatedAction>? relatedAction;

  /// Defines expectations around whether an action is required.
  final String?
      requiredBehavior; // Possible values: 'must', 'could', 'must-unless-documented'
  /// The target of the action
  /// The resource that is the target of the action (e.g. CommunicationRequest).
  /// The target resource SHALL be a [Request](request.html) resource with a Request.intent set to "option".
  final Reference? resource;

  /// Defines the selection behavior for the action and its children.
  final String?
      selectionBehavior; // Possible values: 'any', 'all', 'all-or-none', 'exactly-one', 'at-most-one', 'one-or-more'
  /// Static text equivalent of the action, used if the dynamic aspects cannot be interpreted by the receiving system
  /// A text equivalent of the action to be performed. This provides a human-interpretable description of the action when the definition is consumed by a system that might not be capable of interpreting it dynamically.
  final String? textEquivalent;

  /// When the action should take place
  /// An optional value describing when the action should be performed.
  final Age? timingAge;

  /// When the action should take place
  /// An optional value describing when the action should be performed.
  final String? timingDateTime;

  /// When the action should take place
  /// An optional value describing when the action should be performed.
  final Duration? timingDuration;

  /// When the action should take place
  /// An optional value describing when the action should be performed.
  final Period? timingPeriod;

  /// When the action should take place
  /// An optional value describing when the action should be performed.
  final Range? timingRange;

  /// When the action should take place
  /// An optional value describing when the action should be performed.
  final Timing? timingTiming;

  /// User-visible title
  /// The title of the action displayed to a user.
  final String? title;

  /// create | update | remove | fire-event
  /// The type of action to perform (create, update, remove).
  final CodeableConcept? type;
  RequestGroupAction({
    this.action,
    this.cardinalityBehavior,
    this.code,
    this.condition,
    this.description,
    this.documentation,
    super.fhirExtension,
    this.groupingBehavior,
    super.id,
    super.modifierExtension,
    this.participant,
    this.precheckBehavior,
    this.prefix,
    this.priority,
    this.relatedAction,
    this.requiredBehavior,
    this.resource,
    this.selectionBehavior,
    this.textEquivalent,
    this.timingAge,
    this.timingDateTime,
    this.timingDuration,
    this.timingPeriod,
    this.timingRange,
    this.timingTiming,
    this.title,
    this.type,
  });

  @override
  factory RequestGroupAction.fromJson(Map<String, dynamic> json) {
    return RequestGroupAction(
      action: (json['action'] as List<dynamic>?)
          ?.map((e) => RequestGroupAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      cardinalityBehavior: json['cardinalityBehavior'] as String?,
      code: (json['code'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map((e) =>
              RequestGroupActionCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      documentation: (json['documentation'] as List<dynamic>?)
          ?.map((e) => RelatedArtifact.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupingBehavior: json['groupingBehavior'] as String?,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      participant: (json['participant'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      precheckBehavior: json['precheckBehavior'] as String?,
      prefix: json['prefix'] as String?,
      priority: json['priority'] as String?,
      relatedAction: (json['relatedAction'] as List<dynamic>?)
          ?.map((e) => RequestGroupActionRelatedAction.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      requiredBehavior: json['requiredBehavior'] as String?,
      resource: json['resource'] != null
          ? Reference.fromJson(json['resource'] as Map<String, dynamic>)
          : null,
      selectionBehavior: json['selectionBehavior'] as String?,
      textEquivalent: json['textEquivalent'] as String?,
      timingAge: json['timingAge'] != null
          ? Age.fromJson(json['timingAge'] as Map<String, dynamic>)
          : null,
      timingDateTime: json['timingDateTime'] as String?,
      timingDuration: json['timingDuration'] != null
          ? Duration.fromJson(json['timingDuration'] as Map<String, dynamic>)
          : null,
      timingPeriod: json['timingPeriod'] != null
          ? Period.fromJson(json['timingPeriod'] as Map<String, dynamic>)
          : null,
      timingRange: json['timingRange'] != null
          ? Range.fromJson(json['timingRange'] as Map<String, dynamic>)
          : null,
      timingTiming: json['timingTiming'] != null
          ? Timing.fromJson(json['timingTiming'] as Map<String, dynamic>)
          : null,
      title: json['title'] as String?,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'action': action?.map((e) => e.toJson()).toList(),
        'cardinalityBehavior': cardinalityBehavior,
        'code': code?.map((e) => e.toJson()).toList(),
        'condition': condition?.map((e) => e.toJson()).toList(),
        'description': description,
        'documentation': documentation?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'groupingBehavior': groupingBehavior,
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'participant': participant?.map((e) => e.toJson()).toList(),
        'precheckBehavior': precheckBehavior,
        'prefix': prefix,
        'priority': priority,
        'relatedAction': relatedAction?.map((e) => e.toJson()).toList(),
        'requiredBehavior': requiredBehavior,
        'resource': resource?.toJson(),
        'selectionBehavior': selectionBehavior,
        'textEquivalent': textEquivalent,
        'timingAge': timingAge?.toJson(),
        'timingDateTime': timingDateTime,
        'timingDuration': timingDuration?.toJson(),
        'timingPeriod': timingPeriod?.toJson(),
        'timingRange': timingRange?.toJson(),
        'timingTiming': timingTiming?.toJson(),
        'title': title,
        'type': type?.toJson(),
      };

  @override
  RequestGroupAction copyWith({
    List<RequestGroupAction>? action,
    String? cardinalityBehavior,
    List<CodeableConcept>? code,
    List<RequestGroupActionCondition>? condition,
    String? description,
    List<RelatedArtifact>? documentation,
    List<Extension>? fhirExtension,
    String? groupingBehavior,
    String? id,
    List<Extension>? modifierExtension,
    List<Reference>? participant,
    String? precheckBehavior,
    String? prefix,
    String? priority,
    List<RequestGroupActionRelatedAction>? relatedAction,
    String? requiredBehavior,
    Reference? resource,
    String? selectionBehavior,
    String? textEquivalent,
    Age? timingAge,
    String? timingDateTime,
    Duration? timingDuration,
    Period? timingPeriod,
    Range? timingRange,
    Timing? timingTiming,
    String? title,
    CodeableConcept? type,
  }) {
    return RequestGroupAction(
      action: action ?? this.action,
      cardinalityBehavior: cardinalityBehavior ?? this.cardinalityBehavior,
      code: code ?? this.code,
      condition: condition ?? this.condition,
      description: description ?? this.description,
      documentation: documentation ?? this.documentation,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      groupingBehavior: groupingBehavior ?? this.groupingBehavior,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      participant: participant ?? this.participant,
      precheckBehavior: precheckBehavior ?? this.precheckBehavior,
      prefix: prefix ?? this.prefix,
      priority: priority ?? this.priority,
      relatedAction: relatedAction ?? this.relatedAction,
      requiredBehavior: requiredBehavior ?? this.requiredBehavior,
      resource: resource ?? this.resource,
      selectionBehavior: selectionBehavior ?? this.selectionBehavior,
      textEquivalent: textEquivalent ?? this.textEquivalent,
      timingAge: timingAge ?? this.timingAge,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      timingDuration: timingDuration ?? this.timingDuration,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      timingRange: timingRange ?? this.timingRange,
      timingTiming: timingTiming ?? this.timingTiming,
      title: title ?? this.title,
      type: type ?? this.type,
    );
  }
}
