part of '../fhir_dart.dart';

/// Base StructureDefinition for Expression Type: A expression that is evaluated in a specified context and returns a value. The context of use of the expression must specify the context in which the expression is evaluated, and how the result of the expression is used.
class Expression extends Element implements FhirResource {
  /// Natural language description of the condition
  /// A brief, natural language description of the condition that effectively communicates the intended semantics.
  final String? description;

  /// Expression in specified language
  /// An expression in the specified language that returns a value.
  final String? expression;

  /// text/cql | text/fhirpath | application/x-fhir-query | etc.
  /// The media type of the language for the expression.
  final String language;

  /// Short name assigned to expression for reuse
  /// A short name assigned to the expression to allow for multiple reuse of the expression in the context where it is defined.
  final String? name;

  /// Where the expression is found
  /// A URI that defines where the expression is found.
  /// If both a reference and an expression is found, the reference SHALL point to the same expression.
  final String? reference;
  Expression({
    this.description,
    this.expression,
    super.fhirExtension,
    super.id,
    required this.language,
    this.name,
    this.reference,
  });

  @override
  factory Expression.fromJson(Map<String, dynamic> json) {
    return Expression(
      description: json['description'] as String?,
      expression: json['expression'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      language: json['language'] as String,
      name: json['name'] as String?,
      reference: json['reference'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'expression': expression,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'language': language,
        'name': name,
        'reference': reference,
      };

  @override
  Expression copyWith({
    String? description,
    String? expression,
    List<Extension>? fhirExtension,
    String? id,
    String? language,
    String? name,
    String? reference,
  }) {
    return Expression(
      description: description ?? this.description,
      expression: expression ?? this.expression,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      language: language ?? this.language,
      name: name ?? this.name,
      reference: reference ?? this.reference,
    );
  }
}
