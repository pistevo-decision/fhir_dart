part of '../fhir_dart.dart';

/// Reference range of possible or expected values.
class SubstanceAmountReferenceRange extends Element implements FhirResource {
  /// Upper limit possible or expected.
  final Quantity? highLimit;

  /// Lower limit possible or expected.
  final Quantity? lowLimit;
  SubstanceAmountReferenceRange({
    super.fhirExtension,
    this.highLimit,
    super.id,
    this.lowLimit,
  });

  @override
  factory SubstanceAmountReferenceRange.fromJson(Map<String, dynamic> json) {
    return SubstanceAmountReferenceRange(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      highLimit: json['highLimit'] != null
          ? Quantity.fromJson(json['highLimit'] as Map<String, dynamic>)
          : null,
      id: json['id'] as String?,
      lowLimit: json['lowLimit'] != null
          ? Quantity.fromJson(json['lowLimit'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'highLimit': highLimit?.toJson(),
        'id': id,
        'lowLimit': lowLimit?.toJson(),
      };

  @override
  SubstanceAmountReferenceRange copyWith({
    List<Extension>? fhirExtension,
    Quantity? highLimit,
    String? id,
    Quantity? lowLimit,
  }) {
    return SubstanceAmountReferenceRange(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      highLimit: highLimit ?? this.highLimit,
      id: id ?? this.id,
      lowLimit: lowLimit ?? this.lowLimit,
    );
  }
}
