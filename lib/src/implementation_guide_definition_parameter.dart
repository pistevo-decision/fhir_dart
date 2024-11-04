part of '../fhir_dart.dart';

/// Defines how IG is built by tools.
class ImplementationGuideDefinitionParameter extends BackboneElement
    implements FhirResource {
  /// apply | path-resource | path-pages | path-tx-cache | expansion-parameter | rule-broken-links | generate-xml | generate-json | generate-turtle | html-template.
  final String
      code; // Possible values: 'apply', 'path-resource', 'path-pages', 'path-tx-cache', 'expansion-parameter', 'rule-broken-links', 'generate-xml', 'generate-json', 'generate-turtle', 'html-template'
  /// Value for named type.
  final String value;
  ImplementationGuideDefinitionParameter({
    required this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.value,
  });

  @override
  factory ImplementationGuideDefinitionParameter.fromJson(
      Map<String, dynamic> json) {
    return ImplementationGuideDefinitionParameter(
      code: json['code'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      value: json['value'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'value': value,
      };

  @override
  ImplementationGuideDefinitionParameter copyWith({
    String? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? value,
  }) {
    return ImplementationGuideDefinitionParameter(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
    );
  }
}
