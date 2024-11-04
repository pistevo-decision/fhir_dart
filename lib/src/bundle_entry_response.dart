part of '../fhir_dart.dart';

 /// Results of execution (transaction/batch/history)
 /// Indicates the results of processing the corresponding 'request' entry in the batch or transaction being responded to or what the results of an operation where when returning history.
class BundleEntryResponse extends BackboneElement implements FhirResource {
   /// The Etag for the resource (if relevant)
   /// The Etag for the resource, if the operation for the entry produced a versioned resource (see [Resource Metadata and Versioning](http.html#versioning) and [Managing Resource Contention](http.html#concurrency)).
   /// Etags match the Resource.meta.versionId. The ETag has to match the version id in the header if a resource is included.
  final String? etag;
   /// Server's date time modified
   /// The date/time that the resource was modified on the server.
   /// This has to match the same time in the meta header (meta.lastUpdated) if a resource is included.
  final String? lastModified;
   /// The location (if the operation returns a location)
   /// The location header created by processing this operation, populated if the operation returns a location.
  final String? location;
   /// OperationOutcome with hints and warnings (for batch/transaction)
   /// An OperationOutcome containing hints and warnings produced as part of processing this entry in a batch or transaction.
   /// For a POST/PUT operation, this is the equivalent outcome that would be returned for prefer = operationoutcome - except that the resource is always returned whether or not the outcome is returned.
   /// This outcome is not used for error responses in batch/transaction, only for hints and warnings. In a batch operation, the error will be in Bundle.entry.response, and for transaction, there will be a single OperationOutcome instead of a bundle in the case of an error.
  final Resource? outcome;
   /// Status response code (text optional)
   /// The status code returned by processing this entry. The status SHALL start with a 3 digit HTTP code (e.g. 404) and may contain the standard HTTP description associated with the status code.
  final String status;
  BundleEntryResponse({
    this.etag,
    super.fhirExtension,
    super.id,
    this.lastModified,
    this.location,
    super.modifierExtension,
    this.outcome,
    required this.status,
  });
  
  @override
  factory BundleEntryResponse.fromJson(Map<String, dynamic> json) {
    return BundleEntryResponse(
      etag: json['etag'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      lastModified: json['lastModified'] as String?,
      location: json['location'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      outcome: json['outcome'] != null ? Resource.fromJson(json['outcome'] as Map<String, dynamic>) : null,
      status: json['status'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'etag': etag,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'lastModified': lastModified,
      'location': location,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'outcome': outcome?.toJson(),
      'status': status,
    };
  
  @override
  BundleEntryResponse copyWith({
    String? etag,
    List<Extension>? fhirExtension,
    String? id,
    String? lastModified,
    String? location,
    List<Extension>? modifierExtension,
    Resource? outcome,
    String? status,
  }) {
    return BundleEntryResponse(
      etag: etag ?? this.etag,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      lastModified: lastModified ?? this.lastModified,
      location: location ?? this.location,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      outcome: outcome ?? this.outcome,
      status: status ?? this.status,
    );
  }
}
