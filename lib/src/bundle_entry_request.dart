part of '../fhir_dart.dart';

 /// Additional execution information (transaction/batch/history)
 /// Additional information about how this entry should be processed as part of a transaction or batch.  For history, it shows how the entry was processed to create the version contained in the entry.
class BundleEntryRequest extends BackboneElement implements FhirResource {
   /// For managing update contention
   /// Only perform the operation if the Etag value matches. For more information, see the API section ["Managing Resource Contention"](http.html#concurrency).
  final String? ifMatch;
   /// For managing cache currency
   /// Only perform the operation if the last updated date matches. See the API documentation for ["Conditional Read"](http.html#cread).
  final String? ifModifiedSince;
   /// For conditional creates
   /// Instruct the server not to perform the create if a specified resource already exists. For further information, see the API documentation for ["Conditional Create"](http.html#ccreate). This is just the query portion of the URL - what follows the "?" (not including the "?").
  final String? ifNoneExist;
   /// For managing cache currency
   /// If the ETag values match, return a 304 Not Modified status. See the API documentation for ["Conditional Read"](http.html#cread).
  final String? ifNoneMatch;
   /// In a transaction or batch, this is the HTTP action to be executed for this entry. In a history bundle, this indicates the HTTP action that occurred.
  final String method; // Possible values: 'GET', 'HEAD', 'POST', 'PUT', 'DELETE', 'PATCH'
   /// URL for HTTP equivalent of this entry
   /// The URL for this entry, relative to the root (the address to which the request is posted).
   /// E.g. for a Patient Create, the method would be "POST" and the URL would be "Patient". For a Patient Update, the method would be PUT and the URL would be "Patient/[id]".
  final String url;
  BundleEntryRequest({
    super.fhirExtension,
    super.id,
    this.ifMatch,
    this.ifModifiedSince,
    this.ifNoneExist,
    this.ifNoneMatch,
    required this.method,
    super.modifierExtension,
    required this.url,
  });
  
  @override
  factory BundleEntryRequest.fromJson(Map<String, dynamic> json) {
    return BundleEntryRequest(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      ifMatch: json['ifMatch'] as String?,
      ifModifiedSince: json['ifModifiedSince'] as String?,
      ifNoneExist: json['ifNoneExist'] as String?,
      ifNoneMatch: json['ifNoneMatch'] as String?,
      method: json['method'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      url: json['url'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'ifMatch': ifMatch,
      'ifModifiedSince': ifModifiedSince,
      'ifNoneExist': ifNoneExist,
      'ifNoneMatch': ifNoneMatch,
      'method': method,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'url': url,
    };
  
  @override
  BundleEntryRequest copyWith({
    List<Extension>? fhirExtension,
    String? id,
    String? ifMatch,
    String? ifModifiedSince,
    String? ifNoneExist,
    String? ifNoneMatch,
    String? method,
    List<Extension>? modifierExtension,
    String? url,
  }) {
    return BundleEntryRequest(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      ifMatch: ifMatch ?? this.ifMatch,
      ifModifiedSince: ifModifiedSince ?? this.ifModifiedSince,
      ifNoneExist: ifNoneExist ?? this.ifNoneExist,
      ifNoneMatch: ifNoneMatch ?? this.ifNoneMatch,
      method: method ?? this.method,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
    );
  }
}
