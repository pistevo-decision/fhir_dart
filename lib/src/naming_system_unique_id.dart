part of '../fhir_dart.dart';

 /// Unique identifiers used for system
 /// Indicates how the system may be identified when referenced in electronic exchange.
 /// Multiple identifiers may exist, either due to duplicate registration, regional rules, needs of different communication technologies, etc.
class NamingSystemUniqueId extends BackboneElement implements FhirResource {
   /// Notes about identifier usage
   /// Notes about the past or intended usage of this identifier.
   /// e.g. "must be used in Germany" or "was initially published in error with this value".
  final String? comment;
   /// When is identifier valid?
   /// Identifies the period of time over which this identifier is considered appropriate to refer to the naming system.  Outside of this window, the identifier might be non-deterministic.
   /// Within a registry, a given identifier should only be "active" for a single namespace at a time.  (Ideally, an identifier should only ever be associated with a single namespace across all time).
  final Period? period;
   /// Is this the id that should be used for this type
   /// Indicates whether this identifier is the "preferred" identifier of this type.
  final bool? preferred;
   /// Identifies the unique identifier scheme used for this particular identifier.
   /// Different identifier types may be used in different types of communications (OIDs for v3, URIs for FHIR, etc.).  Other includes RUIDs from v3, standard v2 code name strings, etc.
  final String type; // Possible values: 'oid', 'uuid', 'uri', 'other'
   /// The unique identifier
   /// The string that should be sent over the wire to identify the code system or identifier system.
   /// If the value is a URI intended for use as FHIR system identifier, the URI should not contain "\" or "?" or "," since this makes escaping very difficult.
  final String value;
  NamingSystemUniqueId({
    this.comment,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.period,
    this.preferred,
    required this.type,
    required this.value,
  });
  
  @override
  factory NamingSystemUniqueId.fromJson(Map<String, dynamic> json) {
    return NamingSystemUniqueId(
      comment: json['comment'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      period: json['period'] != null ? Period.fromJson(json['period'] as Map<String, dynamic>) : null,
      preferred: json['preferred'] as bool?,
      type: json['type'] as String,
      value: json['value'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'comment': comment,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'period': period?.toJson(),
      'preferred': preferred,
      'type': type,
      'value': value,
    };
  
  @override
  NamingSystemUniqueId copyWith({
    String? comment,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Period? period,
    bool? preferred,
    String? type,
    String? value,
  }) {
    return NamingSystemUniqueId(
      comment: comment ?? this.comment,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      preferred: preferred ?? this.preferred,
      type: type ?? this.type,
      value: value ?? this.value,
    );
  }
}
