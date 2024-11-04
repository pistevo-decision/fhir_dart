part of '../fhir_dart.dart';

/// Audit Event Reporter
/// The system that is reporting the event.
/// Since multi-tier, distributed, or composite applications make source identification ambiguous, this collection of fields may repeat for each application or process actively involved in the event. For example, multiple value-sets can identify participating web servers, application processes, and database server threads in an n-tier distributed application. Passive event participants (e.g. low-level network transports) need not be identified.
class AuditEventSource extends BackboneElement implements FhirResource {
  /// The identity of source detecting the event
  /// Identifier of the source where the event was detected.
  final Reference observer;

  /// Logical source location within the enterprise
  /// Logical source location within the healthcare enterprise network.  For example, a hospital or other provider location within a multi-entity provider group.
  final String? site;

  /// The type of source where event originated
  /// Code specifying the type of source where event originated.
  final List<Coding>? type;
  AuditEventSource({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.observer,
    this.site,
    this.type,
  });

  @override
  factory AuditEventSource.fromJson(Map<String, dynamic> json) {
    return AuditEventSource(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      observer: Reference.fromJson(json['observer'] as Map<String, dynamic>),
      site: json['site'] as String?,
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'observer': observer.toJson(),
        'site': site,
        'type': type?.map((e) => e.toJson()).toList(),
      };

  @override
  AuditEventSource copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? observer,
    String? site,
    List<Coding>? type,
  }) {
    return AuditEventSource(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      observer: observer ?? this.observer,
      site: site ?? this.site,
      type: type ?? this.type,
    );
  }
}
