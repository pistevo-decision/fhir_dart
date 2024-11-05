part of '../fhir_dart.dart';

/// Parameters to the transform.
class StructureMapGroupRuleTargetParameter extends BackboneElement
    implements FhirResource {
  /// Parameter value - variable or literal.
  final bool? valueBoolean;

  /// Parameter value - variable or literal.
  final num? valueDecimal;

  /// Parameter value - variable or literal.
  final String? valueId;

  /// Parameter value - variable or literal.
  final int? valueInteger;

  /// Parameter value - variable or literal.
  final String? valueString;
  StructureMapGroupRuleTargetParameter({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.valueBoolean,
    this.valueDecimal,
    this.valueId,
    this.valueInteger,
    this.valueString,
  });

  @override
  factory StructureMapGroupRuleTargetParameter.fromJson(
      Map<String, dynamic> json) {
    return StructureMapGroupRuleTargetParameter(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      valueBoolean: json['valueBoolean'] as bool?,
      valueDecimal: json['valueDecimal'] as num?,
      valueId: json['valueId'] as String?,
      valueInteger: json['valueInteger'] as int?,
      valueString: json['valueString'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'valueBoolean': valueBoolean,
        'valueDecimal': valueDecimal,
        'valueId': valueId,
        'valueInteger': valueInteger,
        'valueString': valueString,
      };

  @override
  StructureMapGroupRuleTargetParameter copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    bool? valueBoolean,
    num? valueDecimal,
    String? valueId,
    int? valueInteger,
    String? valueString,
  }) {
    return StructureMapGroupRuleTargetParameter(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueId: valueId ?? this.valueId,
      valueInteger: valueInteger ?? this.valueInteger,
      valueString: valueString ?? this.valueString,
    );
  }
}
