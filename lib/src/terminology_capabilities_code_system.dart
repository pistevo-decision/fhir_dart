part of '../fhir_dart.dart';

/// A code system supported by the server
/// Identifies a code system that is supported by the server. If there is a no code system URL, then this declares the general assumptions a client can make about support for any CodeSystem resource.
/// The code system - identified by its system URL - may also be declared explicitly as a Code System Resource at /CodeSystem, but it might not be.
class TerminologyCapabilitiesCodeSystem extends BackboneElement
    implements FhirResource {
  /// Whether subsumption is supported
  /// True if subsumption is supported for this version of the code system.
  final bool? subsumption;

  /// URI for the Code System.
  final String? uri;

  /// Version of Code System supported
  /// For the code system, a list of versions that are supported by the server.
  /// Language translations might not be available for all codes.
  final List<TerminologyCapabilitiesCodeSystemVersion>? version;
  TerminologyCapabilitiesCodeSystem({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.subsumption,
    this.uri,
    this.version,
  });

  @override
  factory TerminologyCapabilitiesCodeSystem.fromJson(
      Map<String, dynamic> json) {
    return TerminologyCapabilitiesCodeSystem(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      subsumption: json['subsumption'] as bool?,
      uri: json['uri'] as String?,
      version: (json['version'] as List<dynamic>?)
          ?.map((e) => TerminologyCapabilitiesCodeSystemVersion.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'subsumption': subsumption,
        'uri': uri,
        'version': version?.map((e) => e.toJson()).toList(),
      };

  @override
  TerminologyCapabilitiesCodeSystem copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    bool? subsumption,
    String? uri,
    List<TerminologyCapabilitiesCodeSystemVersion>? version,
  }) {
    return TerminologyCapabilitiesCodeSystem(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      subsumption: subsumption ?? this.subsumption,
      uri: uri ?? this.uri,
      version: version ?? this.version,
    );
  }
}
