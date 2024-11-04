part of '../fhir_dart.dart';

/// Information about security of implementation
/// Information about security implementation from an interface perspective - what a client needs to know.
class CapabilityStatementRestSecurity extends BackboneElement
    implements FhirResource {
  /// Adds CORS Headers (http://enable-cors.org/)
  /// Server adds CORS headers when responding to requests - this enables Javascript applications to use the server.
  /// The easiest CORS headers to add are Access-Control-Allow-Origin: * & Access-Control-Request-Method: GET, POST, PUT, DELETE. All servers SHOULD support CORS.
  final bool? cors;

  /// General description of how security works.
  final String? description;

  /// OAuth | SMART-on-FHIR | NTLM | Basic | Kerberos | Certificates
  /// Types of security services that are supported/required by the system.
  final List<CodeableConcept>? service;
  CapabilityStatementRestSecurity({
    this.cors,
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.service,
  });

  @override
  factory CapabilityStatementRestSecurity.fromJson(Map<String, dynamic> json) {
    return CapabilityStatementRestSecurity(
      cors: json['cors'] as bool?,
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      service: (json['service'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'cors': cors,
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'service': service?.map((e) => e.toJson()).toList(),
      };

  @override
  CapabilityStatementRestSecurity copyWith({
    bool? cors,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<CodeableConcept>? service,
  }) {
    return CapabilityStatementRestSecurity(
      cors: cors ?? this.cors,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      service: service ?? this.service,
    );
  }
}
