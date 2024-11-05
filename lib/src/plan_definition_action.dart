part of '../fhir_dart.dart';

/// Action defined by the plan
/// An action or group of actions to be taken as part of the plan.
/// Note that there is overlap between many of the elements defined here and the ActivityDefinition resource. When an ActivityDefinition is referenced (using the definition element), the overlapping elements in the plan override the content of the referenced ActivityDefinition unless otherwise documented in the specific elements. See the PlanDefinition resource for more detailed information.
class PlanDefinitionAction extends BackboneElement implements FhirResource {
  /// A sub-action
  /// Sub actions that are contained within the action. The behavior of this action determines the functionality of the sub-actions. For example, a selection behavior of at-most-one indicates that of the sub-actions, at most one may be chosen as part of realizing the action definition.
  final List<PlanDefinitionAction>? action;

  /// single | multiple
  /// Defines whether the action can be selected multiple times.
  final String? cardinalityBehavior; // Possible values: 'single', 'multiple'
  /// Code representing the meaning of the action or sub-actions
  /// A code that provides meaning for the action or action group. For example, a section may have a LOINC code for the section of a documentation template.
  final List<CodeableConcept>? code;

  /// Whether or not the action is applicable
  /// An expression that describes applicability criteria or start/stop conditions for the action.
  /// When multiple conditions of the same kind are present, the effects are combined using AND semantics, so the overall condition is true only if all the conditions are true.
  final List<PlanDefinitionActionCondition>? condition;

  /// Description of the activity to be performed
  /// A reference to an ActivityDefinition that describes the action to be taken in detail, or a PlanDefinition that describes a series of actions to be taken.
  /// Note that the definition is optional, and if no definition is specified, a dynamicValue with a root ($this) path can be used to define the entire resource dynamically.
  final String? definitionCanonical;

  /// Description of the activity to be performed
  /// A reference to an ActivityDefinition that describes the action to be taken in detail, or a PlanDefinition that describes a series of actions to be taken.
  /// Note that the definition is optional, and if no definition is specified, a dynamicValue with a root ($this) path can be used to define the entire resource dynamically.
  final String? definitionUri;

  /// Brief description of the action
  /// A brief description of the action used to provide a summary to display to the user.
  final String? description;

  /// Supporting documentation for the intended performer of the action
  /// Didactic or other informational resources associated with the action that can be provided to the CDS recipient. Information resources can include inline text commentary and links to web resources.
  final List<RelatedArtifact>? documentation;

  /// Dynamic aspects of the definition
  /// Customizations that should be applied to the statically defined resource. For example, if the dosage of a medication must be computed based on the patient's weight, a customization would be used to specify an expression that calculated the weight, and the path on the resource that would contain the result.
  /// Dynamic values are applied in the order in which they are defined in the PlanDefinition resource. Note that when dynamic values are also specified by a referenced ActivityDefinition, the dynamicValues from the ActivityDefinition are applied first, followed by the dynamicValues specified here. In addition, if both a transform and dynamic values are specific, the dynamic values are applied to the result of the transform.
  final List<PlanDefinitionActionDynamicValue>? dynamicValue;

  /// What goals this action supports
  /// Identifies goals that this action supports. The reference must be to a goal element defined within this plan definition.
  final List<String>? goalId;

  /// Defines the grouping behavior for the action and its children.
  final String?
      groupingBehavior; // Possible values: 'visual-group', 'logical-group', 'sentence-group'
  /// Input data requirements
  /// Defines input data requirements for the action.
  final List<DataRequirement>? input;

  /// Output data definition
  /// Defines the outputs of the action, if any.
  final List<DataRequirement>? output;

  /// Who should participate in the action
  /// Indicates who should participate in performing the action described.
  final List<PlanDefinitionActionParticipant>? participant;

  /// yes | no
  /// Defines whether the action should usually be preselected.
  final String? precheckBehavior; // Possible values: 'yes', 'no'
  /// User-visible prefix for the action (e.g. 1. or A.)
  /// A user-visible prefix for the action.
  final String? prefix;

  /// Indicates how quickly the action should be addressed with respect to other actions.
  final String?
      priority; // Possible values: 'routine', 'urgent', 'asap', 'stat'
  /// Why the action should be performed
  /// A description of why this action is necessary or appropriate.
  /// This is different than the clinical evidence documentation, it's an actual business description of the reason for performing the action.
  final List<CodeableConcept>? reason;

  /// Relationship to another action
  /// A relationship to another action such as "before" or "30-60 minutes after start of".
  /// When an action depends on multiple actions, the meaning is that all actions are dependencies, rather than that any of the actions are a dependency.
  final List<PlanDefinitionActionRelatedAction>? relatedAction;

