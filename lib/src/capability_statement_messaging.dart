part of '../fhir_dart.dart';

/// If messaging is supported
/// A description of the messaging capabilities of the solution.
/// Multiple repetitions allow the documentation of multiple endpoints per solution.
class CapabilityStatementMessaging extends BackboneElement
    implements FhirResource {
  /// Messaging interface behavior details
  /// Documentation about the system's messaging capabilities for this endpoint not otherwise documented by the capability statement.  For example, the process for becoming an authorized messaging exchange partner.
  final String? documentation;

  /// Where messages should be sent
  /// An endpoint (network accessible address) to which messages and/or replies are to be sent.
  final List<CapabilityStatementMessagingEndpoint>? endpoint;

  /// Reliable Message Cache Length (min)
  /// Length if the receiver's reliable messaging cache in minutes (if a receiver) or how long the cache length on the receiver should be (if a sender).
  /// If this value is missing then the application does not implement (receiver) or depend on (sender) reliable messaging.
  final int? reliableCache;

  /// Messages supported by this system
  /// References to message definitions for messages this system can send or receive.
  /// This is a proposed alternative to the messaging.event structure.
  final List<CapabilityStatementMessagingSupportedMessage>? supportedMessage;
  CapabilityStatementMessaging({
    this.documentation,
    this.endpoint,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.reliableCache,
    this.supportedMessage,
  });

  @override
  factory CapabilityStatementMessaging.fromJson(Map<String, dynamic> json) {
    return CapabilityStatementMessaging(
      documentation: json['documentation'] as String?,
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementMessagingEndpoint.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reliableCache: json['reliableCache'] as int?,
      supportedMessage: (json['supportedMessage'] as List<dynamic>?)
          ?.map((e) => CapabilityStatementMessagingSupportedMessage.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'documentation': documentation,
        'endpoint': endpoint?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'reliableCache': reliableCache,
        'supportedMessage': supportedMessage?.map((e) => e.toJson()).toList(),
      };

  @override
  CapabilityStatementMessaging copyWith({
    String? documentation,
    List<CapabilityStatementMessagingEndpoint>? endpoint,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    int? reliableCache,
    List<CapabilityStatementMessagingSupportedMessage>? supportedMessage,
  }) {
    return CapabilityStatementMessaging(
      documentation: documentation ?? this.documentation,
      endpoint: endpoint ?? this.endpoint,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reliableCache: reliableCache ?? this.reliableCache,
      supportedMessage: supportedMessage ?? this.supportedMessage,
    );
  }
}
