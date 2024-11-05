part of '../fhir_dart.dart';

/// Concepts in the code system
/// Concepts that are in the code system. The concept definitions are inherently hierarchical, but the definitions must be consulted to determine what the meanings of the hierarchical relationships are.
/// If this is empty, it means that the code system resource does not represent the content of the code system.
class CodeSystemConcept extends BackboneElement implements FhirResource {
  /// Code that identifies concept
  /// A code - a text symbol - that uniquely identifies the concept within the code system.
  final String code;

  /// Child Concepts (is-a/contains/categorizes)
  /// Defines children of a concept to produce a hierarchy of concepts. The nature of the relationships is variable (is-a/contains/categorizes) - see hierarchyMeaning.
  final List<CodeSystemConcept>? concept;

  /// Formal definition
  /// The formal definition of the concept. The code system resource does not make formal definitions required, because of the prevalence of legacy systems. However, they are highly recommended, as without them there is no formal meaning associated with the concept.
  final String? definition;

  /// Additional representations for the concept - other languages, aliases, specialized purposes, used for particular purposes, etc.
  /// Concepts have both a ```display``` and an array of ```designation```. The display is equivalent to a special designation with an implied ```designation.use``` of "primary code" and a language equal to the [Resource Language](resource.html#language).
  final List<CodeSystemConceptDesignation>? designation;

  /// Text to display to the user
  /// A human readable string that is the recommended default way to present this concept to a user.
  final String? display;

  /// Property value for the concept
  /// A property value for this concept.
  final List<CodeSystemConceptProperty>? property;
  CodeSystemConcept({
    required this.code,
    this.concept,
    this.definition,
    this.designation,
    this.display,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.property,
  });

  @override
  factory CodeSystemConcept.fromJson(Map<String, dynamic> json) {
    return CodeSystemConcept(
      code: json['code'] as String,
      concept: (json['concept'] as List<dynamic>?)
          ?.map((e) =>
              CodeSystemConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      definition: json['definition'] as String?,
      designation: (json['designation'] as List<dynamic>?)
          ?.map((e) => CodeSystemConceptDesignation.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      display: json['display'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map((e) => CodeSystemConceptProperty.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'concept': concept?.map((e) => e.toJson()).toList(),
        'definition': definition,
        'designation': designation?.map((e) => e.toJson()).toList(),
        'display': display,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'property': property?.map((e) => e.toJson()).toList(),
      };

  @override
  CodeSystemConcept copyWith({
    String? code,
    List<CodeSystemConcept>? concept,
    String? definition,
    List<CodeSystemConceptDesignation>? designation,
    String? display,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<CodeSystemConceptProperty>? property,
  }) {
    return CodeSystemConcept(
      code: code ?? this.code,
      concept: concept ?? this.concept,
      definition: definition ?? this.definition,
      designation: designation ?? this.designation,
      display: display ?? this.display,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      property: property ?? this.property,
    );
  }
}
