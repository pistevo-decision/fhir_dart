part of '../fhir_dart.dart';

/// What to do when there is no mapping for the source concept. "Unmapped" does not include codes that are unmatched, and the unmapped element is ignored in a code is specified to have equivalence = unmatched.
/// This only applies if the source code has a system value that matches the system defined for the group.
class ConceptMapGroupUnmapped extends BackboneElement implements FhirResource {
  /// Fixed code when mode = fixed
  /// The fixed code to use when the mode = 'fixed'  - all unmapped codes are mapped to a single fixed code.
  final String? code;

  /// Display for the code
  /// The display for the code. The display is only provided to help editors when editing the concept map.
  /// The display is ignored when processing the map.
  final String? display;

  /// Defines which action to take if there is no match for the source concept in the target system designated for the group. One of 3 actions are possible: use the unmapped code (this is useful when doing a mapping between versions, and only a few codes have changed), use a fixed code (a default code), or alternatively, a reference to a different concept map can be provided (by canonical URL).
  final String mode; // Possible values: 'provided', 'fixed', 'other-map'
  /// canonical reference to an additional ConceptMap to use for mapping if the source concept is unmapped
  /// The canonical reference to an additional ConceptMap resource instance to use for mapping if this ConceptMap resource contains no matching mapping for the source concept.
  final String? url;
  ConceptMapGroupUnmapped({
    this.code,
    this.display,
    super.fhirExtension,
    super.id,
    required this.mode,
    super.modifierExtension,
    this.url,
  });

  @override
  factory ConceptMapGroupUnmapped.fromJson(Map<String, dynamic> json) {
    return ConceptMapGroupUnmapped(
      code: json['code'] as String?,
      display: json['display'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      mode: json['mode'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'display': display,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'mode': mode,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'url': url,
      };

  @override
  ConceptMapGroupUnmapped copyWith({
    String? code,
    String? display,
    List<Extension>? fhirExtension,
    String? id,
    String? mode,
    List<Extension>? modifierExtension,
    String? url,
  }) {
    return ConceptMapGroupUnmapped(
      code: code ?? this.code,
      display: display ?? this.display,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      mode: mode ?? this.mode,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
    );
  }
}
