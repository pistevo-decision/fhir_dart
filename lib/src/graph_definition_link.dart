part of '../fhir_dart.dart';

 /// Links this graph makes rules about.
class GraphDefinitionLink extends BackboneElement implements FhirResource {
   /// Why this link is specified
   /// Information about why this link is of interest in this graph definition.
  final String? description;
   /// Maximum occurrences for this link.
  final String? max;
   /// Minimum occurrences for this link.
  final int? min;
   /// Path in the resource that contains the link
   /// A FHIR expression that identifies one of FHIR References to other resources.
   /// The path expression cannot contain a resolve() function. If there is no path, the link is a reverse lookup, using target.params. If the path is "*" then this means all references in the resource.
  final String? path;
   /// Which slice (if profiled).
  final String? sliceName;
   /// Potential target for the link.
  final List<GraphDefinitionLinkTarget>? target;
  GraphDefinitionLink({
    this.description,
    super.fhirExtension,
    super.id,
    this.max,
    this.min,
    super.modifierExtension,
    this.path,
    this.sliceName,
    this.target,
  });
  
  @override
  factory GraphDefinitionLink.fromJson(Map<String, dynamic> json) {
    return GraphDefinitionLink(
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      max: json['max'] as String?,
      min: json['min'] as int?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      path: json['path'] as String?,
      sliceName: json['sliceName'] as String?,
      target: (json['target'] as List<dynamic>?)?.map((e) => GraphDefinitionLinkTarget.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'description': description,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'max': max,
      'min': min,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'path': path,
      'sliceName': sliceName,
      'target': target?.map((e) => e.toJson()).toList(),
    };
  
  @override
  GraphDefinitionLink copyWith({
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    String? max,
    int? min,
    List<Extension>? modifierExtension,
    String? path,
    String? sliceName,
    List<GraphDefinitionLinkTarget>? target,
  }) {
    return GraphDefinitionLink(
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      max: max ?? this.max,
      min: min ?? this.min,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      path: path ?? this.path,
      sliceName: sliceName ?? this.sliceName,
      target: target ?? this.target,
    );
  }
}
