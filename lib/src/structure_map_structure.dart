part of '../fhir_dart.dart';

 /// Structure Definition used by this map
 /// A structure definition used by this map. The structure definition may describe instances that are converted, or the instances that are produced.
 /// It is not necessary for a structure map to identify any dependent structures, though not listing them may restrict its usefulness.
class StructureMapStructure extends BackboneElement implements FhirResource {
   /// Name for type in this map
   /// The name used for this type in the map.
   /// This is needed if both types have the same name (e.g. version conversion).
  final String? alias;
   /// Documentation on use of structure
   /// Documentation that describes how the structure is used in the mapping.
  final String? documentation;
   /// How the referenced structure is used in this mapping.
  final String mode; // Possible values: 'source', 'queried', 'target', 'produced'
   /// Canonical reference to structure definition
   /// The canonical reference to the structure.
  final String url;
  StructureMapStructure({
    this.alias,
    this.documentation,
    super.fhirExtension,
    super.id,
    required this.mode,
    super.modifierExtension,
    required this.url,
  });
  
  @override
  factory StructureMapStructure.fromJson(Map<String, dynamic> json) {
    return StructureMapStructure(
      alias: json['alias'] as String?,
      documentation: json['documentation'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      mode: json['mode'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      url: json['url'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'alias': alias,
      'documentation': documentation,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'mode': mode,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'url': url,
    };
  
  @override
  StructureMapStructure copyWith({
    String? alias,
    String? documentation,
    List<Extension>? fhirExtension,
    String? id,
    String? mode,
    List<Extension>? modifierExtension,
    String? url,
  }) {
    return StructureMapStructure(
      alias: alias ?? this.alias,
      documentation: documentation ?? this.documentation,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      mode: mode ?? this.mode,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
    );
  }
}
