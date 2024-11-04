part of '../fhir_dart.dart';

/// Base StructureDefinition for Meta Type: The metadata about a resource. This is content in the resource that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
class Meta extends Element implements FhirResource {
  /// When the resource version last changed
  /// When the resource last changed - e.g. when the version changed.
  /// This value is always populated except when the resource is first being created. The server / resource manager sets this value; what a client provides is irrelevant. This is equivalent to the HTTP Last-Modified and SHOULD have the same value on a [read](http.html#read) interaction.
  final String? lastUpdated;

  /// Profiles this resource claims to conform to
  /// A list of profiles (references to [StructureDefinition](structuredefinition.html#) resources) that this resource claims to conform to. The URL is a reference to [StructureDefinition.url](structuredefinition-definitions.html#StructureDefinition.url).
  /// It is up to the server and/or other infrastructure of policy to determine whether/how these claims are verified and/or updated over time.  The list of profile URLs is a set.
  final List<String>? profile;

  /// Security Labels applied to this resource
  /// Security labels applied to this resource. These tags connect specific resources to the overall security policy and infrastructure.
  /// The security labels can be updated without changing the stated version of the resource. The list of security labels is a set. Uniqueness is based the system/code, and version and display are ignored.
  final List<Coding>? security;

  /// Identifies where the resource comes from
  /// A uri that identifies the source system of the resource. This provides a minimal amount of [Provenance](provenance.html#) information that can be used to track or differentiate the source of information in the resource. The source may identify another FHIR server, document, message, database, etc.
  /// In the provenance resource, this corresponds to Provenance.entity.what[x]. The exact use of the source (and the implied Provenance.entity.role) is left to implementer discretion. Only one nominated source is allowed; for additional provenance details, a full Provenance resource should be used.
  /// This element can be used to indicate where the current master source of a resource that has a canonical URL if the resource is no longer hosted at the canonical URL.
  final String? source;

  /// Tags applied to this resource. Tags are intended to be used to identify and relate resources to process and workflow, and applications are not required to consider the tags when interpreting the meaning of a resource.
  /// The tags can be updated without changing the stated version of the resource. The list of tags is a set. Uniqueness is based the system/code, and version and display are ignored.
  final List<Coding>? tag;

  /// Version specific identifier
  /// The version specific identifier, as it appears in the version portion of the URL. This value changes when the resource is created, updated, or deleted.
  /// The server assigns this value, and ignores what the client specifies, except in the case that the server is imposing version integrity on updates/deletes.
  final String? versionId;
  Meta({
    super.fhirExtension,
    super.id,
    this.lastUpdated,
    this.profile,
    this.security,
    this.source,
    this.tag,
    this.versionId,
  });

  @override
  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      lastUpdated: json['lastUpdated'] as String?,
      profile:
          (json['profile'] as List<dynamic>?)?.map((e) => e as String).toList(),
      security: (json['security'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: json['source'] as String?,
      tag: (json['tag'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
      versionId: json['versionId'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'lastUpdated': lastUpdated,
        'profile': profile?.map((e) => e).toList(),
        'security': security?.map((e) => e.toJson()).toList(),
        'source': source,
        'tag': tag?.map((e) => e.toJson()).toList(),
        'versionId': versionId,
      };

  @override
  Meta copyWith({
    List<Extension>? fhirExtension,
    String? id,
    String? lastUpdated,
    List<String>? profile,
    List<Coding>? security,
    String? source,
    List<Coding>? tag,
    String? versionId,
  }) {
    return Meta(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      profile: profile ?? this.profile,
      security: security ?? this.security,
      source: source ?? this.source,
      tag: tag ?? this.tag,
      versionId: versionId ?? this.versionId,
    );
  }
}
