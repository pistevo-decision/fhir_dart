part of '../fhir_dart.dart';

/// Entry in the bundle - will have a resource or information
/// An entry in a bundle resource - will either contain a resource or information about a resource (transactions and history only).
class BundleEntry extends BackboneElement implements FhirResource {
  /// URI for resource (Absolute URL server address or URI for UUID/OID)
  /// The Absolute URL for the resource.  The fullUrl SHALL NOT disagree with the id in the resource - i.e. if the fullUrl is not a urn:uuid, the URL shall be version-independent URL consistent with the Resource.id. The fullUrl is a version independent reference to the resource. The fullUrl element SHALL have a value except that:
  /// * fullUrl can be empty on a POST (although it does not need to when specifying a temporary id for reference in the bundle)
  /// * Results from operations might involve resources that are not identified.
  /// fullUrl might not be [unique in the context of a resource](bundle.html#bundle-unique). Note that since [FHIR resources do not need to be served through the FHIR API](references.html), the fullURL might be a URN or an absolute URL that does not end with the logical id of the resource (Resource.id). However, but if the fullUrl does look like a RESTful server URL (e.g. meets the [regex](references.html#regex), then the 'id' portion of the fullUrl SHALL end with the Resource.id.
  /// Note that the fullUrl is not the same as the canonical URL - it's an absolute url for an endpoint serving the resource (these will happen to have the same value on the canonical server for the resource with the canonical URL).
  final String? fullUrl;

  /// Links related to this entry
  /// A series of links that provide context to this entry.
  final List<BundleLink>? link;

  /// Additional execution information (transaction/batch/history)
  /// Additional information about how this entry should be processed as part of a transaction or batch.  For history, it shows how the entry was processed to create the version contained in the entry.
  final BundleEntryRequest? request;

  /// A resource in the bundle
  /// The Resource for the entry. The purpose/meaning of the resource is determined by the Bundle.type.
  final FhirResource? resource;

  /// Results of execution (transaction/batch/history)
  /// Indicates the results of processing the corresponding 'request' entry in the batch or transaction being responded to or what the results of an operation where when returning history.
  final BundleEntryResponse? response;

  /// Search related information
  /// Information about the search process that lead to the creation of this entry.
  final BundleEntrySearch? search;
  BundleEntry({
    super.fhirExtension,
    this.fullUrl,
    super.id,
    this.link,
    super.modifierExtension,
    this.request,
    this.resource,
    this.response,
    this.search,
  });

  @override
  factory BundleEntry.fromJson(Map<String, dynamic> json) {
    return BundleEntry(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fullUrl: json['fullUrl'] as String?,
      id: json['id'] as String?,
      link: (json['link'] as List<dynamic>?)
          ?.map((e) => BundleLink.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      request: json['request'] != null
          ? BundleEntryRequest.fromJson(
              (json['request'] as Map).cast<String, dynamic>())
          : null,
      resource: json['resource'] != null
          ? FhirResource.fromJson(
              (json['resource'] as Map).cast<String, dynamic>())
          : null,
      response: json['response'] != null
          ? BundleEntryResponse.fromJson(
              (json['response'] as Map).cast<String, dynamic>())
          : null,
      search: json['search'] != null
          ? BundleEntrySearch.fromJson(
              (json['search'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'fullUrl': fullUrl,
        'id': id,
        'link': link?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'request': request?.toJson(),
        'resource': resource?.toJson(),
        'response': response?.toJson(),
        'search': search?.toJson(),
      };

  @override
  BundleEntry copyWith({
    List<Extension>? fhirExtension,
    String? fullUrl,
    String? id,
    List<BundleLink>? link,
    List<Extension>? modifierExtension,
    BundleEntryRequest? request,
    FhirResource? resource,
    BundleEntryResponse? response,
    BundleEntrySearch? search,
  }) {
    return BundleEntry(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      fullUrl: fullUrl ?? this.fullUrl,
      id: id ?? this.id,
      link: link ?? this.link,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      request: request ?? this.request,
      resource: resource ?? this.resource,
      response: response ?? this.response,
      search: search ?? this.search,
    );
  }
}
