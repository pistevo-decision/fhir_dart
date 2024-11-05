part of '../fhir_dart.dart';

/// Mappings for a concept from the source set
/// Mappings for an individual concept in the source to one or more concepts in the target.
/// Generally, the ideal is that there would only be one mapping for each concept in the source value set, but a given concept may be mapped multiple times with different comments or dependencies.
class ConceptMapGroupElement extends BackboneElement implements FhirResource {
  /// Identifies element being mapped
  /// Identity (code or path) or the element/item being mapped.
  final String? code;

  /// Display for the code
  /// The display for the code. The display is only provided to help editors when editing the concept map.
  /// The display is ignored when processing the map.
  final String? display;

  /// Concept in target system for element
  /// A concept from the target value set that this concept maps to.
  /// Ideally there would only be one map, with equal or equivalent mapping. But multiple maps are allowed for several narrower options, or to assert that other concepts are unmatched.
  final List<ConceptMapGroupElementTarget>? target;
  ConceptMapGroupElement({
    this.code,
    this.display,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.target,
  });

  @override
  factory ConceptMapGroupElement.fromJson(Map<String, dynamic> json) {
    return ConceptMapGroupElement(
      code: json['code'] as String?,
      display: json['display'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      target: (json['target'] as List<dynamic>?)
          ?.map((e) => ConceptMapGroupElementTarget.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'display': display,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'target': target?.map((e) => e.toJson()).toList(),
      };

  @override
  ConceptMapGroupElement copyWith({
    String? code,
    String? display,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<ConceptMapGroupElementTarget>? target,
  }) {
    return ConceptMapGroupElement(
      code: code ?? this.code,
      display: display ?? this.display,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      target: target ?? this.target,
    );
  }
}
