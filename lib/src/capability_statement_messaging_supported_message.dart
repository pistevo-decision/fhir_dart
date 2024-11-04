part of '../fhir_dart.dart';

/// Messages supported by this system
/// References to message definitions for messages this system can send or receive.
/// This is a proposed alternative to the messaging.event structure.
class CapabilityStatementMessagingSupportedMessage extends BackboneElement
    implements FhirResource {
  /// Message supported by this system
  /// Points to a message definition that identifies the messaging event, message structure, allowed responses, etc.
  final String definition;

  /// sender | receiver
  /// The mode of this event declaration - whether application is sender or receiver.
  final String mode; // Possible values: 'sender', 'receiver'
  CapabilityStatementMessagingSupportedMessage({
    required this.definition,
    super.fhirExtension,
    super.id,
    required this.mode,
    super.modifierExtension,
  });

  @override
  factory CapabilityStatementMessagingSupportedMessage.fromJson(
      Map<String, dynamic> json) {
    return CapabilityStatementMessagingSupportedMessage(
      definition: json['definition'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      mode: json['mode'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'definition': definition,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'mode': mode,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  CapabilityStatementMessagingSupportedMessage copyWith({
    String? definition,
    List<Extension>? fhirExtension,
    String? id,
    String? mode,
    List<Extension>? modifierExtension,
  }) {
    return CapabilityStatementMessagingSupportedMessage(
      definition: definition ?? this.definition,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      mode: mode ?? this.mode,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
