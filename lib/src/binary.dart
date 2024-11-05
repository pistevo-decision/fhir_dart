part of '../fhir_dart.dart';

/// Typically, Binary resources are used for handling content such as:
/// * CDA Documents (i.e. with XDS)
/// * PDF Documents
/// * Images (the Media resource is preferred for handling images, but not possible when the content is already binary - e.g. XDS).
/// A resource that represents the data of a single raw artifact as digital content accessible in its native format.  A Binary resource can contain any content, whether text, image, pdf, zip archive, etc.
/// There are situations where it is useful or required to handle pure binary content using the same framework as other resources.
class Binary extends Resource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Binary';

  /// MimeType of the binary content represented as a standard MimeType (BCP 13).
  final String contentType;

  /// The actual content, base64 encoded.
  /// If the content type is itself base64 encoding, then this will be base64 encoded twice - what is created by un-base64ing the content must be the specified content type.
  final String? data;

  /// Identifies another resource to use as proxy when enforcing access control
  /// This element identifies another resource that can be used as a proxy of the security sensitivity to use when deciding and enforcing access control rules for the Binary resource. Given that the Binary resource contains very few elements that can be used to determine the sensitivity of the data and relationships to individuals, the referenced resource stands in as a proxy equivalent for this purpose. This referenced resource may be related to the Binary (e.g. Media, DocumentReference), or may be some non-related Resource purely as a security proxy. E.g. to identify that the binary resource relates to a patient, and access should only be granted to applications that have access to the patient.
  /// Very often, a server will also know of a resource that references the binary, and can automatically apply the appropriate access rules based on that reference. However, there are some circumstances where this is not appropriate, e.g. the binary is uploaded directly to the server without any linking resource, the binary is referred to from multiple different resources, and/or the binary is content such as an application logo that has less protection than any of the resources that reference it.
  final Reference? securityContext;
  Binary({
    required this.contentType,
    this.data,
    super.id,
    super.implicitRules,
    super.language,
    super.meta,
    this.securityContext,
  });

  @override
  factory Binary.fromJson(Map<String, dynamic> json) {
    return Binary(
      contentType: json['contentType'] as String,
      data: json['data'] as String?,
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      securityContext: json['securityContext'] != null
          ? Reference.fromJson(
              (json['securityContext'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contentType': contentType,
        'data': data,
        'id': id,
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'securityContext': securityContext?.toJson(),
      };

  @override
  Binary copyWith({
    String? contentType,
    String? data,
    String? id,
    String? implicitRules,
    String? language,
    Meta? meta,
    Reference? securityContext,
  }) {
    return Binary(
      contentType: contentType ?? this.contentType,
      data: data ?? this.data,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      securityContext: securityContext ?? this.securityContext,
    );
  }
}
