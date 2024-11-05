part of '../fhir_dart.dart';

/// Definition of a resource operation
/// Definition of an operation or a named query together with its parameters and their meaning and type. Consult the definition of the operation for details about how to invoke the operation, and the parameters.
/// Operations linked from CapabilityStatement.rest.resource.operation must have OperationDefinition.type = true or OperationDefinition.instance = true.
/// If an operation that is listed in multiple CapabilityStatement.rest.resource.operation (e.g. for different resource types), then clients should understand that the operation is only supported on the specified resource types, and that may be a subset of those listed in OperationDefinition.resource.
class CapabilityStatementRestResourceOperation extends BackboneElement
    implements FhirResource {
  /// The defined operation/query
  /// Where the formal definition can be found. If a server references the base definition of an Operation (i.e. from the specification itself such as ```http://hl7.org/fhir/OperationDefinition/ValueSet-expand```), that means it supports the full capabilities of the operation - e.g. both GET and POST invocation.  If it only supports a subset, it must define its own custom [OperationDefinition](operationdefinition.html#) with a 'base' of the original OperationDefinition.  The custom definition would describe the specific subset of functionality supported.
  /// This can be used to build an HTML form to invoke the operation, for instance.
  final String definition;

  /// Specific details about operation behavior
  /// Documentation that describes anything special about the operation behavior, possibly detailing different behavior for system, type and instance-level invocation of the operation.
  final String? documentation;

  /// Name by which the operation/query is invoked
  /// The name of the operation or query. For an operation, this is the name  prefixed with $ and used in the URL. For a query, this is the name used in the _query parameter when the query is called.
  /// The name here SHOULD be the same as the name in the definition, unless there is a name clash and the name cannot be used. The name does not include the "$" portion that is always included in the URL.
  final String name;
  CapabilityStatementRestResourceOperation({
    required this.definition,
    this.documentation,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.name,
  });

  @override
  factory CapabilityStatementRestResourceOperation.fromJson(
      Map<String, dynamic> json) {
    return CapabilityStatementRestResourceOperation(
      definition: json['definition'] as String,
      documentation: json['documentation'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'definition': definition,
        'documentation': documentation,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
      };

  @override
  CapabilityStatementRestResourceOperation copyWith({
    String? definition,
    String? documentation,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
  }) {
    return CapabilityStatementRestResourceOperation(
      definition: definition ?? this.definition,
      documentation: documentation ?? this.documentation,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
    );
  }
}
