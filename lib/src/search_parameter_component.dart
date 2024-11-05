part of '../fhir_dart.dart';

/// For Composite resources to define the parts
/// Used to define the parts of a composite search parameter.
class SearchParameterComponent extends BackboneElement implements FhirResource {
  /// Defines how the part works
  /// The definition of the search parameter that describes this part.
  final String definition;

  /// Subexpression relative to main expression
  /// A sub-expression that defines how to extract values for this component from the output of the main SearchParameter.expression.
  /// This expression overrides the expression in the definition and extracts the index values from the outcome of the composite expression.
  final String expression;
  SearchParameterComponent({
    required this.definition,
    required this.expression,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory SearchParameterComponent.fromJson(Map<String, dynamic> json) {
    return SearchParameterComponent(
      definition: json['definition'] as String,
      expression: json['expression'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'definition': definition,
        'expression': expression,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  SearchParameterComponent copyWith({
    String? definition,
    String? expression,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return SearchParameterComponent(
      definition: definition ?? this.definition,
      expression: expression ?? this.expression,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