  /// Defines the required behavior for the action.
  final String?
      requiredBehavior; // Possible values: 'must', 'could', 'must-unless-documented'
  /// Defines the selection behavior for the action and its children.
  final String?
      selectionBehavior; // Possible values: 'any', 'all', 'all-or-none', 'exactly-one', 'at-most-one', 'one-or-more'
  /// Type of individual the action is focused on
  /// A code or group definition that describes the intended subject of the action and its children, if any.
  /// The subject of an action overrides the subject at a parent action or on the root of the PlanDefinition if specified.
  /// In addition, because the subject needs to be resolved during realization, use of subjects in actions (or in the ActivityDefinition referenced by the action) resolves based on the set of subjects supplied in context and by type (i.e. the patient subject would resolve to a resource of type Patient).
  final CodeableConcept? subjectCodeableConcept;

  /// Type of individual the action is focused on
  /// A code or group definition that describes the intended subject of the action and its children, if any.
  /// The subject of an action overrides the subject at a parent action or on the root of the PlanDefinition if specified.
  /// In addition, because the subject needs to be resolved during realization, use of subjects in actions (or in the ActivityDefinition referenced by the action) resolves based on the set of subjects supplied in context and by type (i.e. the patient subject would resolve to a resource of type Patient).
  final Reference? subjectReference;

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

  /// Transform to apply the template
  /// A reference to a StructureMap resource that defines a transform that can be executed to produce the intent resource using the ActivityDefinition instance as the input.
  /// Note that when a referenced ActivityDefinition also defines a transform, the transform specified here generally takes precedence. In addition, if both a transform and dynamic values are specific, the dynamic values are applied to the result of the transform.
  final String? transform;

  /// When the action should be triggered
  /// A description of when the action should be triggered.
  final List<TriggerDefinition>? trigger;

  /// create | update | remove | fire-event
  /// The type of action to perform (create, update, remove).
  final CodeableConcept? type;
  PlanDefinitionAction({
    this.action,
    this.cardinalityBehavior,
    this.code,
    this.condition,
    this.definitionCanonical,
    this.definitionUri,
    this.description,
    this.documentation,
    this.dynamicValue,
    super.fhirExtension,
    this.goalId,
    this.groupingBehavior,
    super.id,
    this.input,
    super.modifierExtension,
    this.output,
    this.participant,
    this.precheckBehavior,
    this.prefix,
    this.priority,
    this.reason,
    this.relatedAction,
    this.requiredBehavior,
    this.selectionBehavior,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.textEquivalent,
    this.timingAge,
    this.timingDateTime,
    this.timingDuration,
    this.timingPeriod,
    this.timingRange,
    this.timingTiming,
    this.title,
    this.transform,
    this.trigger,
    this.type,
  });

