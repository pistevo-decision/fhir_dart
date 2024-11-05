part of '../fhir_dart.dart';

/// Message payload
/// Text, attachment(s), or resource(s) to be communicated to the recipient.
class CommunicationRequestPayload extends BackboneElement
    implements FhirResource {
  /// Message part content
  /// The communicated content (or for multi-part communications, one portion of the communication).
  final Attachment? contentAttachment;

  /// Message part content
  /// The communicated content (or for multi-part communications, one portion of the communication).
  final Reference? contentReference;

  /// Message part content
  /// The communicated content (or for multi-part communications, one portion of the communication).
  final String? contentString;
  CommunicationRequestPayload({
    this.contentAttachment,
    this.contentReference,
    this.contentString,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory CommunicationRequestPayload.fromJson(Map<String, dynamic> json) {
    return CommunicationRequestPayload(
      contentAttachment: json['contentAttachment'] != null
          ? Attachment.fromJson(
              (json['contentAttachment'] as Map).cast<String, dynamic>())
          : null,
      contentReference: json['contentReference'] != null
          ? Reference.fromJson(
              (json['contentReference'] as Map).cast<String, dynamic>())
          : null,
      contentString: json['contentString'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contentAttachment': contentAttachment?.toJson(),
        'contentReference': contentReference?.toJson(),
        'contentString': contentString,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  CommunicationRequestPayload copyWith({
    Attachment? contentAttachment,
    Reference? contentReference,
    String? contentString,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return CommunicationRequestPayload(
      contentAttachment: contentAttachment ?? this.contentAttachment,
      contentReference: contentReference ?? this.contentReference,
      contentString: contentString ?? this.contentString,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
