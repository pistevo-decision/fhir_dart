part of '../fhir_dart.dart';

/// Each related artifact is either an attachment, or a reference to another knowledge resource, but not both.
/// Base StructureDefinition for RelatedArtifact Type: Related artifacts such as additional documentation, justification, or bibliographic references.
/// Knowledge resources must be able to provide enough information for consumers of the content (and/or interventions or results produced by the content) to be able to determine and understand the justification for and evidence in support of the content.
class RelatedArtifact extends Element implements FhirResource {
  /// Bibliographic citation for the artifact
  /// A bibliographic citation for the related artifact. This text SHOULD be formatted according to an accepted citation format.
  /// Additional structured information about citations should be captured as extensions.
  final String? citation;

  /// Brief description of the related artifact
  /// A brief description of the document or knowledge resource being referenced, suitable for display to a consumer.
  final String? display;

  /// What document is being referenced
  /// The document being referenced, represented as an attachment. This is exclusive with the resource element.
  final Attachment? document;

  /// Short label
  /// A short label that can be used to reference the citation from elsewhere in the containing artifact, such as a footnote index.
  final String? label;

  /// What resource is being referenced
  /// The related resource, such as a library, value set, profile, or other knowledge resource.
  /// If the type is predecessor, this is a reference to the succeeding knowledge resource. If the type is successor, this is a reference to the prior knowledge resource.
  final String? resource;

  /// The type of relationship to the related artifact.
  final String
      type; // Possible values: 'documentation', 'justification', 'citation', 'predecessor', 'successor', 'derived-from', 'depends-on', 'composed-of'
  /// Where the artifact can be accessed
  /// A url for the artifact that can be followed to access the actual content.
  /// If a document or resource element is present, this element SHALL NOT be provided (use the url or reference in the Attachment or resource reference).
  final String? url;
  RelatedArtifact({
    this.citation,
    this.display,
    this.document,
    super.fhirExtension,
    super.id,
    this.label,
    this.resource,
    required this.type,
    this.url,
  });

  @override
  factory RelatedArtifact.fromJson(Map<String, dynamic> json) {
    return RelatedArtifact(
      citation: json['citation'] as String?,
      display: json['display'] as String?,
      document: json['document'] != null
          ? Attachment.fromJson(json['document'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      label: json['label'] as String?,
      resource: json['resource'] as String?,
      type: json['type'] as String,
      url: json['url'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'citation': citation,
        'display': display,
        'document': document?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'label': label,
        'resource': resource,
        'type': type,
        'url': url,
      };

  @override
  RelatedArtifact copyWith({
    String? citation,
    String? display,
    Attachment? document,
    List<Extension>? fhirExtension,
    String? id,
    String? label,
    String? resource,
    String? type,
    String? url,
  }) {
    return RelatedArtifact(
      citation: citation ?? this.citation,
      display: display ?? this.display,
      document: document ?? this.document,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      label: label ?? this.label,
      resource: resource ?? this.resource,
      type: type ?? this.type,
      url: url ?? this.url,
    );
  }
}
