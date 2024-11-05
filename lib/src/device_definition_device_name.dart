part of '../fhir_dart.dart';

/// A name given to the device to identify it.
class DeviceDefinitionDeviceName extends BackboneElement
    implements FhirResource {
  /// The name of the device.
  final String name;

  /// The type of deviceName.
  /// UDILabelName | UserFriendlyName | PatientReportedName | ManufactureDeviceName | ModelName.
  final String
      type; // Possible values: 'udi-label-name', 'user-friendly-name', 'patient-reported-name', 'manufacturer-name', 'model-name', 'other'
  DeviceDefinitionDeviceName({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.name,
    required this.type,
  });

  @override
  factory DeviceDefinitionDeviceName.fromJson(Map<String, dynamic> json) {
    return DeviceDefinitionDeviceName(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String,
      type: json['type'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'type': type,
      };

  @override
  DeviceDefinitionDeviceName copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    String? type,
  }) {
    return DeviceDefinitionDeviceName(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }
}
