part of '../fhir_dart.dart';

/// Logical network location for application activity, if the activity has a network location.
class AuditEventAgentNetwork extends BackboneElement implements FhirResource {
  /// Identifier for the network access point of the user device
  /// An identifier for the network access point of the user device for the audit event.
  /// This could be a device id, IP address or some other identifier associated with a device.
  final String? address;

  /// The type of network access point
  /// An identifier for the type of network access point that originated the audit event.
  final String? type; // Possible values: '1', '2', '3', '4', '5'
  AuditEventAgentNetwork({
    this.address,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.type,
  });

  @override
  factory AuditEventAgentNetwork.fromJson(Map<String, dynamic> json) {
    return AuditEventAgentNetwork(
      address: json['address'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: json['type'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'address': address,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type,
      };

  @override
  AuditEventAgentNetwork copyWith({
    String? address,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? type,
  }) {
    return AuditEventAgentNetwork(
      address: address ?? this.address,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
    );
  }
}
