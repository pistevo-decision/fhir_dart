part of '../fhir_dart.dart';

 /// The capabilities supported on a  device, the standards to which the device conforms for a particular purpose, and used for the communication.
class DeviceSpecialization extends BackboneElement implements FhirResource {
   /// The standard that is used to operate and communicate.
  final CodeableConcept systemType;
   /// The version of the standard that is used to operate and communicate.
  final String? version;
  DeviceSpecialization({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.systemType,
    this.version,
  });
  
  @override
  factory DeviceSpecialization.fromJson(Map<String, dynamic> json) {
    return DeviceSpecialization(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      systemType: CodeableConcept.fromJson(json['systemType'] as Map<String, dynamic>),
      version: json['version'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'systemType': systemType.toJson(),
      'version': version,
    };
  
  @override
  DeviceSpecialization copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? systemType,
    String? version,
  }) {
    return DeviceSpecialization(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      systemType: systemType ?? this.systemType,
      version: version ?? this.version,
    );
  }
}
