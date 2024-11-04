part of '../fhir_dart.dart';

 /// Where messages should be sent
 /// An endpoint (network accessible address) to which messages and/or replies are to be sent.
class CapabilityStatementMessagingEndpoint extends BackboneElement implements FhirResource {
   /// Network address or identifier of the end-point
   /// The network address of the endpoint. For solutions that do not use network addresses for routing, it can be just an identifier.
  final String address;
   /// http | ftp | mllp +
   /// A list of the messaging transport protocol(s) identifiers, supported by this endpoint.
  final Coding protocol;
  CapabilityStatementMessagingEndpoint({
    required this.address,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.protocol,
  });
  
  @override
  factory CapabilityStatementMessagingEndpoint.fromJson(Map<String, dynamic> json) {
    return CapabilityStatementMessagingEndpoint(
      address: json['address'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      protocol: Coding.fromJson(json['protocol'] as Map<String, dynamic>),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'address': address,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'protocol': protocol.toJson(),
    };
  
  @override
  CapabilityStatementMessagingEndpoint copyWith({
    String? address,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Coding? protocol,
  }) {
    return CapabilityStatementMessagingEndpoint(
      address: address ?? this.address,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      protocol: protocol ?? this.protocol,
    );
  }
}
