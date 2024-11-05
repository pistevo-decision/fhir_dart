part of '../fhir_dart.dart';

/// Condition that must evaluate to true
/// Formal constraints such as co-occurrence and other constraints that can be computationally evaluated within the context of the instance.
/// Constraints should be declared on the "context" element - the lowest element in the hierarchy that is common to all nodes referenced by the constraint.
class ElementDefinitionConstraint extends Element implements FhirResource {
  /// FHIRPath expression of constraint
  /// A [FHIRPath](fhirpath.html) expression of constraint that can be executed to see if this constraint is met.
  /// In the absense of an expression, the expression is likely not enforceable by validators, and might be missed by many systems.
  final String? expression;

  /// Human description of constraint
  /// Text that can be used to describe the constraint in messages identifying that the constraint has been violated.
  /// Should be expressed in business terms as much as possible.
  final String human;

  /// Target of 'condition' reference above
  /// Allows identification of which elements have their cardinalities impacted by the constraint.  Will not be referenced for constraints that do not affect cardinality.
  final String key;

  /// Why this constraint is necessary or appropriate
  /// Description of why this constraint is necessary or appropriate.
  /// To be used if the reason for the constraint might not be intuitive to all implementers.
  final String? requirements;

  /// error | warning
  /// Identifies the impact constraint violation has on the conformance of the instance.
  /// This allows constraints to be asserted as "shall" (error) and "should" (warning).
  final String severity; // Possible values: 'error', 'warning'
  /// Reference to original source of constraint
  /// A reference to the original source of the constraint, for traceability purposes.
  /// This is used when, e.g. rendering, where it is not useful to present inherited constraints when rendering the snapshot.
  final String? source;

  /// XPath expression of constraint
  /// An XPath expression of constraint that can be executed to see if this constraint is met.
  /// Elements SHALL use "f" as the namespace prefix for the FHIR namespace, and "x" for the xhtml namespace, and SHALL NOT use any other prefixes.     Note: XPath is generally considered not useful because it does not apply to JSON and other formats and because of XSLT implementation issues, and may be removed in the future.
  final String? xpath;
  ElementDefinitionConstraint({
    this.expression,
    super.fhirExtension,
    required this.human,
    super.id,
    required this.key,
    this.requirements,
    required this.severity,
    this.source,
    this.xpath,
  });

  @override
  factory ElementDefinitionConstraint.fromJson(Map<String, dynamic> json) {
    return ElementDefinitionConstraint(
      expression: json['expression'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      human: json['human'] as String,
      id: json['id'] as String?,
      key: json['key'] as String,
      requirements: json['requirements'] as String?,
      severity: json['severity'] as String,
      source: json['source'] as String?,
      xpath: json['xpath'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'expression': expression,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'human': human,
        'id': id,
        'key': key,
        'requirements': requirements,
        'severity': severity,
        'source': source,
        'xpath': xpath,
      };

  @override
  ElementDefinitionConstraint copyWith({
    String? expression,
    List<Extension>? fhirExtension,
    String? human,
    String? id,
    String? key,
    String? requirements,
    String? severity,
    String? source,
    String? xpath,
  }) {
    return ElementDefinitionConstraint(
      expression: expression ?? this.expression,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      human: human ?? this.human,
      id: id ?? this.id,
      key: key ?? this.key,
      requirements: requirements ?? this.requirements,
      severity: severity ?? this.severity,
      source: source ?? this.source,
      xpath: xpath ?? this.xpath,
    );
  }
}
