part of '../fhir_dart.dart';

 /// Todo.
class SubstanceReferenceInformationGeneElement extends BackboneElement implements FhirResource {
   /// Todo.
  final Identifier? element;
   /// Todo.
  final List<Reference>? source;
   /// Todo.
  final CodeableConcept? type;
  SubstanceReferenceInformationGeneElement({
    this.element,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.source,
    this.type,
  });
  
  @override
  factory SubstanceReferenceInformationGeneElement.fromJson(Map<String, dynamic> json) {
    return SubstanceReferenceInformationGeneElement(
      element: json['element'] != null ? Identifier.fromJson(json['element'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      source: (json['source'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      type: json['type'] != null ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'element': element?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'source': source?.map((e) => e.toJson()).toList(),
      'type': type?.toJson(),
    };
  
  @override
  SubstanceReferenceInformationGeneElement copyWith({
    Identifier? element,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<Reference>? source,
    CodeableConcept? type,
  }) {
    return SubstanceReferenceInformationGeneElement(
      element: element ?? this.element,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
      type: type ?? this.type,
    );
  }
}
