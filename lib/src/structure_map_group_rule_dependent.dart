part of '../fhir_dart.dart';

 /// Which other rules to apply in the context of this rule.
class StructureMapGroupRuleDependent extends BackboneElement implements FhirResource {
   /// Name of a rule or group to apply.
  final String name;
   /// Variable to pass to the rule or group.
  final List<String> variable;
  StructureMapGroupRuleDependent({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.name,
    required this.variable,
  });
  
  @override
  factory StructureMapGroupRuleDependent.fromJson(Map<String, dynamic> json) {
    return StructureMapGroupRuleDependent(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String,
      variable: (json['variable'] as List<dynamic>).map((e) => e as String).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'name': name,
      'variable': variable.map((e) => e).toList(),
    };
  
  @override
  StructureMapGroupRuleDependent copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    List<String>? variable,
  }) {
    return StructureMapGroupRuleDependent(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      variable: variable ?? this.variable,
    );
  }
}
