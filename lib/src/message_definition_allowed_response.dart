part of '../fhir_dart.dart';

/// Responses to this message
/// Indicates what types of messages may be sent as an application-level response to this message.
/// This indicates an application level response to "close" a transaction implicit in a particular request message.  To define a complete workflow scenario, look to the [[PlanDefinition]] resource which allows the definition of complex orchestrations, conditionality, etc.
class MessageDefinitionAllowedResponse extends BackboneElement
    implements FhirResource {
  /// Reference to allowed message definition response
  /// A reference to the message definition that must be adhered to by this supported response.
  final String message;

  /// When should this response be used
  /// Provides a description of the circumstances in which this response should be used (as opposed to one of the alternative responses).
  final String? situation;
  MessageDefinitionAllowedResponse({
    super.fhirExtension,
    super.id,
    required this.message,
    super.modifierExtension,
    this.situation,
  });

  @override
  factory MessageDefinitionAllowedResponse.fromJson(Map<String, dynamic> json) {
    return MessageDefinitionAllowedResponse(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      message: json['message'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      situation: json['situation'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'message': message,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'situation': situation,
      };

  @override
  MessageDefinitionAllowedResponse copyWith({
    List<Extension>? fhirExtension,
    String? id,
    String? message,
    List<Extension>? modifierExtension,
    String? situation,
  }) {
    return MessageDefinitionAllowedResponse(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      message: message ?? this.message,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      situation: situation ?? this.situation,
    );
  }
}
