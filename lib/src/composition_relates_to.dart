part of '../fhir_dart.dart';

/// Relationships to other compositions/documents
/// Relationships that this composition has with other compositions or documents that already exist.
/// A document is a version specific composition.
class CompositionRelatesTo extends BackboneElement implements FhirResource {
  /// The type of relationship that this composition has with anther composition or document.
  /// If this document appends another document, then the document cannot be fully understood without also accessing the referenced document.
  final String
      code; // Possible values: 'replaces', 'transforms', 'signs', 'appends'
  /// Target of the relationship
  /// The target composition/document of this relationship.
  final Identifier? targetIdentifier;

  /// Target of the relationship
  /// The target composition/document of this relationship.
  final Reference? targetReference;
  CompositionRelatesTo({
    required this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.targetIdentifier,
    this.targetReference,
  });

  @override
  factory CompositionRelatesTo.fromJson(Map<String, dynamic> json) {
    return CompositionRelatesTo(
      code: json['code'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      targetIdentifier: json['targetIdentifier'] != null
          ? Identifier.fromJson(
              (json['targetIdentifier'] as Map).cast<String, dynamic>())
          : null,
      targetReference: json['targetReference'] != null
          ? Reference.fromJson(
              (json['targetReference'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'targetIdentifier': targetIdentifier?.toJson(),
        'targetReference': targetReference?.toJson(),
      };

  @override
  CompositionRelatesTo copyWith({
    String? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Identifier? targetIdentifier,
    Reference? targetReference,
  }) {
    return CompositionRelatesTo(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      targetIdentifier: targetIdentifier ?? this.targetIdentifier,
      targetReference: targetReference ?? this.targetReference,
    );
  }
}
