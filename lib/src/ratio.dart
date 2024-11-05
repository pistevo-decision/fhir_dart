part of '../fhir_dart.dart';

/// The Ratio datatype should only be used to express a relationship of two numbers if the relationship cannot be suitably expressed using a Quantity and a common unit.  Where the denominator value is known to be fixed to "1", Quantity should be used instead of Ratio.
/// Base StructureDefinition for Ratio Type: A relationship of two Quantity values - expressed as a numerator and a denominator.
/// Need to able to capture ratios for some measurements (titers) and some rates (costs).
class Ratio extends Element implements FhirResource {
  /// Denominator value
  /// The value of the denominator.
  final Quantity? denominator;

  /// Numerator value
  /// The value of the numerator.
  final Quantity? numerator;
  Ratio({
    this.denominator,
    super.fhirExtension,
    super.id,
    this.numerator,
  });

  @override
  factory Ratio.fromJson(Map<String, dynamic> json) {
    return Ratio(
      denominator: json['denominator'] != null
          ? Quantity.fromJson(
              (json['denominator'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      numerator: json['numerator'] != null
          ? Quantity.fromJson(
              (json['numerator'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'denominator': denominator?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'numerator': numerator?.toJson(),
      };

  @override
  Ratio copyWith({
    Quantity? denominator,
    List<Extension>? fhirExtension,
    String? id,
    Quantity? numerator,
  }) {
    return Ratio(
      denominator: denominator ?? this.denominator,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      numerator: numerator ?? this.numerator,
    );
  }
}
