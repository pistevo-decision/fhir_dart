part of '../fhir_dart.dart';

/// Describes the calibrations that have been performed or that are required to be performed.
class DeviceMetricCalibration extends BackboneElement implements FhirResource {
  /// Describes the state of the calibration.
  final String?
      state; // Possible values: 'not-calibrated', 'calibration-required', 'calibrated', 'unspecified'
  /// Describes the time last calibration has been performed.
  final String? time;

  /// Describes the type of the calibration method.
  final String?
      type; // Possible values: 'unspecified', 'offset', 'gain', 'two-point'
  DeviceMetricCalibration({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.state,
    this.time,
    this.type,
  });

  @override
  factory DeviceMetricCalibration.fromJson(Map<String, dynamic> json) {
    return DeviceMetricCalibration(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      state: json['state'] as String?,
      time: json['time'] as String?,
      type: json['type'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'state': state,
        'time': time,
        'type': type,
      };

  @override
  DeviceMetricCalibration copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? state,
    String? time,
    String? type,
  }) {
    return DeviceMetricCalibration(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      state: state ?? this.state,
      time: time ?? this.time,
      type: type ?? this.type,
    );
  }
}
