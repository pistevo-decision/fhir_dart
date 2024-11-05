part of '../fhir_dart.dart';

/// Links related to this Bundle
/// A series of links that provide context to this bundle.
/// Both Bundle.link and Bundle.entry.link are defined to support providing additional context when Bundles are used (e.g. [HATEOAS](http://en.wikipedia.org/wiki/HATEOAS)).
/// Bundle.entry.link corresponds to links found in the HTTP header if the resource in the entry was [read](http.html#read) directly.
/// This specification defines some specific uses of Bundle.link for [searching](search.html#conformance) and [paging](http.html#paging), but no specific uses for Bundle.entry.link, and no defined function in a transaction - the meaning is implementation specific.
class BundleLink extends BackboneElement implements FhirResource {
  /// See http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1
  /// A name which details the functional use for this link - see [http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1](http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1).
  final String relation;

  /// Reference details for the link
  /// The reference details for the link.
  final String url;
  BundleLink({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.relation,
    required this.url,
  });

  @override
  factory BundleLink.fromJson(Map<String, dynamic> json) {
    return BundleLink(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      relation: json['relation'] as String,
      url: json['url'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'relation': relation,
        'url': url,
      };

  @override
  BundleLink copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? relation,
    String? url,
  }) {
    return BundleLink(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relation: relation ?? this.relation,
      url: url ?? this.url,
    );
  }
}
