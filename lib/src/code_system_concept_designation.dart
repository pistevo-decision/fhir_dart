part of '../fhir_dart.dart';

/// Additional representations for the concept - other languages, aliases, specialized purposes, used for particular purposes, etc.
/// Concepts have both a ```display``` and an array of ```designation```. The display is equivalent to a special designation with an implied ```designation.use``` of "primary code" and a language equal to the [Resource Language](resource.html#language).
class CodeSystemConceptDesignation extends BackboneElement
    implements FhirResource {
  /// Human language of the designation
  /// The language this designation is defined for.
  /// In the absence of a language, the resource language applies.
  final String? language;

  /// Details how this designation would be used
  /// A code that details how this designation would be used.
  /// If no use is provided, the designation can be assumed to be suitable for general display to a human user.
  final Coding? use;

  /// The text value for this designation.
  final String value;
  CodeSystemConceptDesignation({
    super.fhirExtension,
    super.id,
    this.language,
    super.modifierExtension,
    this.use,
    required this.value,
  });

  @override
  factory CodeSystemConceptDesignation.fromJson(Map<String, dynamic> json) {
    return CodeSystemConceptDesignation(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      language: json['language'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      use: json['use'] != null
          ? Coding.fromJson((json['use'] as Map).cast<String, dynamic>())
          : null,
      value: json['value'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'language': language,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'use': use?.toJson(),
        'value': value,
      };

  @override
  CodeSystemConceptDesignation copyWith({
    List<Extension>? fhirExtension,
    String? id,
    String? language,
    List<Extension>? modifierExtension,
    Coding? use,
    String? value,
  }) {
    return CodeSystemConceptDesignation(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      language: language ?? this.language,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      use: use ?? this.use,
      value: value ?? this.value,
    );
  }
}
