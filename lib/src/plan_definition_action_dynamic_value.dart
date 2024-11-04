part of '../fhir_dart.dart';

 /// Dynamic aspects of the definition
 /// Customizations that should be applied to the statically defined resource. For example, if the dosage of a medication must be computed based on the patient's weight, a customization would be used to specify an expression that calculated the weight, and the path on the resource that would contain the result.
 /// Dynamic values are applied in the order in which they are defined in the PlanDefinition resource. Note that when dynamic values are also specified by a referenced ActivityDefinition, the dynamicValues from the ActivityDefinition are applied first, followed by the dynamicValues specified here. In addition, if both a transform and dynamic values are specific, the dynamic values are applied to the result of the transform.
class PlanDefinitionActionDynamicValue extends BackboneElement implements FhirResource {
   /// An expression that provides the dynamic value for the customization
   /// An expression specifying the value of the customized element.
   /// The expression may be inlined or may be a reference to a named expression within a logic library referenced by the library element.
  final Expression? expression;
   /// The path to the element to be set dynamically
   /// The path to the element to be customized. This is the path on the resource that will hold the result of the calculation defined by the expression. The specified path SHALL be a FHIRPath resolveable on the specified target type of the ActivityDefinition, and SHALL consist only of identifiers, constant indexers, and a restricted subset of functions. The path is allowed to contain qualifiers (.) to traverse sub-elements, as well as indexers ([x]) to traverse multiple-cardinality sub-elements (see the [Simple FHIRPath Profile](fhirpath.html#simple) for full details).
   /// To specify the path to the current action being realized, the %action environment variable is available in this path. For example, to specify the description element of the target action, the path would be %action.description. The path attribute contains a [Simple FHIRPath Subset](fhirpath.html#simple) that allows path traversal, but not calculation.
  final String? path;
  PlanDefinitionActionDynamicValue({
    this.expression,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.path,
  });
  
  @override
  factory PlanDefinitionActionDynamicValue.fromJson(Map<String, dynamic> json) {
    return PlanDefinitionActionDynamicValue(
      expression: json['expression'] != null ? Expression.fromJson(json['expression'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      path: json['path'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'expression': expression?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'path': path,
    };
  
  @override
  PlanDefinitionActionDynamicValue copyWith({
    Expression? expression,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? path,
  }) {
    return PlanDefinitionActionDynamicValue(
      expression: expression ?? this.expression,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      path: path ?? this.path,
    );
  }
}
