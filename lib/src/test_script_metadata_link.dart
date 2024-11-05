part of '../fhir_dart.dart';

/// Links to the FHIR specification
/// A link to the FHIR specification that this test is covering.
class TestScriptMetadataLink extends BackboneElement implements FhirResource {
  /// Short description of the link.
  final String? description;

  /// URL to the specification
  /// URL to a particular requirement or feature within the FHIR specification.
  final String url;
  TestScriptMetadataLink({
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.url,
  });

  @override
  factory TestScriptMetadataLink.fromJson(Map<String, dynamic> json) {
    return TestScriptMetadataLink(
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      url: json['url'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'url': url,
      };

  @override
  TestScriptMetadataLink copyWith({
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? url,
  }) {
    return TestScriptMetadataLink(
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
    );
  }
}
