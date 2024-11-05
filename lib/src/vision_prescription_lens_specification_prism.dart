part of '../fhir_dart.dart';

/// Eye alignment compensation
/// Allows for adjustment on two axis.
class VisionPrescriptionLensSpecificationPrism extends BackboneElement
    implements FhirResource {
  /// Amount of adjustment
  /// Amount of prism to compensate for eye alignment in fractional units.
  final num amount;

  /// The relative base, or reference lens edge, for the prism.
  final String base; // Possible values: 'up', 'down', 'in', 'out'
  VisionPrescriptionLensSpecificationPrism({
    required this.amount,
    required this.base,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory VisionPrescriptionLensSpecificationPrism.fromJson(
      Map<String, dynamic> json) {
    return VisionPrescriptionLensSpecificationPrism(
      amount: json['amount'] as num,
      base: json['base'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'amount': amount,
        'base': base,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  VisionPrescriptionLensSpecificationPrism copyWith({
    num? amount,
    String? base,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return VisionPrescriptionLensSpecificationPrism(
      amount: amount ?? this.amount,
      base: base ?? this.base,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
