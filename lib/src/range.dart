part of '../fhir_dart.dart';

/// The stated low and high value are assumed to have arbitrarily high precision when it comes to determining which values are in the range. I.e. 1.99 is not in the range 2 -> 3.
/// Base StructureDefinition for Range Type: A set of ordered Quantities defined by a low and high limit.
/// Need to be able to specify ranges of values.
class Range extends Element implements FhirResource {
  /// High limit
  /// The high limit. The boundary is inclusive.
  /// If the high element is missing, the high boundary is not known.
  final Quantity? high;

  /// Low limit
  /// The low limit. The boundary is inclusive.
  /// If the low element is missing, the low boundary is not known.
  final Quantity? low;
  Range({
    super.fhirExtension,
    this.high,
    super.id,
    this.low,
  });

  @override
  factory Range.fromJson(Map<String, dynamic> json) {
    return Range(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      high: json['high'] != null
          ? Quantity.fromJson(json['high'] as Map<String, dynamic>)
          : null,
      id: json['id'] as String?,
      low: json['low'] != null
          ? Quantity.fromJson(json['low'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'high': high?.toJson(),
        'id': id,
        'low': low?.toJson(),
      };

  @override
  Range copyWith({
    List<Extension>? fhirExtension,
    Quantity? high,
    String? id,
    Quantity? low,
  }) {
    return Range(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      high: high ?? this.high,
      id: id ?? this.id,
      low: low ?? this.low,
    );
  }
}
