part of '../fhir_dart.dart';

 /// Map element to another set of definitions
 /// Identifies a concept from an external specification that roughly corresponds to this element.
 /// Mappings are not necessarily specific enough for safe translation.
class ElementDefinitionMapping extends Element implements FhirResource {
   /// Comments about the mapping or its use
   /// Comments that provide information about the mapping or its use.
  final String? comment;
   /// Reference to mapping declaration
   /// An internal reference to the definition of a mapping.
  final String identity;
   /// Computable language of mapping
   /// Identifies the computable language in which mapping.map is expressed.
   /// If omitted, then there can be no expectation of computational interpretation of the mapping.
  final String? language;
   /// Details of the mapping
   /// Expresses what part of the target specification corresponds to this element.
   /// For most mappings, the syntax is undefined.  Syntax will be provided for mappings to the RIM.  Multiple mappings may be possible and may include constraints on other resource elements that identify when a particular mapping applies.
  final String map;
  ElementDefinitionMapping({
    this.comment,
    super.fhirExtension,
    super.id,
    required this.identity,
    this.language,
    required this.map,
  });
  
  @override
  factory ElementDefinitionMapping.fromJson(Map<String, dynamic> json) {
    return ElementDefinitionMapping(
      comment: json['comment'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identity: json['identity'] as String,
      language: json['language'] as String?,
      map: json['map'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'comment': comment,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identity': identity,
      'language': language,
      'map': map,
    };
  
  @override
  ElementDefinitionMapping copyWith({
    String? comment,
    List<Extension>? fhirExtension,
    String? id,
    String? identity,
    String? language,
    String? map,
  }) {
    return ElementDefinitionMapping(
      comment: comment ?? this.comment,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identity: identity ?? this.identity,
      language: language ?? this.language,
      map: map ?? this.map,
    );
  }
}
