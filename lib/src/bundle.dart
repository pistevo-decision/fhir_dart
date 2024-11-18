part of '../fhir_dart.dart';

/// A container for a collection of resources.
class Bundle extends Resource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'Bundle';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Entry in the bundle - will have a resource or information
  /// An entry in a bundle resource - will either contain a resource or information about a resource (transactions and history only).
  final List<BundleEntry>? entry;

  /// Persistent identifier for the bundle
  /// A persistent identifier for the bundle that won't change as a bundle is copied from server to server.
  /// Persistent identity generally only matters for batches of type Document, Message, and Collection. It would not normally be populated for search and history results and servers ignore Bundle.identifier when processing batches and transactions. For Documents  the .identifier SHALL be populated such that the .identifier is globally unique.
  final Identifier? identifier;

  /// Links related to this Bundle
  /// A series of links that provide context to this bundle.
  /// Both Bundle.link and Bundle.entry.link are defined to support providing additional context when Bundles are used (e.g. [HATEOAS](http://en.wikipedia.org/wiki/HATEOAS)).
  /// Bundle.entry.link corresponds to links found in the HTTP header if the resource in the entry was [read](http.html#read) directly.
  /// This specification defines some specific uses of Bundle.link for [searching](search.html#conformance) and [paging](http.html#paging), but no specific uses for Bundle.entry.link, and no defined function in a transaction - the meaning is implementation specific.
  final List<BundleLink>? link;

  /// Digital Signature - base64 encoded. XML-DSig or a JWT.
  /// The signature could be created by the "author" of the bundle or by the originating device.   Requirements around inclusion of a signature, verification of signatures and treatment of signed/non-signed bundles is implementation-environment specific.
  final Signature? signature;

  /// When the bundle was assembled
  /// The date/time that the bundle was assembled - i.e. when the resources were placed in the bundle.
  /// For many bundles, the timestamp is equal to .meta.lastUpdated, because they are not stored (e.g. search results). When a bundle is placed in a persistent store, .meta.lastUpdated will be usually be changed by the server. When the bundle is a message, a middleware agent altering the message (even if not stored) SHOULD update .meta.lastUpdated. .timestamp is used to track the original time of the Bundle, and SHOULD be populated.
  /// Usage:
  /// * document : the date the document was created. Note: the composition may predate the document, or be associated with multiple documents. The date of the composition - the authoring time - may be earlier than the document assembly time
  /// * message : the date that the content of the message was assembled. This date is not changed by middleware engines unless they add additional data that changes the meaning of the time of the message
  /// * history : the date that the history was assembled. This time would be used as the _since time to ask for subsequent updates
  /// * searchset : the time that the search set was assembled. Note that different pages MAY have different timestamps but need not. Having different timestamps does not imply that subsequent pages will represent or include changes made since the initial query
  /// * transaction | transaction-response | batch | batch-response | collection : no particular assigned meaning
  /// The timestamp value should be greater than the lastUpdated and other timestamps in the resources in the bundle, and it should be equal or earlier than the .meta.lastUpdated on the Bundle itself.
  final String? timestamp;

  /// If search, the total number of matches
  /// If a set of search matches, this is the total number of entries of type 'match' across all pages in the search.  It does not include search.mode = 'include' or 'outcome' entries and it does not provide a count of the number of entries in the Bundle.
  /// Only used if the bundle is a search result set. The total does not include resources such as OperationOutcome and included resources, only the total number of matching resources.
  final int? total;

  /// Indicates the purpose of this bundle - how it is intended to be used.
  /// It's possible to use a bundle for other purposes (e.g. a document can be accepted as a transaction). This is primarily defined so that there can be specific rules for some of the bundle types.
  final String
      type; // Possible values: 'document', 'message', 'transaction', 'transaction-response', 'batch', 'batch-response', 'history', 'searchset', 'collection'
  Bundle({
    this.entry,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.link,
    super.meta,
    this.signature,
    this.timestamp,
    this.total,
    required this.type,
  });

  @override
  factory Bundle.fromJson(Map<String, dynamic> json) {
    return Bundle(
      entry: (json['entry'] as List<dynamic>?)
          ?.map((e) => BundleEntry.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              (json['identifier'] as Map).cast<String, dynamic>())
          : null,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      link: (json['link'] as List<dynamic>?)
          ?.map((e) => BundleLink.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      signature: json['signature'] != null
          ? Signature.fromJson(
              (json['signature'] as Map).cast<String, dynamic>())
          : null,
      timestamp: json['timestamp'] as String?,
      total: json['total'] as int?,
      type: json['type'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'entry': entry?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.toJson(),
        'implicitRules': implicitRules,
        'language': language,
        'link': link?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'signature': signature?.toJson(),
        'timestamp': timestamp,
        'total': total,
        'type': type,
      };

  @override
  Bundle copyWith({
    List<BundleEntry>? entry,
    String? id,
    Identifier? identifier,
    String? implicitRules,
    String? language,
    List<BundleLink>? link,
    Meta? meta,
    Signature? signature,
    String? timestamp,
    int? total,
    String? type,
  }) {
    return Bundle(
      entry: entry ?? this.entry,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      link: link ?? this.link,
      meta: meta ?? this.meta,
      signature: signature ?? this.signature,
      timestamp: timestamp ?? this.timestamp,
      total: total ?? this.total,
      type: type ?? this.type,
    );
  }
}
