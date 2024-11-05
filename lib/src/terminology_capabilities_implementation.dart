part of '../fhir_dart.dart';

/// If this describes a specific instance
/// Identifies a specific implementation instance that is described by the terminology capability statement - i.e. a particular installation, rather than the capabilities of a software program.
class TerminologyCapabilitiesImplementation extends BackboneElement
    implements FhirResource {
  /// Describes this specific instance
  /// Information about the specific installation that this terminology capability statement relates to.
  final String description;

  /// Base URL for the implementation
  /// An absolute base URL for the implementation.
  final String? url;
  TerminologyCapabilitiesImplementation({
    required this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.url,
  });

  @override
  factory TerminologyCapabilitiesImplementation.fromJson(
      Map<String, dynamic> json) {
    return TerminologyCapabilitiesImplementation(
      description: json['description'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      url: json['url'] as String?,
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
  TerminologyCapabilitiesImplementation copyWith({
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? url,
  }) {
    return TerminologyCapabilitiesImplementation(
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
    );
  }
}
