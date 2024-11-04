part of '../fhir_dart.dart';

 /// Element values that are used to distinguish the slices
 /// Designates which child elements are used to discriminate between the slices when processing an instance. If one or more discriminators are provided, the value of the child elements in the instance data SHALL completely distinguish which slice the element in the resource matches based on the allowed values for those elements in each of the slices.
 /// If there is no discriminator, the content is hard to process, so this should be avoided.
class ElementDefinitionSlicingDiscriminator extends Element implements FhirResource {
   /// Path to element value
   /// A FHIRPath expression, using [the simple subset of FHIRPath](fhirpath.html#simple), that is used to identify the element on which discrimination is based.
   /// The only FHIRPath functions that are allowed are as(type), resolve(), and extension(url).
  final String path;
   /// How the element value is interpreted when discrimination is evaluated.
  final String type; // Possible values: 'value', 'exists', 'pattern', 'type', 'profile'
  ElementDefinitionSlicingDiscriminator({
    super.fhirExtension,
    super.id,
    required this.path,
    required this.type,
  });
  
  @override
  factory ElementDefinitionSlicingDiscriminator.fromJson(Map<String, dynamic> json) {
    return ElementDefinitionSlicingDiscriminator(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      path: json['path'] as String,
      type: json['type'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'path': path,
      'type': type,
    };
  
  @override
  ElementDefinitionSlicingDiscriminator copyWith({
    List<Extension>? fhirExtension,
    String? id,
    String? path,
    String? type,
  }) {
    return ElementDefinitionSlicingDiscriminator(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      path: path ?? this.path,
      type: type ?? this.type,
    );
  }
}
