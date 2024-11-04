part of '../fhir_dart.dart';

 /// Compartment Consistency Rules.
class GraphDefinitionLinkTargetCompartment extends BackboneElement implements FhirResource {
   /// Identifies the compartment.
  final String code; // Possible values: 'Patient', 'Encounter', 'RelatedPerson', 'Practitioner', 'Device'
   /// Documentation for FHIRPath expression.
  final String? description;
   /// Custom rule, as a FHIRPath expression.
  final String? expression;
   /// identical | matching | different | no-rule | custom.
  final String rule; // Possible values: 'identical', 'matching', 'different', 'custom'
   /// condition | requirement
   /// Defines how the compartment rule is used - whether it it is used to test whether resources are subject to the rule, or whether it is a rule that must be followed.
   /// All conditional rules are evaluated; if they are true, then the rules are evaluated.
  final String use; // Possible values: 'condition', 'requirement'
  GraphDefinitionLinkTargetCompartment({
    required this.code,
    this.description,
    this.expression,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.rule,
    required this.use,
  });
  
  @override
  factory GraphDefinitionLinkTargetCompartment.fromJson(Map<String, dynamic> json) {
    return GraphDefinitionLinkTargetCompartment(
      code: json['code'] as String,
      description: json['description'] as String?,
      expression: json['expression'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      rule: json['rule'] as String,
      use: json['use'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code,
      'description': description,
      'expression': expression,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'rule': rule,
      'use': use,
    };
  
  @override
  GraphDefinitionLinkTargetCompartment copyWith({
    String? code,
    String? description,
    String? expression,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? rule,
    String? use,
  }) {
    return GraphDefinitionLinkTargetCompartment(
      code: code ?? this.code,
      description: description ?? this.description,
      expression: expression ?? this.expression,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      rule: rule ?? this.rule,
      use: use ?? this.use,
    );
  }
}
