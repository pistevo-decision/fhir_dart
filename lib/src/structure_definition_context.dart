part of '../fhir_dart.dart';

/// If an extension, where it can be used in instances
/// Identifies the types of resource or data type elements to which the extension can be applied.
class StructureDefinitionContext extends BackboneElement
    implements FhirResource {
  /// Where the extension can be used in instances
  /// An expression that defines where an extension can be used in resources.
  final String expression;

  /// Defines how to interpret the expression that defines what the context of the extension is.
  final String type; // Possible values: 'fhirpath', 'element', 'extension'
  StructureDefinitionContext({
    required this.expression,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.type,
  });

  @override
  factory StructureDefinitionContext.fromJson(Map<String, dynamic> json) {
    return StructureDefinitionContext(
      expression: json['expression'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: json['type'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'expression': expression,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type,
      };

  @override
  StructureDefinitionContext copyWith({
    String? expression,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? type,
  }) {
    return StructureDefinitionContext(
      expression: expression ?? this.expression,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
    );
  }
}
