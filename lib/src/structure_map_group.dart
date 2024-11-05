part of '../fhir_dart.dart';

/// Named sections for reader convenience
/// Organizes the mapping into manageable chunks for human review/ease of maintenance.
class StructureMapGroup extends BackboneElement implements FhirResource {
  /// Additional description/explanation for group
  /// Additional supporting documentation that explains the purpose of the group and the types of mappings within it.
  final String? documentation;

  /// Another group that this group adds rules to.
  final String? fhirExtends;

  /// Named instance provided when invoking the map
  /// A name assigned to an instance of data. The instance must be provided when the mapping is invoked.
  /// If no inputs are named, then the entry mappings are type based.
  final List<StructureMapGroupInput> input;

  /// Human-readable label
  /// A unique name for the group for the convenience of human readers.
  final String name;

  /// Transform Rule from source to target.
  final List<StructureMapGroupRule> rule;

  /// If this is the default rule set to apply for the source type or this combination of types.
  /// Not applicable if the underlying model is untyped. There can only be one default mapping for any particular type combination.
  final String typeMode; // Possible values: 'none', 'types', 'type-and-types'
  StructureMapGroup({
    this.documentation,
    this.fhirExtends,
    super.fhirExtension,
    super.id,
    required this.input,
    super.modifierExtension,
    required this.name,
    required this.rule,
    required this.typeMode,
  });

  @override
  factory StructureMapGroup.fromJson(Map<String, dynamic> json) {
    return StructureMapGroup(
      documentation: json['documentation'] as String?,
      fhirExtends: json['extends'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      input: (json['input'] as List<dynamic>)
          .map((e) => StructureMapGroupInput.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String,
      rule: (json['rule'] as List<dynamic>)
          .map((e) => StructureMapGroupRule.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      typeMode: json['typeMode'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'documentation': documentation,
        'extends': fhirExtends,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'input': input.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'rule': rule.map((e) => e.toJson()).toList(),
        'typeMode': typeMode,
      };

  @override
  StructureMapGroup copyWith({
    String? documentation,
    String? fhirExtends,
    List<Extension>? fhirExtension,
    String? id,
    List<StructureMapGroupInput>? input,
    List<Extension>? modifierExtension,
    String? name,
    List<StructureMapGroupRule>? rule,
    String? typeMode,
  }) {
    return StructureMapGroup(
      documentation: documentation ?? this.documentation,
      fhirExtends: fhirExtends ?? this.fhirExtends,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      input: input ?? this.input,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      rule: rule ?? this.rule,
      typeMode: typeMode ?? this.typeMode,
    );
  }
}
