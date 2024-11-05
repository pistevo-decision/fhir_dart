part of '../fhir_dart.dart';

/// A template for building resources.
class ImplementationGuideDefinitionTemplate extends BackboneElement
    implements FhirResource {
  /// Type of template specified.
  final String code;

  /// The scope in which the template applies.
  final String? scope;

  /// The source location for the template.
  final String source;
  ImplementationGuideDefinitionTemplate({
    required this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.scope,
    required this.source,
  });

  @override
  factory ImplementationGuideDefinitionTemplate.fromJson(
      Map<String, dynamic> json) {
    return ImplementationGuideDefinitionTemplate(
      code: json['code'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      scope: json['scope'] as String?,
      source: json['source'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'scope': scope,
        'source': source,
      };

  @override
  ImplementationGuideDefinitionTemplate copyWith({
    String? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? scope,
    String? source,
  }) {
    return ImplementationGuideDefinitionTemplate(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      scope: scope ?? this.scope,
      source: source ?? this.source,
    );
  }
}
