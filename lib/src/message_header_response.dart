part of '../fhir_dart.dart';

/// If this is a reply to prior message
/// Information about the message that this message is a response to.  Only present if this message is a response.
class MessageHeaderResponse extends BackboneElement implements FhirResource {
  /// Code that identifies the type of response to the message - whether it was successful or not, and whether it should be resent or not.
  /// This is a generic response to the request message. Specific data for the response will be found in MessageHeader.focus.
  final String code; // Possible values: 'ok', 'transient-error', 'fatal-error'
  /// Specific list of hints/warnings/errors
  /// Full details of any issues found in the message.
  /// This SHALL be contained in the bundle. If any of the issues are errors, the response code SHALL be an error.
  final Reference? details;

  /// Id of original message
  /// The MessageHeader.id of the message to which this message is a response.
  final String identifier;
  MessageHeaderResponse({
    required this.code,
    this.details,
    super.fhirExtension,
    super.id,
    required this.identifier,
    super.modifierExtension,
  });

  @override
  factory MessageHeaderResponse.fromJson(Map<String, dynamic> json) {
    return MessageHeaderResponse(
      code: json['code'] as String,
      details: json['details'] != null
          ? Reference.fromJson((json['details'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'details': details?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  MessageHeaderResponse copyWith({
    String? code,
    Reference? details,
    List<Extension>? fhirExtension,
    String? id,
    String? identifier,
    List<Extension>? modifierExtension,
  }) {
    return MessageHeaderResponse(
      code: code ?? this.code,
      details: details ?? this.details,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
