part of '../fhir_dart.dart';

/// A concept defined in the system
/// Specifies a concept to be included or excluded.
/// The list of concepts is considered ordered, though the order might not have any particular significance. Typically, the order of an expansion follows that defined in the compose element.
class ValueSetComposeIncludeConcept extends BackboneElement
    implements FhirResource {
  /// Code or expression from system
  /// Specifies a code for the concept to be included or excluded.
  /// Expressions are allowed if defined by the underlying code system.
  final String code;

  /// Additional representations for this concept when used in this value set - other languages, aliases, specialized purposes, used for particular purposes, etc.
  /// Concepts have both a ```display``` and an array of ```designation```. The display is equivalent to a special designation with an implied ```designation.use``` of "primary code" and a language equal to the [Resource Language](resource.html#language).
  final List<ValueSetComposeIncludeConceptDesignation>? designation;

  /// Text to display for this code for this value set in this valueset
  /// The text to display to the user for this concept in the context of this valueset. If no display is provided, then applications using the value set use the display specified for the code by the system.
  /// The value set resource allows for an alternative display to be specified for when this concept is used in this particular value set. See notes in the value set narrative about the correct use of this element.
  final String? display;
  ValueSetComposeIncludeConcept({
    required this.code,
    this.designation,
    this.display,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory ValueSetComposeIncludeConcept.fromJson(Map<String, dynamic> json) {
    return ValueSetComposeIncludeConcept(
      code: json['code'] as String,
      designation: (json['designation'] as List<dynamic>?)
          ?.map((e) => ValueSetComposeIncludeConceptDesignation.fromJson(
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
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'designation': designation?.map((e) => e.toJson()).toList(),
        'display': display,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  ValueSetComposeIncludeConcept copyWith({
    String? code,
    List<ValueSetComposeIncludeConceptDesignation>? designation,
    String? display,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return ValueSetComposeIncludeConcept(
      code: code ?? this.code,
      designation: designation ?? this.designation,
      display: display ?? this.display,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
