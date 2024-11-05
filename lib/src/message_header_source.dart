part of '../fhir_dart.dart';

/// Message source application
/// The source application from which this message originated.
class MessageHeaderSource extends BackboneElement implements FhirResource {
  /// Human contact for problems
  /// An e-mail, phone, website or other contact point to use to resolve issues with message communications.
  final ContactPoint? contact;

  /// Actual message source address or id
  /// Identifies the routing target to send acknowledgements to.
  /// The id may be a non-resolvable URI for systems that do not use standard network-based addresses.
  final String endpoint;

  /// Name of system
  /// Human-readable name for the source system.
  final String? name;

  /// Name of software running the system
  /// May include configuration or other information useful in debugging.
  final String? software;

  /// Version of software running
  /// Can convey versions of multiple systems in situations where a message passes through multiple hands.
  final String? version;
  MessageHeaderSource({
    this.contact,
    required this.endpoint,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.name,
    this.software,
    this.version,
  });

  @override
  factory MessageHeaderSource.fromJson(Map<String, dynamic> json) {
    return MessageHeaderSource(
      contact: json['contact'] != null
          ? ContactPoint.fromJson(
              (json['contact'] as Map).cast<String, dynamic>())
          : null,
      endpoint: json['endpoint'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      software: json['software'] as String?,
      version: json['version'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contact': contact?.toJson(),
        'endpoint': endpoint,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'software': software,
        'version': version,
      };

  @override
  MessageHeaderSource copyWith({
    ContactPoint? contact,
    String? endpoint,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    String? software,
    String? version,
  }) {
    return MessageHeaderSource(
      contact: contact ?? this.contact,
      endpoint: endpoint ?? this.endpoint,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      software: software ?? this.software,
      version: version ?? this.version,
    );
  }
}
