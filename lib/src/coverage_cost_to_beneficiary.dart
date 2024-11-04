part of '../fhir_dart.dart';

/// Patient payments for services/products
/// A suite of codes indicating the cost category and associated amount which have been detailed in the policy and may have been  included on the health card.
/// For example by knowing the patient visit co-pay, the provider can collect the amount prior to undertaking treatment.
class CoverageCostToBeneficiary extends BackboneElement
    implements FhirResource {
  /// Exceptions for patient payments
  /// A suite of codes indicating exceptions or reductions to patient costs and their effective periods.
  final List<CoverageCostToBeneficiaryException>? exception;

  /// Cost category
  /// The category of patient centric costs associated with treatment.
  /// For example visit, specialist visits, emergency, inpatient care, etc.
  final CodeableConcept? type;

  /// The amount or percentage due from the beneficiary
  /// The amount due from the patient for the cost category.
  /// Amount may be expressed as a percentage of the service/product cost or a fixed amount of currency.
  final Money? valueMoney;

  /// The amount or percentage due from the beneficiary
  /// The amount due from the patient for the cost category.
  /// Amount may be expressed as a percentage of the service/product cost or a fixed amount of currency.
  final Quantity? valueQuantity;
  CoverageCostToBeneficiary({
    this.exception,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.type,
    this.valueMoney,
    this.valueQuantity,
  });

  @override
  factory CoverageCostToBeneficiary.fromJson(Map<String, dynamic> json) {
    return CoverageCostToBeneficiary(
      exception: (json['exception'] as List<dynamic>?)
          ?.map((e) => CoverageCostToBeneficiaryException.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      valueMoney: json['valueMoney'] != null
          ? Money.fromJson(json['valueMoney'] as Map<String, dynamic>)
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'exception': exception?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
        'valueMoney': valueMoney?.toJson(),
        'valueQuantity': valueQuantity?.toJson(),
      };

  @override
  CoverageCostToBeneficiary copyWith({
    List<CoverageCostToBeneficiaryException>? exception,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
    Money? valueMoney,
    Quantity? valueQuantity,
  }) {
    return CoverageCostToBeneficiary(
      exception: exception ?? this.exception,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueMoney: valueMoney ?? this.valueMoney,
      valueQuantity: valueQuantity ?? this.valueQuantity,
    );
  }
}
