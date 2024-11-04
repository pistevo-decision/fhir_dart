part of '../fhir_dart.dart';

/// Same source and target systems
/// A group of mappings that all have the same source and target system.
class ConceptMapGroup extends BackboneElement implements FhirResource {
  /// Mappings for a concept from the source set
  /// Mappings for an individual concept in the source to one or more concepts in the target.
  /// Generally, the ideal is that there would only be one mapping for each concept in the source value set, but a given concept may be mapped multiple times with different comments or dependencies.
  final List<ConceptMapGroupElement> element;

  /// Source system where concepts to be mapped are defined
  /// An absolute URI that identifies the source system where the concepts to be mapped are defined.
  /// This is not needed if the source value set is specified and it contains concepts from only a single system.
  final String? source;

  /// Specific version of the  code system
  /// The specific version of the code system, as determined by the code system authority.
  /// The specification of a particular code system version may be required for code systems which lack concept permanence.
  final String? sourceVersion;

  /// Target system that the concepts are to be mapped to
  /// An absolute URI that identifies the target system that the concepts will be mapped to.
  /// This is not needed if the target value set is specified and it contains concepts from only a single system. The group target may also be omitted if all of the target element equivalence values are 'unmatched'.
  final String? target;

  /// Specific version of the  code system
  /// The specific version of the code system, as determined by the code system authority.
  /// The specification of a particular code system version may be required for code systems which lack concept permanence.
  final String? targetVersion;

  /// What to do when there is no mapping for the source concept. "Unmapped" does not include codes that are unmatched, and the unmapped element is ignored in a code is specified to have equivalence = unmatched.
  /// This only applies if the source code has a system value that matches the system defined for the group.
  final ConceptMapGroupUnmapped? unmapped;
  ConceptMapGroup({
    required this.element,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.source,
    this.sourceVersion,
    this.target,
    this.targetVersion,
    this.unmapped,
  });

  @override
  factory ConceptMapGroup.fromJson(Map<String, dynamic> json) {
    return ConceptMapGroup(
      element: (json['element'] as List<dynamic>)
          .map(
              (e) => ConceptMapGroupElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: json['source'] as String?,
      sourceVersion: json['sourceVersion'] as String?,
      target: json['target'] as String?,
      targetVersion: json['targetVersion'] as String?,
      unmapped: json['unmapped'] != null
          ? ConceptMapGroupUnmapped.fromJson(
              json['unmapped'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'element': element.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'source': source,
        'sourceVersion': sourceVersion,
        'target': target,
        'targetVersion': targetVersion,
        'unmapped': unmapped?.toJson(),
      };

  @override
  ConceptMapGroup copyWith({
    List<ConceptMapGroupElement>? element,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? source,
    String? sourceVersion,
    String? target,
    String? targetVersion,
    ConceptMapGroupUnmapped? unmapped,
  }) {
    return ConceptMapGroup(
      element: element ?? this.element,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
      sourceVersion: sourceVersion ?? this.sourceVersion,
      target: target ?? this.target,
      targetVersion: targetVersion ?? this.targetVersion,
      unmapped: unmapped ?? this.unmapped,
    );
  }
}
