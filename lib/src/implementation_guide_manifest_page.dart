part of '../fhir_dart.dart';

/// HTML page within the parent IG
/// Information about a page within the IG.
class ImplementationGuideManifestPage extends BackboneElement
    implements FhirResource {
  /// Anchor available on the page
  /// The name of an anchor available on the page.
  /// Appending 'rendering' + "/" + page.name + "#" + page.anchor should resolve to the anchor.
  final List<String>? anchor;

  /// HTML page name
  /// Relative path to the page.
  /// Appending 'rendering' + "/" + this should resolve to the page.
  final String name;

  /// Title of the page, for references
  /// Label for the page intended for human display.
  final String? title;
  ImplementationGuideManifestPage({
    this.anchor,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.name,
    this.title,
  });

  @override
  factory ImplementationGuideManifestPage.fromJson(Map<String, dynamic> json) {
    return ImplementationGuideManifestPage(
      anchor:
          (json['anchor'] as List<dynamic>?)?.map((e) => e as String).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      title: json['title'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'anchor': anchor?.map((e) => e).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'title': title,
      };

  @override
  ImplementationGuideManifestPage copyWith({
    List<String>? anchor,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    String? title,
  }) {
    return ImplementationGuideManifestPage(
      anchor: anchor ?? this.anchor,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      title: title ?? this.title,
    );
  }
}
