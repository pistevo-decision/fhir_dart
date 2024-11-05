part of '../fhir_dart.dart';

/// Message destination application(s)
/// The destination application which the message is intended for.
/// There SHOULD be at least one destination, but in some circumstances, the source system is unaware of any particular destination system.
class MessageHeaderDestination extends BackboneElement implements FhirResource {
  /// Actual destination address or id
  /// Indicates where the message should be routed to.
  /// The id may be a non-resolvable URI for systems that do not use standard network-based addresses.
  final String endpoint;

  /// Name of system
  /// Human-readable name for the target system.
  final String? name;

  /// Intended "real-world" recipient for the data
  /// Allows data conveyed by a message to be addressed to a particular person or department when routing to a specific application isn't sufficient.
  final Reference? receiver;

  /// Particular delivery destination within the destination
  /// Identifies the target end system in situations where the initial message transmission is to an intermediary system.
  final Reference? target;
  MessageHeaderDestination({
    required this.endpoint,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.name,
    this.receiver,
    this.target,
  });

  @override
  factory MessageHeaderDestination.fromJson(Map<String, dynamic> json) {
    return MessageHeaderDestination(
      endpoint: json['endpoint'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      receiver: json['receiver'] != null
          ? Reference.fromJson(
              (json['receiver'] as Map).cast<String, dynamic>())
          : null,
      target: json['target'] != null
          ? Reference.fromJson((json['target'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'endpoint': endpoint,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'receiver': receiver?.toJson(),
        'target': target?.toJson(),
      };

  @override
  MessageHeaderDestination copyWith({
    String? endpoint,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    Reference? receiver,
    Reference? target,
  }) {
    return MessageHeaderDestination(
      endpoint: endpoint ?? this.endpoint,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      receiver: receiver ?? this.receiver,
      target: target ?? this.target,
    );
  }
}
