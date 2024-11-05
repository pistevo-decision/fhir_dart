part of '../fhir_dart.dart';

/// Placeholder for evaluated elements
/// Variable is set based either on element value in response body or on header field value in the response headers.
/// Variables would be set based either on XPath/JSONPath expressions against fixtures (static and response), or headerField evaluations against response headers. If variable evaluates to nodelist or anything other than a primitive value, then test engine would report an error.  Variables would be used to perform clean replacements in "operation.params", "operation.requestHeader.value", and "operation.url" element values during operation calls and in "assert.value" during assertion evaluations. This limits the places that test engines would need to look for placeholders "${}".  Variables are scoped to the whole script. They are NOT evaluated at declaration. They are evaluated by test engine when used for substitutions in "operation.params", "operation.requestHeader.value", and "operation.url" element values during operation calls and in "assert.value" during assertion evaluations.  See example testscript-search.xml.
class TestScriptVariable extends BackboneElement implements FhirResource {
  /// Default, hard-coded, or user-defined value for this variable
  /// A default, hard-coded, or user-defined value for this variable.
  /// The purpose of this element is to allow for a pre-defined value that can be used as a default or as an override value. Test engines can optionally use this as a placeholder for user-defined execution time values.
  final String? defaultValue;

  /// Natural language description of the variable
  /// A free text natural language description of the variable and its purpose.
  final String? description;

  /// The FHIRPath expression against the fixture body
  /// The FHIRPath expression to evaluate against the fixture body. When variables are defined, only one of either expression, headerField or path must be specified.
  /// If headerField is defined, then the variable will be evaluated against the headers that sourceId is pointing to.  If expression or path is defined, then the variable will be evaluated against the fixture body that sourceId is pointing to.  It is an error to define any combination of expression, headerField and path.
  final String? expression;

  /// HTTP header field name for source
  /// Will be used to grab the HTTP header field value from the headers that sourceId is pointing to.
  /// If headerField is defined, then the variable will be evaluated against the headers that sourceId is pointing to.  If path is defined, then the variable will be evaluated against the fixture body that sourceId is pointing to.  It is an error to define both headerField and path.
  final String? headerField;

  /// Hint help text for default value to enter
  /// Displayable text string with hint help information to the user when entering a default value.
  final String? hint;

  /// Descriptive name for this variable.
  /// Placeholders would contain the variable name wrapped in ${} in "operation.params", "operation.requestHeader.value", and "operation.url" elements.  These placeholders would need to be replaced by the variable value before the operation is executed.
  final String name;

  /// XPath or JSONPath against the fixture body
  /// XPath or JSONPath to evaluate against the fixture body.  When variables are defined, only one of either expression, headerField or path must be specified.
  /// If headerField is defined, then the variable will be evaluated against the headers that sourceId is pointing to.  If expression or path is defined, then the variable will be evaluated against the fixture body that sourceId is pointing to.  It is an error to define any combination of expression, headerField and path.
  final String? path;

  /// Fixture Id of source expression or headerField within this variable
  /// Fixture to evaluate the XPath/JSONPath expression or the headerField  against within this variable.
  /// This can be a statically defined fixture (at the top of the TestScript) or a dynamically set fixture created by responseId of the `action.operation` element.
  final String? sourceId;
  TestScriptVariable({
    this.defaultValue,
    this.description,
    this.expression,
    super.fhirExtension,
    this.headerField,
    this.hint,
    super.id,
    super.modifierExtension,
    required this.name,
    this.path,
    this.sourceId,
  });

  @override
  factory TestScriptVariable.fromJson(Map<String, dynamic> json) {
    return TestScriptVariable(
      defaultValue: json['defaultValue'] as String?,
      description: json['description'] as String?,
      expression: json['expression'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      headerField: json['headerField'] as String?,
      hint: json['hint'] as String?,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String,
      path: json['path'] as String?,
      sourceId: json['sourceId'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'defaultValue': defaultValue,
        'description': description,
        'expression': expression,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'headerField': headerField,
        'hint': hint,
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'path': path,
        'sourceId': sourceId,
      };

  @override
  TestScriptVariable copyWith({
    String? defaultValue,
    String? description,
    String? expression,
    List<Extension>? fhirExtension,
    String? headerField,
    String? hint,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    String? path,
    String? sourceId,
  }) {
    return TestScriptVariable(
      defaultValue: defaultValue ?? this.defaultValue,
      description: description ?? this.description,
      expression: expression ?? this.expression,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      headerField: headerField ?? this.headerField,
      hint: hint ?? this.hint,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      path: path ?? this.path,
      sourceId: sourceId ?? this.sourceId,
    );
  }
}
