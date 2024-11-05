part of '../fhir_dart.dart';

/// Grouping used to present related resources in the IG
/// A logical group of resources. Logical groups can be used when building pages.
/// Groupings are arbitrary sub-divisions of content. Typically, they are used to help build Table of Contents automatically.
class ImplementationGuideDefinitionGrouping extends BackboneElement
    implements FhirResource {
  /// Human readable text describing the package.
  final String? description;

  /// Descriptive name for the package
  /// The human-readable title to display for the package of resources when rendering the implementation guide.
  final String name;
  ImplementationGuideDefinitionGrouping({
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.name,
  });

  @override
  factory ImplementationGuideDefinitionGrouping.fromJson(
      Map<String, dynamic> json) {
    return ImplementationGuideDefinitionGrouping(
      description: json['description'] as String?,
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
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
      };

  @override
  ImplementationGuideDefinitionGrouping copyWith({
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
  }) {
    return ImplementationGuideDefinitionGrouping(
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
    );
  }
}
