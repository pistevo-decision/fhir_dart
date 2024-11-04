part of '../fhir_dart.dart';

 /// What the plan is trying to accomplish
 /// Goals that describe what the activities within the plan are intended to achieve. For example, weight loss, restoring an activity of daily living, obtaining herd immunity via immunization, meeting a process improvement objective, etc.
class PlanDefinitionGoal extends BackboneElement implements FhirResource {
   /// What does the goal address
   /// Identifies problems, conditions, issues, or concerns the goal is intended to address.
  final List<CodeableConcept>? addresses;
   /// E.g. Treatment, dietary, behavioral
   /// Indicates a category the goal falls within.
  final CodeableConcept? category;
   /// Code or text describing the goal
   /// Human-readable and/or coded description of a specific desired objective of care, such as "control blood pressure" or "negotiate an obstacle course" or "dance with child at wedding".
   /// If no code is available, use CodeableConcept.text.
  final CodeableConcept description;
   /// Supporting documentation for the goal
   /// Didactic or other informational resources associated with the goal that provide further supporting information about the goal. Information resources can include inline text commentary and links to web resources.
  final List<RelatedArtifact>? documentation;
   /// high-priority | medium-priority | low-priority
   /// Identifies the expected level of importance associated with reaching/sustaining the defined goal.
  final CodeableConcept? priority;
   /// When goal pursuit begins
   /// The event after which the goal should begin being pursued.
  final CodeableConcept? start;
   /// Target outcome for the goal
   /// Indicates what should be done and within what timeframe.
  final List<PlanDefinitionGoalTarget>? target;
  PlanDefinitionGoal({
    this.addresses,
    this.category,
    required this.description,
    this.documentation,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.priority,
    this.start,
    this.target,
  });
  
  @override
  factory PlanDefinitionGoal.fromJson(Map<String, dynamic> json) {
    return PlanDefinitionGoal(
      addresses: (json['addresses'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      category: json['category'] != null ? CodeableConcept.fromJson(json['category'] as Map<String, dynamic>) : null,
      description: CodeableConcept.fromJson(json['description'] as Map<String, dynamic>),
      documentation: (json['documentation'] as List<dynamic>?)?.map((e) => RelatedArtifact.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      priority: json['priority'] != null ? CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>) : null,
      start: json['start'] != null ? CodeableConcept.fromJson(json['start'] as Map<String, dynamic>) : null,
      target: (json['target'] as List<dynamic>?)?.map((e) => PlanDefinitionGoalTarget.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'addresses': addresses?.map((e) => e.toJson()).toList(),
      'category': category?.toJson(),
      'description': description.toJson(),
      'documentation': documentation?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'priority': priority?.toJson(),
      'start': start?.toJson(),
      'target': target?.map((e) => e.toJson()).toList(),
    };
  
  @override
  PlanDefinitionGoal copyWith({
    List<CodeableConcept>? addresses,
    CodeableConcept? category,
    CodeableConcept? description,
    List<RelatedArtifact>? documentation,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? priority,
    CodeableConcept? start,
    List<PlanDefinitionGoalTarget>? target,
  }) {
    return PlanDefinitionGoal(
      addresses: addresses ?? this.addresses,
      category: category ?? this.category,
      description: description ?? this.description,
      documentation: documentation ?? this.documentation,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      priority: priority ?? this.priority,
      start: start ?? this.start,
      target: target ?? this.target,
    );
  }
}
