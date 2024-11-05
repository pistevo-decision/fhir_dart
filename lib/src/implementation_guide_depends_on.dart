part of '../fhir_dart.dart';

/// Another Implementation guide this depends on
/// Another implementation guide that this implementation depends on. Typically, an implementation guide uses value sets, profiles etc.defined in other implementation guides.
class ImplementationGuideDependsOn extends BackboneElement
    implements FhirResource {
  /// NPM Package name for IG this depends on
  /// The NPM package name for the Implementation Guide that this IG depends on.
  final String? packageId;

  /// Identity of the IG that this depends on
  /// A canonical reference to the Implementation guide for the dependency.
  /// Usually, A canonical reference to the implementation guide is the same as the master location at which the implementation guide is published.
  final String uri;

  /// Version of the IG
  /// The version of the IG that is depended on, when the correct version is required to understand the IG correctly.
  /// This follows the syntax of the NPM packaging version field - see [[reference]].
  final String? version;
  ImplementationGuideDependsOn({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.packageId,
    required this.uri,
    this.version,
  });

  @override
  factory ImplementationGuideDependsOn.fromJson(Map<String, dynamic> json) {
    return ImplementationGuideDependsOn(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      packageId: json['packageId'] as String?,
      uri: json['uri'] as String,
      version: json['version'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'packageId': packageId,
        'uri': uri,
        'version': version,
      };

  @override
  ImplementationGuideDependsOn copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? packageId,
    String? uri,
    String? version,
  }) {
    return ImplementationGuideDependsOn(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      packageId: packageId ?? this.packageId,
      uri: uri ?? this.uri,
      version: version ?? this.version,
    );
  }
}
