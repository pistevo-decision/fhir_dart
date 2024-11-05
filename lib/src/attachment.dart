part of '../fhir_dart.dart';

/// When providing a summary view (for example with Observation.value[x]) Attachment should be represented with a brief display text such as "Signed Procedure Consent".
/// Base StructureDefinition for Attachment Type: For referring to data content defined in other formats.
/// Many models need to include data defined in other specifications that is complex and opaque to the healthcare model. This includes documents, media recordings, structured data, etc.
class Attachment extends Element implements FhirResource {
  /// Mime type of the content, with charset etc.
  /// Identifies the type of the data in the attachment and allows a method to be chosen to interpret or render the data. Includes mime type parameters such as charset where appropriate.
  final String? contentType;

  /// Date attachment was first created
  /// The date that the attachment was first created.
  final String? creation;

  /// Data inline, base64ed
  /// The actual data of the attachment - a sequence of bytes, base64 encoded.
  /// The base64-encoded data SHALL be expressed in the same character set as the base resource XML or JSON.
  final String? data;

  /// Hash of the data (sha-1, base64ed)
  /// The calculated hash of the data using SHA-1. Represented using base64.
  /// The hash is calculated on the data prior to base64 encoding, if the data is based64 encoded. The hash is not intended to support digital signatures. Where protection against malicious threats a digital signature should be considered, see [Provenance.signature](provenance-definitions.html#Provenance.signature) for mechanism to protect a resource with a digital signature.
  final String? hash;

  /// Human language of the content (BCP-47)
  /// The human language of the content. The value can be any valid value according to BCP 47.
  final String? language;

  /// Number of bytes of content (if url provided)
  /// The number of bytes of data that make up this attachment (before base64 encoding, if that is done).
  /// The number of bytes is redundant if the data is provided as a base64binary, but is useful if the data is provided as a url reference.
  final int? size;

  /// Label to display in place of the data
  /// A label or set of text to display in place of the data.
  final String? title;

  /// Uri where the data can be found
  /// A location where the data can be accessed.
  /// If both data and url are provided, the url SHALL point to the same content as the data contains. Urls may be relative references or may reference transient locations such as a wrapping envelope using cid: though this has ramifications for using signatures. Relative URLs are interpreted relative to the service url, like a resource reference, rather than relative to the resource itself. If a URL is provided, it SHALL resolve to actual data.
  final String? url;
  Attachment({
    this.contentType,
    this.creation,
    this.data,
    super.fhirExtension,
    this.hash,
    super.id,
    this.language,
    this.size,
    this.title,
    this.url,
  });

  @override
  factory Attachment.fromJson(Map<String, dynamic> json) {
    return Attachment(
      contentType: json['contentType'] as String?,
      creation: json['creation'] as String?,
      data: json['data'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      hash: json['hash'] as String?,
      id: json['id'] as String?,
      language: json['language'] as String?,
      size: json['size'] as int?,
      title: json['title'] as String?,
      url: json['url'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contentType': contentType,
        'creation': creation,
        'data': data,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'hash': hash,
        'id': id,
        'language': language,
        'size': size,
        'title': title,
        'url': url,
      };

  @override
  Attachment copyWith({
    String? contentType,
    String? creation,
    String? data,
    List<Extension>? fhirExtension,
    String? hash,
    String? id,
    String? language,
    int? size,
    String? title,
    String? url,
  }) {
    return Attachment(
      contentType: contentType ?? this.contentType,
      creation: creation ?? this.creation,
      data: data ?? this.data,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      hash: hash ?? this.hash,
      id: id ?? this.id,
      language: language ?? this.language,
      size: size ?? this.size,
      title: title ?? this.title,
      url: url ?? this.url,
    );
  }
}
