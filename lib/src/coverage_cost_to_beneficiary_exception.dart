part of '../fhir_dart.dart';

/// Exceptions for patient payments
/// A suite of codes indicating exceptions or reductions to patient costs and their effective periods.
class CoverageCostToBeneficiaryException extends BackboneElement
    implements FhirResource {
  /// The effective period of the exception
  /// The timeframe during when the exception is in force.
  final Period? period;

  /// Exception category
  /// The code for the specific exception.
  final CodeableConcept type;
  CoverageCostToBeneficiaryException({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.period,
    required this.type,
  });

  @override
  factory CoverageCostToBeneficiaryException.fromJson(
      Map<String, dynamic> json) {
    return CoverageCostToBeneficiaryException(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'period': period?.toJson(),
        'type': type.toJson(),
      };

  @override
  CoverageCostToBeneficiaryException copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Period? period,
    CodeableConcept? type,
  }) {
    return CoverageCostToBeneficiaryException(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      type: type ?? this.type,
    );
  }
}
