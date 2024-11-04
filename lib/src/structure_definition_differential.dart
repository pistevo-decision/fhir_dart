part of '../fhir_dart.dart';

 /// Differential view of the structure
 /// A differential view is expressed relative to the base StructureDefinition - a statement of differences that it applies.
class StructureDefinitionDifferential extends BackboneElement implements FhirResource {
   /// Definition of elements in the resource (if no StructureDefinition)
   /// Captures constraints on each element within the resource.
  final List<ElementDefinition> element;
  StructureDefinitionDifferential({
    required this.element,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });
  
  @override
  factory StructureDefinitionDifferential.fromJson(Map<String, dynamic> json) {
    return StructureDefinitionDifferential(
      element: (json['element'] as List<dynamic>).map((e) => ElementDefinition.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'element': element.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  StructureDefinitionDifferential copyWith({
    List<ElementDefinition>? element,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return StructureDefinitionDifferential(
      element: element ?? this.element,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
