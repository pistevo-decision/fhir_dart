part of '../fhir_dart.dart';

/// The capabilities supported on a  device, the standards to which the device conforms for a particular purpose, and used for the communication.
class DeviceDefinitionSpecialization extends BackboneElement
    implements FhirResource {
  /// The standard that is used to operate and communicate.
  final String systemType;

  /// The version of the standard that is used to operate and communicate.
  final String? version;
  DeviceDefinitionSpecialization({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.systemType,
    this.version,
  });

  @override
  factory DeviceDefinitionSpecialization.fromJson(Map<String, dynamic> json) {
    return DeviceDefinitionSpecialization(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      systemType: json['systemType'] as String,
      version: json['version'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'systemType': systemType,
        'version': version,
      };

  @override
  DeviceDefinitionSpecialization copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? systemType,
    String? version,
  }) {
    return DeviceDefinitionSpecialization(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      systemType: systemType ?? this.systemType,
      version: version ?? this.version,
    );
  }
}
