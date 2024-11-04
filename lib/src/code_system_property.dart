part of '../fhir_dart.dart';

 /// Additional information supplied about each concept
 /// A property defines an additional slot through which additional information can be provided about a concept.
class CodeSystemProperty extends BackboneElement implements FhirResource {
   /// Identifies the property on the concepts, and when referred to in operations
   /// A code that is used to identify the property. The code is used internally (in CodeSystem.concept.property.code) and also externally, such as in property filters.
  final String code;
   /// Why the property is defined, and/or what it conveys
   /// A description of the property- why it is defined, and how its value might be used.
  final String? description;
   /// The type of the property value. Properties of type "code" contain a code defined by the code system (e.g. a reference to another defined concept).
  final String type; // Possible values: 'code', 'Coding', 'string', 'integer', 'boolean', 'dateTime', 'decimal'
   /// Formal identifier for the property
   /// Reference to the formal meaning of the property. One possible source of meaning is the [Concept Properties](codesystem-concept-properties.html) code system.
  final String? uri;
  CodeSystemProperty({
    required this.code,
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.type,
    this.uri,
  });
  
  @override
  factory CodeSystemProperty.fromJson(Map<String, dynamic> json) {
    return CodeSystemProperty(
      code: json['code'] as String,
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      type: json['type'] as String,
      uri: json['uri'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code,
      'description': description,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'type': type,
      'uri': uri,
    };
  
  @override
  CodeSystemProperty copyWith({
    String? code,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? type,
    String? uri,
  }) {
    return CodeSystemProperty(
      code: code ?? this.code,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      uri: uri ?? this.uri,
    );
  }
}
