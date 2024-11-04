part of '../fhir_dart.dart';

 /// Define overloaded variants for when  generating code
 /// Defines an appropriate combination of parameters to use when invoking this operation, to help code generators when generating overloaded parameter sets for this operation.
 /// The combinations are suggestions as to which sets of parameters to use together, but the combinations are not intended to be authoritative.
class OperationDefinitionOverload extends BackboneElement implements FhirResource {
   /// Comments to go on overload.
  final String? comment;
   /// Name of parameter to include in overload.
  final List<String>? parameterName;
  OperationDefinitionOverload({
    this.comment,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.parameterName,
  });
  
  @override
  factory OperationDefinitionOverload.fromJson(Map<String, dynamic> json) {
    return OperationDefinitionOverload(
      comment: json['comment'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      parameterName: (json['parameterName'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'comment': comment,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'parameterName': parameterName?.map((e) => e).toList(),
    };
  
  @override
  OperationDefinitionOverload copyWith({
    String? comment,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<String>? parameterName,
  }) {
    return OperationDefinitionOverload(
      comment: comment ?? this.comment,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      parameterName: parameterName ?? this.parameterName,
    );
  }
}
