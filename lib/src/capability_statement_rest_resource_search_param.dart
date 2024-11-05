part of '../fhir_dart.dart';

/// Search parameters supported by implementation
/// Search parameters for implementations to support and/or make use of - either references to ones defined in the specification, or additional ones defined for/by the implementation.
/// The search parameters should include the control search parameters such as _sort, _count, etc. that also apply to this resource (though many will be listed at [CapabilityStatement.rest.searchParam](capabilitystatement-definitions.html#CapabilityStatement.rest.searchParam)). The behavior of some search parameters may be further described by other code or extension elements, or narrative within the capability statement or linked [SearchParameter](searchparameter.html#) definitions.
class CapabilityStatementRestResourceSearchParam extends BackboneElement
    implements FhirResource {
  /// Source of definition for parameter
  /// An absolute URI that is a formal reference to where this parameter was first defined, so that a client can be confident of the meaning of the search parameter (a reference to [SearchParameter.url](searchparameter-definitions.html#SearchParameter.url)). This element SHALL be populated if the search parameter refers to a SearchParameter defined by the FHIR core specification or externally defined IGs.
  /// This SHOULD be present, and matches refers to a SearchParameter by its canonical URL. If systems wish to document their support for modifiers, comparators, target resource types, and chained parameters, they should do using a search parameter resource. This element SHALL be populated if the search parameter refers to a SearchParameter defined by the FHIR core specification or externally defined IGs.
  final String? definition;

  /// Server-specific usage
  /// This allows documentation of any distinct behaviors about how the search parameter is used.  For example, text matching algorithms.
  final String? documentation;

  /// Name of search parameter
  /// The name of the search parameter used in the interface.
  /// Parameter names cannot overlap with standard parameter names, and standard parameters cannot be redefined.
  final String name;

  /// The type of value a search parameter refers to, and how the content is interpreted.
  /// While this can be looked up from the definition, it is included here as a convenience for systems that autogenerate a query interface based on the server capability statement.  It SHALL be the same as the type in the search parameter definition.
  final String
      type; // Possible values: 'number', 'date', 'string', 'token', 'reference', 'composite', 'quantity', 'uri', 'special'
  CapabilityStatementRestResourceSearchParam({
    this.definition,
    this.documentation,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.name,
    required this.type,
  });

  @override
  factory CapabilityStatementRestResourceSearchParam.fromJson(
      Map<String, dynamic> json) {
    return CapabilityStatementRestResourceSearchParam(
      definition: json['definition'] as String?,
      documentation: json['documentation'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String,
      type: json['type'] as String,
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
        'type': type,
      };

  @override
  CapabilityStatementRestResourceSearchParam copyWith({
    String? definition,
    String? documentation,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    String? type,
  }) {
    return CapabilityStatementRestResourceSearchParam(
      definition: definition ?? this.definition,
      documentation: documentation ?? this.documentation,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }
}
