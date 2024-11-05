part of '../fhir_dart.dart';

/// Information about an assembled IG
/// Information about an assembled implementation guide, created by the publication tooling.
class ImplementationGuideManifest extends BackboneElement
    implements FhirResource {
  /// Image within the IG
  /// Indicates a relative path to an image that exists within the IG.
  final List<String>? image;

  /// Additional linkable file in IG
  /// Indicates the relative path of an additional non-page, non-image file that is part of the IG - e.g. zip, jar and similar files that could be the target of a hyperlink in a derived IG.
  final List<String>? other;

  /// HTML page within the parent IG
  /// Information about a page within the IG.
  final List<ImplementationGuideManifestPage>? page;

  /// Location of rendered implementation guide
  /// A pointer to official web page, PDF or other rendering of the implementation guide.
  final String? rendering;

  /// Resource in the implementation guide
  /// A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
  final List<ImplementationGuideManifestResource> resource;
  ImplementationGuideManifest({
    super.fhirExtension,
    super.id,
    this.image,
    super.modifierExtension,
    this.other,
    this.page,
    this.rendering,
    required this.resource,
  });

  @override
  factory ImplementationGuideManifest.fromJson(Map<String, dynamic> json) {
    return ImplementationGuideManifest(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      image:
          (json['image'] as List<dynamic>?)?.map((e) => e as String).toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      other:
          (json['other'] as List<dynamic>?)?.map((e) => e as String).toList(),
      page: (json['page'] as List<dynamic>?)
          ?.map((e) => ImplementationGuideManifestPage.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      rendering: json['rendering'] as String?,
      resource: (json['resource'] as List<dynamic>)
          .map((e) => ImplementationGuideManifestResource.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'image': image?.map((e) => e).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'other': other?.map((e) => e).toList(),
        'page': page?.map((e) => e.toJson()).toList(),
        'rendering': rendering,
        'resource': resource.map((e) => e.toJson()).toList(),
      };

  @override
  ImplementationGuideManifest copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<String>? image,
    List<Extension>? modifierExtension,
    List<String>? other,
    List<ImplementationGuideManifestPage>? page,
    String? rendering,
    List<ImplementationGuideManifestResource>? resource,
  }) {
    return ImplementationGuideManifest(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      image: image ?? this.image,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      other: other ?? this.other,
      page: page ?? this.page,
      rendering: rendering ?? this.rendering,
      resource: resource ?? this.resource,
    );
  }
}
