part of '../fhir_dart.dart';

/// Benefit Summary
/// Benefits used to date.
class CoverageEligibilityResponseInsuranceItemBenefit extends BackboneElement
    implements FhirResource {
  /// Benefits allowed
  /// The quantity of the benefit which is permitted under the coverage.
  final Money? allowedMoney;

  /// Benefits allowed
  /// The quantity of the benefit which is permitted under the coverage.
  final String? allowedString;

  /// Benefits allowed
  /// The quantity of the benefit which is permitted under the coverage.
  final int? allowedUnsignedInt;

  /// Benefit classification
  /// Classification of benefit being provided.
  /// For example: deductible, visits, benefit amount.
  final CodeableConcept type;

  /// Benefits used
  /// The quantity of the benefit which have been consumed to date.
  final Money? usedMoney;

  /// Benefits used
  /// The quantity of the benefit which have been consumed to date.
  final String? usedString;

  /// Benefits used
  /// The quantity of the benefit which have been consumed to date.
  final int? usedUnsignedInt;
  CoverageEligibilityResponseInsuranceItemBenefit({
    this.allowedMoney,
    this.allowedString,
    this.allowedUnsignedInt,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.type,
    this.usedMoney,
    this.usedString,
    this.usedUnsignedInt,
  });

  @override
  factory CoverageEligibilityResponseInsuranceItemBenefit.fromJson(
      Map<String, dynamic> json) {
    return CoverageEligibilityResponseInsuranceItemBenefit(
      allowedMoney: json['allowedMoney'] != null
          ? Money.fromJson(
              (json['allowedMoney'] as Map).cast<String, dynamic>())
          : null,
      allowedString: json['allowedString'] as String?,
      allowedUnsignedInt: json['allowedUnsignedInt'] as int?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: CodeableConcept.fromJson(
          (json['type'] as Map).cast<String, dynamic>()),
      usedMoney: json['usedMoney'] != null
          ? Money.fromJson((json['usedMoney'] as Map).cast<String, dynamic>())
          : null,
      usedString: json['usedString'] as String?,
      usedUnsignedInt: json['usedUnsignedInt'] as int?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'allowedMoney': allowedMoney?.toJson(),
        'allowedString': allowedString,
        'allowedUnsignedInt': allowedUnsignedInt,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type.toJson(),
        'usedMoney': usedMoney?.toJson(),
        'usedString': usedString,
        'usedUnsignedInt': usedUnsignedInt,
      };

  @override
  CoverageEligibilityResponseInsuranceItemBenefit copyWith({
    Money? allowedMoney,
    String? allowedString,
    int? allowedUnsignedInt,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
    Money? usedMoney,
    String? usedString,
    int? usedUnsignedInt,
  }) {
    return CoverageEligibilityResponseInsuranceItemBenefit(
      allowedMoney: allowedMoney ?? this.allowedMoney,
      allowedString: allowedString ?? this.allowedString,
      allowedUnsignedInt: allowedUnsignedInt ?? this.allowedUnsignedInt,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      usedMoney: usedMoney ?? this.usedMoney,
      usedString: usedString ?? this.usedString,
      usedUnsignedInt: usedUnsignedInt ?? this.usedUnsignedInt,
    );
  }
}
