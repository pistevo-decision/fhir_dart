part of '../fhir_dart.dart';

/// Resource in the implementation guide
/// A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
class ImplementationGuideManifestResource extends BackboneElement
    implements FhirResource {
  /// Is an example/What is this an example of?
  /// If true or a reference, indicates the resource is an example instance.  If a reference is present, indicates that the example is an example of the specified profile.
  /// Typically, conformance resources and knowledge resources are directly part of the implementation guide, with their normal meaning, and patient linked resources are usually examples. However this is not always true.
  final bool? exampleBoolean;

  /// Is an example/What is this an example of?
  /// If true or a reference, indicates the resource is an example instance.  If a reference is present, indicates that the example is an example of the specified profile.
  /// Typically, conformance resources and knowledge resources are directly part of the implementation guide, with their normal meaning, and patient linked resources are usually examples. However this is not always true.
  final String? exampleCanonical;

  /// Location of the resource
  /// Where this resource is found.
  /// Usually this is a relative URL that locates the resource within the implementation guide. If you authoring an implementation guide, and will publish it using the FHIR publication tooling, use a URI that may point to a resource, or to one of various alternative representations (e.g. spreadsheet). The tooling will convert this when it publishes it.
  final Reference reference;

  /// Relative path for page in IG
  /// The relative path for primary page for this resource within the IG.
  /// Appending 'rendering' + "/" + this should resolve to the resource page.
  final String? relativePath;
  ImplementationGuideManifestResource({
    this.exampleBoolean,
    this.exampleCanonical,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.reference,
    this.relativePath,
  });

  @override
  factory ImplementationGuideManifestResource.fromJson(
      Map<String, dynamic> json) {
    return ImplementationGuideManifestResource(
      exampleBoolean: json['exampleBoolean'] as bool?,
      exampleCanonical: json['exampleCanonical'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reference: Reference.fromJson(
          (json['reference'] as Map).cast<String, dynamic>()),
      relativePath: json['relativePath'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'exampleBoolean': exampleBoolean,
        'exampleCanonical': exampleCanonical,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'reference': reference.toJson(),
        'relativePath': relativePath,
      };

  @override
  ImplementationGuideManifestResource copyWith({
    bool? exampleBoolean,
    String? exampleCanonical,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? reference,
    String? relativePath,
  }) {
    return ImplementationGuideManifestResource(
      exampleBoolean: exampleBoolean ?? this.exampleBoolean,
      exampleCanonical: exampleCanonical ?? this.exampleCanonical,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      relativePath: relativePath ?? this.relativePath,
    );
  }
}
