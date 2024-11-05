part of '../fhir_dart.dart';

/// A single issue associated with the action
/// An error, warning, or information message that results from a system action.
class OperationOutcomeIssue extends BackboneElement implements FhirResource {
  /// Error or warning code
  /// Describes the type of the issue. The system that creates an OperationOutcome SHALL choose the most applicable code from the IssueType value set, and may additional provide its own code for the error in the details element.
  final String
      code; // Possible values: 'invalid', 'structure', 'required', 'value', 'invariant', 'security', 'login', 'unknown', 'expired', 'forbidden', 'suppressed', 'processing', 'not-supported', 'duplicate', 'multiple-matches', 'not-found', 'deleted', 'too-long', 'code-invalid', 'extension', 'too-costly', 'business-rule', 'conflict', 'transient', 'lock-error', 'no-store', 'exception', 'timeout', 'incomplete', 'throttled', 'informational'
  /// Additional details about the error. This may be a text description of the error or a system code that identifies the error.
  /// A human readable description of the error issue SHOULD be placed in details.text.
  final CodeableConcept? details;

  /// Additional diagnostic information about the issue.
  /// This may be a description of how a value is erroneous, a stack dump to help trace the issue or other troubleshooting information.
  final String? diagnostics;

  /// FHIRPath of element(s) related to issue
  /// A [simple subset of FHIRPath](fhirpath.html#simple) limited to element names, repetition indicators and the default child accessor that identifies one of the elements in the resource that caused this issue to be raised.
  /// The root of the FHIRPath is the resource or bundle that generated OperationOutcome.  Each FHIRPath SHALL resolve to a single node.
  final List<String>? expression;

  /// Deprecated: Path of element(s) related to issue
  /// This element is deprecated because it is XML specific. It is replaced by issue.expression, which is format independent, and simpler to parse.
  /// For resource issues, this will be a simple XPath limited to element names, repetition indicators and the default child accessor that identifies one of the elements in the resource that caused this issue to be raised.  For HTTP errors, will be "http." + the parameter name.
  /// The root of the XPath is the resource or bundle that generated OperationOutcome.  Each XPath SHALL resolve to a single node.  This element is deprecated, and is being replaced by expression.
  final List<String>? location;

  /// Indicates whether the issue indicates a variation from successful processing.
  /// This is labeled as "Is Modifier" because applications should not confuse hints and warnings with errors.
  final String
      severity; // Possible values: 'fatal', 'error', 'warning', 'information'
  OperationOutcomeIssue({
    required this.code,
    this.details,
    this.diagnostics,
    this.expression,
    super.fhirExtension,
    super.id,
    this.location,
    super.modifierExtension,
    required this.severity,
  });

  @override
  factory OperationOutcomeIssue.fromJson(Map<String, dynamic> json) {
    return OperationOutcomeIssue(
      code: json['code'] as String,
      details: json['details'] != null
          ? CodeableConcept.fromJson(
              (json['details'] as Map).cast<String, dynamic>())
          : null,
      diagnostics: json['diagnostics'] as String?,
      expression: (json['expression'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      location: (json['location'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      severity: json['severity'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'details': details?.toJson(),
        'diagnostics': diagnostics,
        'expression': expression?.map((e) => e).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'location': location?.map((e) => e).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'severity': severity,
      };

  @override
  OperationOutcomeIssue copyWith({
    String? code,
    CodeableConcept? details,
    String? diagnostics,
    List<String>? expression,
    List<Extension>? fhirExtension,
    String? id,
    List<String>? location,
    List<Extension>? modifierExtension,
    String? severity,
  }) {
    return OperationOutcomeIssue(
      code: code ?? this.code,
      details: details ?? this.details,
      diagnostics: diagnostics ?? this.diagnostics,
      expression: expression ?? this.expression,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      location: location ?? this.location,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      severity: severity ?? this.severity,
    );
  }
}
