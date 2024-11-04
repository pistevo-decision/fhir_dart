part of '../fhir_dart.dart';

 /// Message payload
 /// Text, attachment(s), or resource(s) that was communicated to the recipient.
class CommunicationPayload extends BackboneElement implements FhirResource {
   /// Message part content
   /// A communicated content (or for multi-part communications, one portion of the communication).
  final Attachment? contentAttachment;
   /// Message part content
   /// A communicated content (or for multi-part communications, one portion of the communication).
  final Reference? contentReference;
   /// Message part content
   /// A communicated content (or for multi-part communications, one portion of the communication).
  final String? contentString;
  CommunicationPayload({
    this.contentAttachment,
    this.contentReference,
    this.contentString,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });
  
  @override
  factory CommunicationPayload.fromJson(Map<String, dynamic> json) {
    return CommunicationPayload(
      contentAttachment: json['contentAttachment'] != null ? Attachment.fromJson(json['contentAttachment'] as Map<String, dynamic>) : null,
      contentReference: json['contentReference'] != null ? Reference.fromJson(json['contentReference'] as Map<String, dynamic>) : null,
      contentString: json['contentString'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'contentAttachment': contentAttachment?.toJson(),
      'contentReference': contentReference?.toJson(),
      'contentString': contentString,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  CommunicationPayload copyWith({
    Attachment? contentAttachment,
    Reference? contentReference,
    String? contentString,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return CommunicationPayload(
      contentAttachment: contentAttachment ?? this.contentAttachment,
      contentReference: contentReference ?? this.contentReference,
      contentString: contentString ?? this.contentString,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
