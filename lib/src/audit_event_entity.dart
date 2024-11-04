part of '../fhir_dart.dart';

/// Data or objects used
/// Specific instances of data or objects that have been accessed.
/// Required unless the values for event identification, agent identification, and audit source identification are sufficient to document the entire auditable event. Because events may have more than one entity, this group can be a repeating set of values.
class AuditEventEntity extends BackboneElement implements FhirResource {
  /// Descriptive text
  /// Text that describes the entity in more detail.
  final String? description;

  /// Additional Information about the entity
  /// Tagged value pairs for conveying additional information about the entity.
  final List<AuditEventEntityDetail>? detail;

  /// Life-cycle stage for the entity
  /// Identifier for the data life-cycle stage for the entity.
  /// This can be used to provide an audit trail for data, over time, as it passes through the system.
  final Coding? lifecycle;

  /// Descriptor for entity
  /// A name of the entity in the audit event.
  /// This field may be used in a query/report to identify audit events for a specific person.  For example, where multiple synonymous entity identifiers (patient number, medical record number, encounter number, etc.) have been used.
  final String? name;

  /// Query parameters
  /// The query parameters for a query-type entities.
  /// The meaning and secondary-encoding of the content of base64 encoded blob is specific to the AuditEvent.type, AuditEvent.subtype, AuditEvent.entity.type, and AuditEvent.entity.role.  The base64 is a general-use and safe container for event specific data blobs regardless of the encoding used by the transaction being recorded.  An AuditEvent consuming application must understand the event it is consuming and the formats used by the event. For example, if auditing an Oracle network database access, the Oracle formats must be understood as they will be simply encoded in the base64binary blob.
  final String? query;

  /// What role the entity played
  /// Code representing the role the entity played in the event being audited.
  final Coding? role;

  /// Security labels on the entity
  /// Security labels for the identified entity.
  /// Copied from entity meta security tags.
  final List<Coding>? securityLabel;

  /// Type of entity involved
  /// The type of the object that was involved in this audit event.
  /// This value is distinct from the user's role or any user relationship to the entity.
  final Coding? type;

  /// Specific instance of resource
  /// Identifies a specific instance of the entity. The reference should be version specific.
  final Reference? what;
  AuditEventEntity({
    this.description,
    this.detail,
    super.fhirExtension,
    super.id,
    this.lifecycle,
    super.modifierExtension,
    this.name,
    this.query,
    this.role,
    this.securityLabel,
    this.type,
    this.what,
  });

  @override
  factory AuditEventEntity.fromJson(Map<String, dynamic> json) {
    return AuditEventEntity(
      description: json['description'] as String?,
      detail: (json['detail'] as List<dynamic>?)
          ?.map(
              (e) => AuditEventEntityDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      lifecycle: json['lifecycle'] != null
          ? Coding.fromJson(json['lifecycle'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      query: json['query'] as String?,
      role: json['role'] != null
          ? Coding.fromJson(json['role'] as Map<String, dynamic>)
          : null,
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] != null
          ? Coding.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      what: json['what'] != null
          ? Reference.fromJson(json['what'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'detail': detail?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'lifecycle': lifecycle?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'query': query,
        'role': role?.toJson(),
        'securityLabel': securityLabel?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
        'what': what?.toJson(),
      };

  @override
  AuditEventEntity copyWith({
    String? description,
    List<AuditEventEntityDetail>? detail,
    List<Extension>? fhirExtension,
    String? id,
    Coding? lifecycle,
    List<Extension>? modifierExtension,
    String? name,
    String? query,
    Coding? role,
    List<Coding>? securityLabel,
    Coding? type,
    Reference? what,
  }) {
    return AuditEventEntity(
      description: description ?? this.description,
      detail: detail ?? this.detail,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      lifecycle: lifecycle ?? this.lifecycle,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      query: query ?? this.query,
      role: role ?? this.role,
      securityLabel: securityLabel ?? this.securityLabel,
      type: type ?? this.type,
      what: what ?? this.what,
    );
  }
}
