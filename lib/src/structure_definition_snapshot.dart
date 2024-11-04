part of '../fhir_dart.dart';

/// Snapshot view of the structure
/// A snapshot view is expressed in a standalone form that can be used and interpreted without considering the base StructureDefinition.
class StructureDefinitionSnapshot extends BackboneElement
    implements FhirResource {
  /// Definition of elements in the resource (if no StructureDefinition)
  /// Captures constraints on each element within the resource.
  final List<ElementDefinition> element;
  StructureDefinitionSnapshot({
    required this.element,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory StructureDefinitionSnapshot.fromJson(Map<String, dynamic> json) {
    return StructureDefinitionSnapshot(
      element: (json['element'] as List<dynamic>)
          .map((e) => ElementDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'element': element.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  StructureDefinitionSnapshot copyWith({
    List<ElementDefinition>? element,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return StructureDefinitionSnapshot(
      element: element ?? this.element,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
