part of '../fhir_dart.dart';

/// Whether or not the billing code is applicable
/// Expressions that describe applicability criteria for the billing code.
/// The applicability conditions can be used to ascertain whether a billing item is allowed in a specific context. E.g. some billing codes may only be applicable in out-patient settings, only to male/female patients or only to children.
class ChargeItemDefinitionApplicability extends BackboneElement
    implements FhirResource {
  /// Natural language description of the condition
  /// A brief, natural language description of the condition that effectively communicates the intended semantics.
  final String? description;

  /// Boolean-valued expression
  /// An expression that returns true or false, indicating whether the condition is satisfied. When using FHIRPath expressions, the %context environment variable must be replaced at runtime with the ChargeItem resource to which this definition is applied.
  /// Please note that FHIRPath Expressions can only be evaluated in the scope of the current ChargeItem resource to which this definition is being applied.
  /// FHIRPath expressions can traverse into other resources linked from the ChargeItem resource, however, testing rules such as that a billing code may be billed only once per encounter need a wider scope. In such scenarios, CQL may be the appropriate choice.
  final String? expression;

  /// Language of the expression
  /// The media type of the language for the expression, e.g. "text/cql" for Clinical Query Language expressions or "text/fhirpath" for FHIRPath expressions.
  final String? language;
  ChargeItemDefinitionApplicability({
    this.description,
    this.expression,
    super.fhirExtension,
    super.id,
    this.language,
    super.modifierExtension,
  });

  @override
  factory ChargeItemDefinitionApplicability.fromJson(
      Map<String, dynamic> json) {
    return ChargeItemDefinitionApplicability(
      description: json['description'] as String?,
      expression: json['expression'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      language: json['language'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'expression': expression,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'language': language,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  ChargeItemDefinitionApplicability copyWith({
    String? description,
    String? expression,
    List<Extension>? fhirExtension,
    String? id,
    String? language,
    List<Extension>? modifierExtension,
  }) {
    return ChargeItemDefinitionApplicability(
      description: description ?? this.description,
      expression: expression ?? this.expression,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      language: language ?? this.language,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
