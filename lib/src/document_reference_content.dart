part of '../fhir_dart.dart';

 /// Document referenced
 /// The document and format referenced. There may be multiple content element repetitions, each with a different format.
class DocumentReferenceContent extends BackboneElement implements FhirResource {
   /// Where to access the document
   /// The document or URL of the document along with critical metadata to prove content has integrity.
  final Attachment attachment;
   /// Format/content rules for the document
   /// An identifier of the document encoding, structure, and template that the document conforms to beyond the base format indicated in the mimeType.
   /// Note that while IHE mostly issues URNs for format types, not all documents can be identified by a URI.
  final Coding? format;
  DocumentReferenceContent({
    required this.attachment,
    super.fhirExtension,
    this.format,
    super.id,
    super.modifierExtension,
  });
  
  @override
  factory DocumentReferenceContent.fromJson(Map<String, dynamic> json) {
    return DocumentReferenceContent(
      attachment: Attachment.fromJson(json['attachment'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      format: json['format'] != null ? Coding.fromJson(json['format'] as Map<String, dynamic>) : null,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'attachment': attachment.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'format': format?.toJson(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  DocumentReferenceContent copyWith({
    Attachment? attachment,
    List<Extension>? fhirExtension,
    Coding? format,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return DocumentReferenceContent(
      attachment: attachment ?? this.attachment,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      format: format ?? this.format,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
