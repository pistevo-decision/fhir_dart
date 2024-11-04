part of '../fhir_dart.dart';

/// Content to create because of this mapping rule.
class StructureMapGroupRuleTarget extends BackboneElement
    implements FhirResource {
  /// Type or variable this rule applies to.
  final String? context;

  /// type | variable
  /// How to interpret the context.
  final String? contextType; // Possible values: 'type', 'variable'
  /// Field to create in the context.
  final String? element;

  /// If field is a list, how to manage the list.
  final List<String>?
      listMode; // Possible values: 'first', 'share', 'last', 'collate'
  /// Internal rule reference for shared list items.
  final String? listRuleId;

  /// Parameters to the transform.
  final List<StructureMapGroupRuleTargetParameter>? parameter;

  /// create | copy +
  /// How the data is copied / created.
  final String?
      transform; // Possible values: 'create', 'copy', 'truncate', 'escape', 'cast', 'append', 'translate', 'reference', 'dateOp', 'uuid', 'pointer', 'evaluate', 'cc', 'c', 'qty', 'id', 'cp'
  /// Named context for field, if desired, and a field is specified.
  final String? variable;
  StructureMapGroupRuleTarget({
    this.context,
    this.contextType,
    this.element,
    super.fhirExtension,
    super.id,
    this.listMode,
    this.listRuleId,
    super.modifierExtension,
    this.parameter,
    this.transform,
    this.variable,
  });

  @override
  factory StructureMapGroupRuleTarget.fromJson(Map<String, dynamic> json) {
    return StructureMapGroupRuleTarget(
      context: json['context'] as String?,
      contextType: json['contextType'] as String?,
      element: json['element'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      listMode: (json['listMode'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      listRuleId: json['listRuleId'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map((e) => StructureMapGroupRuleTargetParameter.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      transform: json['transform'] as String?,
      variable: json['variable'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'context': context,
        'contextType': contextType,
        'element': element,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'listMode': listMode?.map((e) => e).toList(),
        'listRuleId': listRuleId,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'parameter': parameter?.map((e) => e.toJson()).toList(),
        'transform': transform,
        'variable': variable,
      };

  @override
  StructureMapGroupRuleTarget copyWith({
    String? context,
    String? contextType,
    String? element,
    List<Extension>? fhirExtension,
    String? id,
    List<String>? listMode,
    String? listRuleId,
    List<Extension>? modifierExtension,
    List<StructureMapGroupRuleTargetParameter>? parameter,
    String? transform,
    String? variable,
  }) {
    return StructureMapGroupRuleTarget(
      context: context ?? this.context,
      contextType: contextType ?? this.contextType,
      element: element ?? this.element,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      listMode: listMode ?? this.listMode,
      listRuleId: listRuleId ?? this.listRuleId,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      parameter: parameter ?? this.parameter,
      transform: transform ?? this.transform,
      variable: variable ?? this.variable,
    );
  }
}
