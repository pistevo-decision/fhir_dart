part of '../fhir_dart.dart';

/// External specification that the content is mapped to
/// An external specification that the content is mapped to.
class StructureDefinitionMapping extends BackboneElement
    implements FhirResource {
  /// Versions, Issues, Scope limitations etc.
  /// Comments about this mapping, including version notes, issues, scope limitations, and other important notes for usage.
  final String? comment;

  /// Internal id when this mapping is used
  /// An Internal id that is used to identify this mapping set when specific mappings are made.
  /// The specification is described once, with general comments, and then specific mappings are made that reference this declaration.
  final String identity;

  /// Names what this mapping refers to
  /// A name for the specification that is being mapped to.
  final String? name;

  /// Identifies what this mapping refers to
  /// An absolute URI that identifies the specification that this mapping is expressed to.
  /// A formal identity for the specification being mapped to helps with identifying maps consistently.
  final String? uri;
  StructureDefinitionMapping({
    this.comment,
    super.fhirExtension,
    super.id,
    required this.identity,
    super.modifierExtension,
    this.name,
    this.uri,
  });

  @override
  factory StructureDefinitionMapping.fromJson(Map<String, dynamic> json) {
    return StructureDefinitionMapping(
      comment: json['comment'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identity: json['identity'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      uri: json['uri'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'comment': comment,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identity': identity,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'uri': uri,
      };

  @override
  StructureDefinitionMapping copyWith({
    String? comment,
    List<Extension>? fhirExtension,
    String? id,
    String? identity,
    List<Extension>? modifierExtension,
    String? name,
    String? uri,
  }) {
    return StructureDefinitionMapping(
      comment: comment ?? this.comment,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identity: identity ?? this.identity,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      uri: uri ?? this.uri,
    );
  }
}
