part of '../fhir_dart.dart';

 /// The parameters that may be used are defined by the OperationDefinition resource.
 /// This resource is a non-persisted resource used to pass information into and back from an [operation](operations.html). It has no other use, and there is no RESTful endpoint associated with it.
class Parameters extends Resource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'Parameters';
   /// Operation Parameter
   /// A parameter passed to or received from the operation.
  final List<ParametersParameter>? parameter;
  Parameters({
    super.id,
    super.implicitRules,
    super.language,
    super.meta,
    this.parameter,
  });
  
  @override
  factory Parameters.fromJson(Map<String, dynamic> json) {
    return Parameters(
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      parameter: (json['parameter'] as List<dynamic>?)?.map((e) => ParametersParameter.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'id': id,
      'implicitRules': implicitRules,
      'language': language,
      'meta': meta?.toJson(),
      'parameter': parameter?.map((e) => e.toJson()).toList(),
    };
  
  @override
  Parameters copyWith({
    String? id,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<ParametersParameter>? parameter,
  }) {
    return Parameters(
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      parameter: parameter ?? this.parameter,
    );
  }
}
