part of '../fhir_dart.dart';

 /// Base definition information for tools
 /// Information about the base definition of the element, provided to make it unnecessary for tools to trace the deviation of the element through the derived and related profiles. When the element definition is not the original definition of an element - i.g. either in a constraint on another type, or for elements from a super type in a snap shot - then the information in provided in the element definition may be different to the base definition. On the original definition of the element, it will be same.
 /// The base information does not carry any information that could not be determined from the path and related profiles, but making this determination requires both that the related profiles are available, and that the algorithm to determine them be available. For tooling simplicity, the base information must always be populated in element definitions in snap shots, even if it is the same.
class ElementDefinitionBase extends Element implements FhirResource {
   /// Max cardinality of the base element
   /// Maximum cardinality of the base element identified by the path.
   /// This is provided to code generation, since the serialization representation in JSON differs depending on whether the base element has max > 1. Also, some forms of code generation may differ.
  final String max;
   /// Min cardinality of the base element
   /// Minimum cardinality of the base element identified by the path.
   /// This is provided for consistency with max, and may affect code generation of mandatory elements of the base resource are generated differently (some reference implementations have done this).
  final int min;
   /// Path that identifies the base element
   /// The Path that identifies the base element - this matches the ElementDefinition.path for that element. Across FHIR, there is only one base definition of any element - that is, an element definition on a [StructureDefinition](structuredefinition.html#) without a StructureDefinition.base.
  final String path;
  ElementDefinitionBase({
    super.fhirExtension,
    super.id,
    required this.max,
    required this.min,
    required this.path,
  });
  
  @override
  factory ElementDefinitionBase.fromJson(Map<String, dynamic> json) {
    return ElementDefinitionBase(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      max: json['max'] as String,
      min: json['min'] as int,
      path: json['path'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'max': max,
      'min': min,
      'path': path,
    };
  
  @override
  ElementDefinitionBase copyWith({
    List<Extension>? fhirExtension,
    String? id,
    String? max,
    int? min,
    String? path,
  }) {
    return ElementDefinitionBase(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      max: max ?? this.max,
      min: min ?? this.min,
      path: path ?? this.path,
    );
  }
}
