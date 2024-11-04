part of '../fhir_dart.dart';

 /// The data is not interpretable without at least origin, period, and dimensions, but these are optional to allow a separation between the template of measurement and the actual measurement, such as between DeviceCapabilities and DeviceLog.  When providing a summary view (for example with Observation.value[x]) SampledData should be represented with a brief display text such as "Sampled Data".
 /// Base StructureDefinition for SampledData Type: A series of measurements taken by a device, with upper and lower limits. There may be more than one dimension in the data.
 /// There is a need for a concise way to handle the data produced by devices that sample a physical state at a high frequency.
class SampledData extends Element implements FhirResource {
   /// Decimal values with spaces, or "E" | "U" | "L"
   /// A series of data points which are decimal values separated by a single space (character u20). The special values "E" (error), "L" (below detection limit) and "U" (above detection limit) can also be used in place of a decimal value.
   /// Data may be missing if it is omitted for summarization purposes. In general, data is required for any actual use of a SampledData.
  final String? data;
   /// Number of sample points at each time point
   /// The number of sample points at each time point. If this value is greater than one, then the dimensions will be interlaced - all the sample points for a point in time will be recorded at once.
   /// If there is more than one dimension, the code for the type of data will define the meaning of the dimensions (typically ECG data).
  final int dimensions;
   /// Multiply data by this before adding to origin
   /// A correction factor that is applied to the sampled data points before they are added to the origin.
  final num? factor;
   /// Lower limit of detection
   /// The lower limit of detection of the measured points. This is needed if any of the data points have the value "L" (lower than detection limit).
  final num? lowerLimit;
   /// Zero value and units
   /// The base quantity that a measured value of zero represents. In addition, this provides the units of the entire measurement series.
  final Quantity origin;
   /// Number of milliseconds between samples
   /// The length of time between sampling times, measured in milliseconds.
   /// This is usually a whole number.
  final num period;
   /// Upper limit of detection
   /// The upper limit of detection of the measured points. This is needed if any of the data points have the value "U" (higher than detection limit).
  final num? upperLimit;
  SampledData({
    this.data,
    required this.dimensions,
    super.fhirExtension,
    this.factor,
    super.id,
    this.lowerLimit,
    required this.origin,
    required this.period,
    this.upperLimit,
  });
  
  @override
  factory SampledData.fromJson(Map<String, dynamic> json) {
    return SampledData(
      data: json['data'] as String?,
      dimensions: json['dimensions'] as int,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      factor: json['factor'] as num?,
      id: json['id'] as String?,
      lowerLimit: json['lowerLimit'] as num?,
      origin: Quantity.fromJson(json['origin'] as Map<String, dynamic>),
      period: json['period'] as num,
      upperLimit: json['upperLimit'] as num?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'data': data,
      'dimensions': dimensions,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'factor': factor,
      'id': id,
      'lowerLimit': lowerLimit,
      'origin': origin.toJson(),
      'period': period,
      'upperLimit': upperLimit,
    };
  
  @override
  SampledData copyWith({
    String? data,
    int? dimensions,
    List<Extension>? fhirExtension,
    num? factor,
    String? id,
    num? lowerLimit,
    Quantity? origin,
    num? period,
    num? upperLimit,
  }) {
    return SampledData(
      data: data ?? this.data,
      dimensions: dimensions ?? this.dimensions,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      factor: factor ?? this.factor,
      id: id ?? this.id,
      lowerLimit: lowerLimit ?? this.lowerLimit,
      origin: origin ?? this.origin,
      period: period ?? this.period,
      upperLimit: upperLimit ?? this.upperLimit,
    );
  }
}
