part of '../fhir_dart.dart';

 /// Property value for the concept
 /// A property value for this concept.
class CodeSystemConceptProperty extends BackboneElement implements FhirResource {
   /// Reference to CodeSystem.property.code
   /// A code that is a reference to CodeSystem.property.code.
  final String code;
   /// Value of the property for this concept
   /// The value of this property.
  final bool? valueBoolean;
   /// Value of the property for this concept
   /// The value of this property.
  final String? valueCode;
   /// Value of the property for this concept
   /// The value of this property.
  final Coding? valueCoding;
   /// Value of the property for this concept
   /// The value of this property.
  final String? valueDateTime;
   /// Value of the property for this concept
   /// The value of this property.
  final num? valueDecimal;
   /// Value of the property for this concept
   /// The value of this property.
  final int? valueInteger;
   /// Value of the property for this concept
   /// The value of this property.
  final String? valueString;
  CodeSystemConceptProperty({
    required this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.valueBoolean,
    this.valueCode,
    this.valueCoding,
    this.valueDateTime,
    this.valueDecimal,
    this.valueInteger,
    this.valueString,
  });
  
  @override
  factory CodeSystemConceptProperty.fromJson(Map<String, dynamic> json) {
    return CodeSystemConceptProperty(
      code: json['code'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      valueBoolean: json['valueBoolean'] as bool?,
      valueCode: json['valueCode'] as String?,
      valueCoding: json['valueCoding'] != null ? Coding.fromJson(json['valueCoding'] as Map<String, dynamic>) : null,
      valueDateTime: json['valueDateTime'] as String?,
      valueDecimal: json['valueDecimal'] as num?,
      valueInteger: json['valueInteger'] as int?,
      valueString: json['valueString'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'valueBoolean': valueBoolean,
      'valueCode': valueCode,
      'valueCoding': valueCoding?.toJson(),
      'valueDateTime': valueDateTime,
      'valueDecimal': valueDecimal,
      'valueInteger': valueInteger,
      'valueString': valueString,
    };
  
  @override
  CodeSystemConceptProperty copyWith({
    String? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    bool? valueBoolean,
    String? valueCode,
    Coding? valueCoding,
    String? valueDateTime,
    num? valueDecimal,
    int? valueInteger,
    String? valueString,
  }) {
    return CodeSystemConceptProperty(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueCode: valueCode ?? this.valueCode,
      valueCoding: valueCoding ?? this.valueCoding,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueInteger: valueInteger ?? this.valueInteger,
      valueString: valueString ?? this.valueString,
    );
  }
}
