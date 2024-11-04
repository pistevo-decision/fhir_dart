part of '../fhir_dart.dart';

/// If the endpoint is a RESTful one
/// A definition of the restful capabilities of the solution, if any.
/// Multiple repetitions allow definition of both client and/or server behaviors or possibly behaviors under different configuration settings (for software or requirements statements).
class CapabilityStatementRest extends BackboneElement implements FhirResource {
  /// Compartments served/used by system
  /// An absolute URI which is a reference to the definition of a compartment that the system supports. The reference is to a CompartmentDefinition resource by its canonical URL .
  /// At present, the only defined compartments are at [CompartmentDefinition](compartmentdefinition.html).
  final List<String>? compartment;

  /// General description of implementation
  /// Information about the system's restful capabilities that apply across all applications, such as security.
  final String? documentation;

  /// What operations are supported?
  /// A specification of restful operations supported by the system.
  final List<CapabilityStatementRestInteraction>? interaction;

  /// client | server
  /// Identifies whether this portion of the statement is describing the ability to initiate or receive restful operations.
  final String mode; // Possible values: 'client', 'server'
  /// Definition of a system level operation
  /// Definition of an operation or a named query together with its parameters and their meaning and type.
  /// CapabilityStatement.rest.operation is for operations invoked at the system level, or for operations that are supported across multiple resource types. Operations linked from CapabilityStatement.rest.operation must have OperationDefinition.system = true, or more than one Operation.resource.
  final List<CapabilityStatementRestResourceOperation>? operation;

  /// Resource served on the REST interface
  /// A specification of the restful capabilities of the solution for a specific resource type.
  /// Max of one repetition per resource type.
  final List<CapabilityStatementRestResource>? resource;

  /// Search parameters for searching all resources
  /// Search parameters that are supported for searching all resources for implementations to support and/or make use of - either references to ones defined in the specification, or additional ones defined for/by the implementation.
  /// Typically, the only search parameters supported for all searches are those that apply to all resources - tags, profiles, text search etc. These search parameters should include the control search parameters such as _sort, _count, etc. that also apply to this resource (though many will be listed at [CapabilityStatement.rest.searchParam](capabilitystatement-definitions.html#CapabilityStatement.rest.searchParam)). The behavior of some search parameters may be further described by other code or extension elements, or narrative within the capability statement or linked [SearchParameter](searchparameter.html#) definitions.
  final List<CapabilityStatementRestResourceSearchParam>? searchParam;

  /// Information about security of implementation
  /// Information about security implementation from an interface perspective - what a client needs to know.
  final CapabilityStatementRestSecurity? security;
  CapabilityStatementRest({
    this.compartment,
    this.documentation,
    super.fhirExtension,
    super.id,
    this.interaction,
    required this.mode,
    super.modifierExtension,
    this.operation,
    this.resource,
    this.searchParam,
    this.security,
  });

  @override
  factory CapabilityStatementRest.fromJson(Map<String, dynamic> json) {
    return CapabilityStatementRest(
      compartment: (json['compartment'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      documentation: json['documentation'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      interaction: (json['interaction'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementRestInteraction.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      mode: json['mode'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      operation: (json['operation'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementRestResourceOperation.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      resource: (json['resource'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementRestResource.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      searchParam: (json['searchParam'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementRestResourceSearchParam.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      security: json['security'] != null
          ? CapabilityStatementRestSecurity.fromJson(
              json['security'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'compartment': compartment?.map((e) => e).toList(),
        'documentation': documentation,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'interaction': interaction?.map((e) => e.toJson()).toList(),
        'mode': mode,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'operation': operation?.map((e) => e.toJson()).toList(),
        'resource': resource?.map((e) => e.toJson()).toList(),
        'searchParam': searchParam?.map((e) => e.toJson()).toList(),
        'security': security?.toJson(),
      };

  @override
  CapabilityStatementRest copyWith({
    List<String>? compartment,
    String? documentation,
    List<Extension>? fhirExtension,
    String? id,
    List<CapabilityStatementRestInteraction>? interaction,
    String? mode,
    List<Extension>? modifierExtension,
    List<CapabilityStatementRestResourceOperation>? operation,
    List<CapabilityStatementRestResource>? resource,
    List<CapabilityStatementRestResourceSearchParam>? searchParam,
    CapabilityStatementRestSecurity? security,
  }) {
    return CapabilityStatementRest(
      compartment: compartment ?? this.compartment,
      documentation: documentation ?? this.documentation,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      interaction: interaction ?? this.interaction,
      mode: mode ?? this.mode,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operation: operation ?? this.operation,
      resource: resource ?? this.resource,
      searchParam: searchParam ?? this.searchParam,
      security: security ?? this.security,
    );
  }
}
