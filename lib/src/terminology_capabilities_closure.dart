part of '../fhir_dart.dart';

/// Information about the [ConceptMap/$closure](conceptmap-operation-closure.html) operation
/// Whether the $closure operation is supported.
class TerminologyCapabilitiesClosure extends BackboneElement
    implements FhirResource {
  /// If cross-system closure is supported.
  final bool? translation;
  TerminologyCapabilitiesClosure({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.translation,
  });

  @override
  factory TerminologyCapabilitiesClosure.fromJson(Map<String, dynamic> json) {
    return TerminologyCapabilitiesClosure(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      translation: json['translation'] as bool?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'translation': translation,
      };

  @override
  TerminologyCapabilitiesClosure copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    bool? translation,
  }) {
    return TerminologyCapabilitiesClosure(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      translation: translation ?? this.translation,
    );
  }
}
