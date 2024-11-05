part of '../fhir_dart.dart';

/// Benefit limits
/// The specific limits on the benefit.
class InsurancePlanCoverageBenefitLimit extends BackboneElement
    implements FhirResource {
  /// Benefit limit details
  /// The specific limit on the benefit.
  /// Use `CodeableConcept.text` element if the data is free (uncoded) text.
  final CodeableConcept? code;

  /// Maximum value allowed
  /// The maximum amount of a service item a plan will pay for a covered benefit.  For examples. wellness visits, or eyeglasses.
  /// May also be called “eligible expense,” “payment allowance,” or “negotiated rate.”.
  final Quantity? value;
  InsurancePlanCoverageBenefitLimit({
    this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.value,
  });

  @override
  factory InsurancePlanCoverageBenefitLimit.fromJson(
      Map<String, dynamic> json) {
    return InsurancePlanCoverageBenefitLimit(
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              (json['code'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      value: json['value'] != null
          ? Quantity.fromJson((json['value'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'value': value?.toJson(),
      };

  @override
  InsurancePlanCoverageBenefitLimit copyWith({
    CodeableConcept? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Quantity? value,
  }) {
    return InsurancePlanCoverageBenefitLimit(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
    );
  }
}
