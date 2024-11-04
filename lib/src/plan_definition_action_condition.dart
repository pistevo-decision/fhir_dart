part of '../fhir_dart.dart';

 /// Whether or not the action is applicable
 /// An expression that describes applicability criteria or start/stop conditions for the action.
 /// When multiple conditions of the same kind are present, the effects are combined using AND semantics, so the overall condition is true only if all the conditions are true.
class PlanDefinitionActionCondition extends BackboneElement implements FhirResource {
   /// Boolean-valued expression
   /// An expression that returns true or false, indicating whether the condition is satisfied.
   /// The expression may be inlined or may be a reference to a named expression within a logic library referenced by the library element.
  final Expression? expression;
   /// The kind of condition.
   /// Applicability criteria are used to determine immediate applicability when a plan definition is applied to a given context. Start and stop criteria are carried through application and used to describe enter/exit criteria for an action.
  final String kind; // Possible values: 'applicability', 'start', 'stop'
  PlanDefinitionActionCondition({
    this.expression,
    super.fhirExtension,
    super.id,
    required this.kind,
    super.modifierExtension,
  });
  
  @override
  factory PlanDefinitionActionCondition.fromJson(Map<String, dynamic> json) {
    return PlanDefinitionActionCondition(
      expression: json['expression'] != null ? Expression.fromJson(json['expression'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      kind: json['kind'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'expression': expression?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'kind': kind,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  PlanDefinitionActionCondition copyWith({
    Expression? expression,
    List<Extension>? fhirExtension,
    String? id,
    String? kind,
    List<Extension>? modifierExtension,
  }) {
    return PlanDefinitionActionCondition(
      expression: expression ?? this.expression,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      kind: kind ?? this.kind,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
