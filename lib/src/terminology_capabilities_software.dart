part of '../fhir_dart.dart';

/// Software that is covered by this terminology capability statement.  It is used when the statement describes the capabilities of a particular software version, independent of an installation.
class TerminologyCapabilitiesSoftware extends BackboneElement
    implements FhirResource {
  /// A name the software is known by
  /// Name the software is known by.
  final String name;

  /// Version covered by this statement
  /// The version identifier for the software covered by this statement.
  /// If possible, a version should be specified, as statements are likely to be different for different versions of software.
  final String? version;
  TerminologyCapabilitiesSoftware({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.name,
    this.version,
  });

  @override
  factory TerminologyCapabilitiesSoftware.fromJson(Map<String, dynamic> json) {
    return TerminologyCapabilitiesSoftware(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      version: json['version'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'version': version,
      };

  @override
  TerminologyCapabilitiesSoftware copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    String? version,
  }) {
    return TerminologyCapabilitiesSoftware(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      version: version ?? this.version,
    );
  }
}
