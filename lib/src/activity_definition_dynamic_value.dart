part of '../fhir_dart.dart';

/// Dynamic aspects of the definition
/// Dynamic values that will be evaluated to produce values for elements of the resulting resource. For example, if the dosage of a medication must be computed based on the patient's weight, a dynamic value would be used to specify an expression that calculated the weight, and the path on the request resource that would contain the result.
/// Dynamic values are applied in the order in which they are defined in the ActivityDefinition. Note that if both a transform and dynamic values are specified, the dynamic values will be applied to the result of the transform.
class ActivityDefinitionDynamicValue extends BackboneElement
    implements FhirResource {
  /// An expression that provides the dynamic value for the customization
  /// An expression specifying the value of the customized element.
  /// The expression may be inlined, or may be a reference to a named expression within a logic library referenced by the library element.
  final Expression expression;

  /// The path to the element to be set dynamically
  /// The path to the element to be customized. This is the path on the resource that will hold the result of the calculation defined by the expression. The specified path SHALL be a FHIRPath resolveable on the specified target type of the ActivityDefinition, and SHALL consist only of identifiers, constant indexers, and a restricted subset of functions. The path is allowed to contain qualifiers (.) to traverse sub-elements, as well as indexers ([x]) to traverse multiple-cardinality sub-elements (see the [Simple FHIRPath Profile](fhirpath.html#simple) for full details).
  /// The path attribute contains a [Simple FHIRPath Subset](fhirpath.html#simple) that allows path traversal, but not calculation.
  final String path;
  ActivityDefinitionDynamicValue({
    required this.expression,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.path,
  });

  @override
  factory ActivityDefinitionDynamicValue.fromJson(Map<String, dynamic> json) {
    return ActivityDefinitionDynamicValue(
      expression:
          Expression.fromJson(json['expression'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'expression': expression.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'path': path,
      };

  @override
  ActivityDefinitionDynamicValue copyWith({
    Expression? expression,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? path,
  }) {
    return ActivityDefinitionDynamicValue(
      expression: expression ?? this.expression,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      path: path ?? this.path,
    );
  }
}
