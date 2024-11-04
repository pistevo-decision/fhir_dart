part of '../fhir_dart.dart';

 /// Additional Information about the entity
 /// Tagged value pairs for conveying additional information about the entity.
class AuditEventEntityDetail extends BackboneElement implements FhirResource {
   /// Name of the property
   /// The type of extra detail provided in the value.
  final String type;
   /// Property value
   /// The  value of the extra detail.
   /// The value can be string when known to be a string, else base64 encoding should be used to protect binary or undefined content.  The meaning and secondary-encoding of the content of base64 encoded blob is specific to the AuditEvent.type, AuditEvent.subtype, AuditEvent.entity.type, and AuditEvent.entity.role.  The base64 is a general-use and safe container for event specific data blobs regardless of the encoding used by the transaction being recorded.  An AuditEvent consuming application must understand the event it is consuming and the formats used by the event. For example if auditing an Oracle network database access, the Oracle formats must be understood as they will be simply encoded in the base64binary blob.
  final String? valueBase64Binary;
   /// Property value
   /// The  value of the extra detail.
   /// The value can be string when known to be a string, else base64 encoding should be used to protect binary or undefined content.  The meaning and secondary-encoding of the content of base64 encoded blob is specific to the AuditEvent.type, AuditEvent.subtype, AuditEvent.entity.type, and AuditEvent.entity.role.  The base64 is a general-use and safe container for event specific data blobs regardless of the encoding used by the transaction being recorded.  An AuditEvent consuming application must understand the event it is consuming and the formats used by the event. For example if auditing an Oracle network database access, the Oracle formats must be understood as they will be simply encoded in the base64binary blob.
  final String? valueString;
  AuditEventEntityDetail({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.type,
    this.valueBase64Binary,
    this.valueString,
  });
  
  @override
  factory AuditEventEntityDetail.fromJson(Map<String, dynamic> json) {
    return AuditEventEntityDetail(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      type: json['type'] as String,
      valueBase64Binary: json['valueBase64Binary'] as String?,
      valueString: json['valueString'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'type': type,
      'valueBase64Binary': valueBase64Binary,
      'valueString': valueString,
    };
  
  @override
  AuditEventEntityDetail copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? type,
    String? valueBase64Binary,
    String? valueString,
  }) {
    return AuditEventEntityDetail(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueBase64Binary: valueBase64Binary ?? this.valueBase64Binary,
      valueString: valueString ?? this.valueString,
    );
  }
}
