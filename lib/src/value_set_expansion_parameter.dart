part of '../fhir_dart.dart';

 /// Parameter that controlled the expansion process
 /// A parameter that controlled the expansion process. These parameters may be used by users of expanded value sets to check whether the expansion is suitable for a particular purpose, or to pick the correct expansion.
 /// The server decides which parameters to include here, but at a minimum, the list SHOULD include all of the parameters that affect the $expand operation. If the expansion will be persisted all of these parameters SHALL be included. If the codeSystem on the server has a specified version then this version SHALL be provided as a parameter in the expansion (note that not all code systems have a version).
class ValueSetExpansionParameter extends BackboneElement implements FhirResource {
   /// Name as assigned by the client or server
   /// Name of the input parameter to the $expand operation; may be a server-assigned name for additional default or other server-supplied parameters used to control the expansion process.
   /// The names are assigned at the discretion of the server.
  final String name;
   /// Value of the named parameter
   /// The value of the parameter.
  final bool? valueBoolean;
   /// Value of the named parameter
   /// The value of the parameter.
  final String? valueCode;
   /// Value of the named parameter
   /// The value of the parameter.
  final String? valueDateTime;
   /// Value of the named parameter
   /// The value of the parameter.
  final num? valueDecimal;
   /// Value of the named parameter
   /// The value of the parameter.
  final int? valueInteger;
   /// Value of the named parameter
   /// The value of the parameter.
  final String? valueString;
   /// Value of the named parameter
   /// The value of the parameter.
  final String? valueUri;
  ValueSetExpansionParameter({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.name,
    this.valueBoolean,
    this.valueCode,
    this.valueDateTime,
    this.valueDecimal,
    this.valueInteger,
    this.valueString,
    this.valueUri,
  });
  
  @override
  factory ValueSetExpansionParameter.fromJson(Map<String, dynamic> json) {
    return ValueSetExpansionParameter(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String,
      valueBoolean: json['valueBoolean'] as bool?,
      valueCode: json['valueCode'] as String?,
      valueDateTime: json['valueDateTime'] as String?,
      valueDecimal: json['valueDecimal'] as num?,
      valueInteger: json['valueInteger'] as int?,
      valueString: json['valueString'] as String?,
      valueUri: json['valueUri'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'name': name,
      'valueBoolean': valueBoolean,
      'valueCode': valueCode,
      'valueDateTime': valueDateTime,
      'valueDecimal': valueDecimal,
      'valueInteger': valueInteger,
      'valueString': valueString,
      'valueUri': valueUri,
    };
  
  @override
  ValueSetExpansionParameter copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    bool? valueBoolean,
    String? valueCode,
    String? valueDateTime,
    num? valueDecimal,
    int? valueInteger,
    String? valueString,
    String? valueUri,
  }) {
    return ValueSetExpansionParameter(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueCode: valueCode ?? this.valueCode,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueInteger: valueInteger ?? this.valueInteger,
      valueString: valueString ?? this.valueString,
      valueUri: valueUri ?? this.valueUri,
    );
  }
}
