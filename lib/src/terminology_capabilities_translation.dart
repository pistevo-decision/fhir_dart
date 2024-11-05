part of '../fhir_dart.dart';

/// Information about the [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
class TerminologyCapabilitiesTranslation extends BackboneElement
    implements FhirResource {
  /// Whether the client must identify the map.
  final bool needsMap;
  TerminologyCapabilitiesTranslation({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.needsMap,
  });

  @override
  factory TerminologyCapabilitiesTranslation.fromJson(
      Map<String, dynamic> json) {
    return TerminologyCapabilitiesTranslation(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      needsMap: json['needsMap'] as bool,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'needsMap': needsMap,
      };

  @override
  TerminologyCapabilitiesTranslation copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    bool? needsMap,
  }) {
    return TerminologyCapabilitiesTranslation(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      needsMap: needsMap ?? this.needsMap,
    );
  }
}
