part of '../fhir_dart.dart';

 /// For the initial scope, this DeviceMetric resource is only applicable to describe a single metric node in the containment tree that is produced by the context scanner in any medical device that implements or derives from the ISO/IEEE 11073 standard.
 /// Describes a measurement, calculation or setting capability of a medical device.
class DeviceMetric extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'DeviceMetric';
   /// Describes the calibrations that have been performed or that are required to be performed.
  final List<DeviceMetricCalibration>? calibration;
   /// Indicates the category of the observation generation process. A DeviceMetric can be for example a setting, measurement, or calculation.
  final String category; // Possible values: 'measurement', 'setting', 'calculation', 'unspecified'
   /// Describes the color representation for the metric. This is often used to aid clinicians to track and identify parameter types by color. In practice, consider a Patient Monitor that has ECG/HR and Pleth for example; the parameters are displayed in different characteristic colors, such as HR-blue, BP-green, and PR and SpO2- magenta.
  final String? color; // Possible values: 'black', 'red', 'green', 'yellow', 'blue', 'magenta', 'cyan', 'white'
   /// Instance identifier
   /// Unique instance identifiers assigned to a device by the device or gateway software, manufacturers, other organizations or owners. For example: handle ID.
   /// For identifiers assigned to a device by the device or gateway software, the `system` element of the identifier should be set to the unique identifier of the device.
  final List<Identifier>? identifier;
   /// Describes the measurement repetition time. This is not necessarily the same as the update period. The measurement repetition time can range from milliseconds up to hours. An example for a measurement repetition time in the range of milliseconds is the sampling rate of an ECG. An example for a measurement repetition time in the range of hours is a NIBP that is triggered automatically every hour. The update period may be different than the measurement repetition time, if the device does not update the published observed value with the same frequency as it was measured.
  final Timing? measurementPeriod;
   /// Indicates current operational state of the device. For example: On, Off, Standby, etc.
  final String? operationalStatus; // Possible values: 'on', 'off', 'standby', 'entered-in-error'
   /// Describes the link to the parent Device
   /// Describes the link to the  Device that this DeviceMetric belongs to and that provide information about the location of this DeviceMetric in the containment structure of the parent Device. An example would be a Device that represents a Channel. This reference can be used by a client application to distinguish DeviceMetrics that have the same type, but should be interpreted based on their containment location.
  final Reference? parent;
   /// Describes the link to the source Device
   /// Describes the link to the  Device that this DeviceMetric belongs to and that contains administrative device information such as manufacturer, serial number, etc.
  final Reference? source;
   /// Identity of metric, for example Heart Rate or PEEP Setting
   /// Describes the type of the metric. For example: Heart Rate, PEEP Setting, etc.
   /// DeviceMetric.type can be referred to either IEEE 11073-10101 or LOINC.
  final CodeableConcept type;
   /// Unit of Measure for the Metric
   /// Describes the unit that an observed value determined for this metric will have. For example: Percent, Seconds, etc.
   /// DeviceMetric.unit can refer to either UCUM or preferable a RTMMS coding system.
  final CodeableConcept? unit;
  DeviceMetric({
    this.calibration,
    required this.category,
    this.color,
    super.contained,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.measurementPeriod,
    super.meta,
    super.modifierExtension,
    this.operationalStatus,
    this.parent,
    this.source,
    super.text,
    required this.type,
    this.unit,
  });
  
  @override
  factory DeviceMetric.fromJson(Map<String, dynamic> json) {
    return DeviceMetric(
      calibration: (json['calibration'] as List<dynamic>?)?.map((e) => DeviceMetricCalibration.fromJson(e as Map<String, dynamic>)).toList(),
      category: json['category'] as String,
      color: json['color'] as String?,
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      measurementPeriod: json['measurementPeriod'] != null ? Timing.fromJson(json['measurementPeriod'] as Map<String, dynamic>) : null,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      operationalStatus: json['operationalStatus'] as String?,
      parent: json['parent'] != null ? Reference.fromJson(json['parent'] as Map<String, dynamic>) : null,
      source: json['source'] != null ? Reference.fromJson(json['source'] as Map<String, dynamic>) : null,
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      unit: json['unit'] != null ? CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'calibration': calibration?.map((e) => e.toJson()).toList(),
      'category': category,
      'color': color,
      'contained': contained?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'language': language,
      'measurementPeriod': measurementPeriod?.toJson(),
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'operationalStatus': operationalStatus,
      'parent': parent?.toJson(),
      'source': source?.toJson(),
      'text': text?.toJson(),
      'type': type.toJson(),
      'unit': unit?.toJson(),
    };
  
  @override
  DeviceMetric copyWith({
    List<DeviceMetricCalibration>? calibration,
    String? category,
    String? color,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Timing? measurementPeriod,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? operationalStatus,
    Reference? parent,
    Reference? source,
    Narrative? text,
    CodeableConcept? type,
    CodeableConcept? unit,
  }) {
    return DeviceMetric(
      calibration: calibration ?? this.calibration,
      category: category ?? this.category,
      color: color ?? this.color,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      measurementPeriod: measurementPeriod ?? this.measurementPeriod,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operationalStatus: operationalStatus ?? this.operationalStatus,
      parent: parent ?? this.parent,
      source: source ?? this.source,
      text: text ?? this.text,
      type: type ?? this.type,
      unit: unit ?? this.unit,
    );
  }
}