  @override
  factory PlanDefinitionAction.fromJson(Map<String, dynamic> json) {
    return PlanDefinitionAction(
      action: (json['action'] as List<dynamic>?)
          ?.map((e) =>
              PlanDefinitionAction.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      cardinalityBehavior: json['cardinalityBehavior'] as String?,
      code: (json['code'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map((e) => PlanDefinitionActionCondition.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      definitionCanonical: json['definitionCanonical'] as String?,
      definitionUri: json['definitionUri'] as String?,
      description: json['description'] as String?,
      documentation: (json['documentation'] as List<dynamic>?)
          ?.map((e) =>
              RelatedArtifact.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      dynamicValue: (json['dynamicValue'] as List<dynamic>?)
          ?.map((e) => PlanDefinitionActionDynamicValue.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      goalId:
          (json['goalId'] as List<dynamic>?)?.map((e) => e as String).toList(),
      groupingBehavior: json['groupingBehavior'] as String?,
      id: json['id'] as String?,
      input: (json['input'] as List<dynamic>?)
          ?.map((e) =>
              DataRequirement.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      output: (json['output'] as List<dynamic>?)
          ?.map((e) =>
              DataRequirement.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      participant: (json['participant'] as List<dynamic>?)
          ?.map((e) => PlanDefinitionActionParticipant.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      precheckBehavior: json['precheckBehavior'] as String?,
      prefix: json['prefix'] as String?,
      priority: json['priority'] as String?,
      reason: (json['reason'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      relatedAction: (json['relatedAction'] as List<dynamic>?)
          ?.map((e) => PlanDefinitionActionRelatedAction.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      requiredBehavior: json['requiredBehavior'] as String?,
      selectionBehavior: json['selectionBehavior'] as String?,
      subjectCodeableConcept: json['subjectCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['subjectCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      subjectReference: json['subjectReference'] != null
          ? Reference.fromJson(
              (json['subjectReference'] as Map).cast<String, dynamic>())
          : null,
      textEquivalent: json['textEquivalent'] as String?,
      timingAge: json['timingAge'] != null
          ? Age.fromJson((json['timingAge'] as Map).cast<String, dynamic>())
          : null,
      timingDateTime: json['timingDateTime'] as String?,
      timingDuration: json['timingDuration'] != null
          ? Duration.fromJson(
              (json['timingDuration'] as Map).cast<String, dynamic>())
          : null,
      timingPeriod: json['timingPeriod'] != null
          ? Period.fromJson(
              (json['timingPeriod'] as Map).cast<String, dynamic>())
          : null,
      timingRange: json['timingRange'] != null
          ? Range.fromJson((json['timingRange'] as Map).cast<String, dynamic>())
          : null,
      timingTiming: json['timingTiming'] != null
          ? Timing.fromJson(
              (json['timingTiming'] as Map).cast<String, dynamic>())
          : null,
      title: json['title'] as String?,
      transform: json['transform'] as String?,
      trigger: (json['trigger'] as List<dynamic>?)
          ?.map((e) =>
              TriggerDefinition.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'action': action?.map((e) => e.toJson()).toList(),
        'cardinalityBehavior': cardinalityBehavior,
        'code': code?.map((e) => e.toJson()).toList(),
        'condition': condition?.map((e) => e.toJson()).toList(),
        'definitionCanonical': definitionCanonical,
        'definitionUri': definitionUri,
        'description': description,
        'documentation': documentation?.map((e) => e.toJson()).toList(),
        'dynamicValue': dynamicValue?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'goalId': goalId?.map((e) => e).toList(),
        'groupingBehavior': groupingBehavior,
        'id': id,
        'input': input?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'output': output?.map((e) => e.toJson()).toList(),
        'participant': participant?.map((e) => e.toJson()).toList(),
        'precheckBehavior': precheckBehavior,
        'prefix': prefix,
        'priority': priority,
        'reason': reason?.map((e) => e.toJson()).toList(),
        'relatedAction': relatedAction?.map((e) => e.toJson()).toList(),
        'requiredBehavior': requiredBehavior,
        'selectionBehavior': selectionBehavior,
        'subjectCodeableConcept': subjectCodeableConcept?.toJson(),
        'subjectReference': subjectReference?.toJson(),
        'textEquivalent': textEquivalent,
        'timingAge': timingAge?.toJson(),
        'timingDateTime': timingDateTime,
        'timingDuration': timingDuration?.toJson(),
        'timingPeriod': timingPeriod?.toJson(),
        'timingRange': timingRange?.toJson(),
        'timingTiming': timingTiming?.toJson(),
        'title': title,
        'transform': transform,
        'trigger': trigger?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
      };

  @override
  PlanDefinitionAction copyWith({
    List<PlanDefinitionAction>? action,
    String? cardinalityBehavior,
    List<CodeableConcept>? code,
    List<PlanDefinitionActionCondition>? condition,
    String? definitionCanonical,
    String? definitionUri,
    String? description,
    List<RelatedArtifact>? documentation,
    List<PlanDefinitionActionDynamicValue>? dynamicValue,
    List<Extension>? fhirExtension,
    List<String>? goalId,
    String? groupingBehavior,
    String? id,
    List<DataRequirement>? input,
    List<Extension>? modifierExtension,
    List<DataRequirement>? output,
    List<PlanDefinitionActionParticipant>? participant,
    String? precheckBehavior,
    String? prefix,
    String? priority,
    List<CodeableConcept>? reason,
    List<PlanDefinitionActionRelatedAction>? relatedAction,
    String? requiredBehavior,
    String? selectionBehavior,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    String? textEquivalent,
    Age? timingAge,
    String? timingDateTime,
    Duration? timingDuration,
    Period? timingPeriod,
    Range? timingRange,
    Timing? timingTiming,
    String? title,
    String? transform,
    List<TriggerDefinition>? trigger,
    CodeableConcept? type,
  }) {
    return PlanDefinitionAction(
      action: action ?? this.action,
      cardinalityBehavior: cardinalityBehavior ?? this.cardinalityBehavior,
      code: code ?? this.code,
      condition: condition ?? this.condition,
      definitionCanonical: definitionCanonical ?? this.definitionCanonical,
      definitionUri: definitionUri ?? this.definitionUri,
      description: description ?? this.description,
      documentation: documentation ?? this.documentation,
      dynamicValue: dynamicValue ?? this.dynamicValue,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      goalId: goalId ?? this.goalId,
      groupingBehavior: groupingBehavior ?? this.groupingBehavior,
      id: id ?? this.id,
      input: input ?? this.input,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      output: output ?? this.output,
      participant: participant ?? this.participant,
      precheckBehavior: precheckBehavior ?? this.precheckBehavior,
      prefix: prefix ?? this.prefix,
      priority: priority ?? this.priority,
      reason: reason ?? this.reason,
      relatedAction: relatedAction ?? this.relatedAction,
      requiredBehavior: requiredBehavior ?? this.requiredBehavior,
      selectionBehavior: selectionBehavior ?? this.selectionBehavior,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      textEquivalent: textEquivalent ?? this.textEquivalent,
      timingAge: timingAge ?? this.timingAge,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      timingDuration: timingDuration ?? this.timingDuration,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      timingRange: timingRange ?? this.timingRange,
      timingTiming: timingTiming ?? this.timingTiming,
      title: title ?? this.title,
      transform: transform ?? this.transform,
      trigger: trigger ?? this.trigger,
      type: type ?? this.type,
    );
  }
}
