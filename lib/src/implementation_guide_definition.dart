part of '../fhir_dart.dart';

/// Information needed to build the IG
/// The information needed by an IG publisher tool to publish the whole implementation guide.
/// Principally, this consists of information abuot source resource and file locations, and build parameters and templates.
class ImplementationGuideDefinition extends BackboneElement
    implements FhirResource {
  /// Grouping used to present related resources in the IG
  /// A logical group of resources. Logical groups can be used when building pages.
  /// Groupings are arbitrary sub-divisions of content. Typically, they are used to help build Table of Contents automatically.
  final List<ImplementationGuideDefinitionGrouping>? grouping;

  /// Page/Section in the Guide
  /// A page / section in the implementation guide. The root page is the implementation guide home page.
  /// Pages automatically become sections if they have sub-pages. By convention, the home page is called index.html.
  final ImplementationGuideDefinitionPage? page;

  /// Defines how IG is built by tools.
  final List<ImplementationGuideDefinitionParameter>? parameter;

  /// Resource in the implementation guide
  /// A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
  final List<ImplementationGuideDefinitionResource> resource;

  /// A template for building resources.
  final List<ImplementationGuideDefinitionTemplate>? template;
  ImplementationGuideDefinition({
    super.fhirExtension,
    this.grouping,
    super.id,
    super.modifierExtension,
    this.page,
    this.parameter,
    required this.resource,
    this.template,
  });

  @override
  factory ImplementationGuideDefinition.fromJson(Map<String, dynamic> json) {
    return ImplementationGuideDefinition(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      grouping: (json['grouping'] as List<dynamic>?)
          ?.map((e) => ImplementationGuideDefinitionGrouping.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: json['page'] != null
          ? ImplementationGuideDefinitionPage.fromJson(
              json['page'] as Map<String, dynamic>)
          : null,
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map((e) => ImplementationGuideDefinitionParameter.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      resource: (json['resource'] as List<dynamic>)
          .map((e) => ImplementationGuideDefinitionResource.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      template: (json['template'] as List<dynamic>?)
          ?.map((e) => ImplementationGuideDefinitionTemplate.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'grouping': grouping?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'page': page?.toJson(),
        'parameter': parameter?.map((e) => e.toJson()).toList(),
        'resource': resource.map((e) => e.toJson()).toList(),
        'template': template?.map((e) => e.toJson()).toList(),
      };

  @override
  ImplementationGuideDefinition copyWith({
    List<Extension>? fhirExtension,
    List<ImplementationGuideDefinitionGrouping>? grouping,
    String? id,
    List<Extension>? modifierExtension,
    ImplementationGuideDefinitionPage? page,
    List<ImplementationGuideDefinitionParameter>? parameter,
    List<ImplementationGuideDefinitionResource>? resource,
    List<ImplementationGuideDefinitionTemplate>? template,
  }) {
    return ImplementationGuideDefinition(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      grouping: grouping ?? this.grouping,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      page: page ?? this.page,
      parameter: parameter ?? this.parameter,
      resource: resource ?? this.resource,
      template: template ?? this.template,
    );
  }
}
