part of '../fhir_dart.dart';

 /// Transform Rule from source to target.
class StructureMapGroupRule extends BackboneElement implements FhirResource {
   /// Which other rules to apply in the context of this rule.
  final List<StructureMapGroupRuleDependent>? dependent;
   /// Documentation for this instance of data.
  final String? documentation;
   /// Name of the rule for internal references.
  final String name;
   /// Rules contained in this rule.
  final List<StructureMapGroupRule>? rule;
   /// Source inputs to the mapping.
  final List<StructureMapGroupRuleSource> source;
   /// Content to create because of this mapping rule.
  final List<StructureMapGroupRuleTarget>? target;
  StructureMapGroupRule({
    this.dependent,
    this.documentation,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.name,
    this.rule,
    required this.source,
    this.target,
  });
  
  @override
  factory StructureMapGroupRule.fromJson(Map<String, dynamic> json) {
    return StructureMapGroupRule(
      dependent: (json['dependent'] as List<dynamic>?)?.map((e) => StructureMapGroupRuleDependent.fromJson(e as Map<String, dynamic>)).toList(),
      documentation: json['documentation'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String,
      rule: (json['rule'] as List<dynamic>?)?.map((e) => StructureMapGroupRule.fromJson(e as Map<String, dynamic>)).toList(),
      source: (json['source'] as List<dynamic>).map((e) => StructureMapGroupRuleSource.fromJson(e as Map<String, dynamic>)).toList(),
      target: (json['target'] as List<dynamic>?)?.map((e) => StructureMapGroupRuleTarget.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'dependent': dependent?.map((e) => e.toJson()).toList(),
      'documentation': documentation,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'name': name,
      'rule': rule?.map((e) => e.toJson()).toList(),
      'source': source.map((e) => e.toJson()).toList(),
      'target': target?.map((e) => e.toJson()).toList(),
    };
  
  @override
  StructureMapGroupRule copyWith({
    List<StructureMapGroupRuleDependent>? dependent,
    String? documentation,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    List<StructureMapGroupRule>? rule,
    List<StructureMapGroupRuleSource>? source,
    List<StructureMapGroupRuleTarget>? target,
  }) {
    return StructureMapGroupRule(
      dependent: dependent ?? this.dependent,
      documentation: documentation ?? this.documentation,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      rule: rule ?? this.rule,
      source: source ?? this.source,
      target: target ?? this.target,
    );
  }
}
