part of '../fhir_dart.dart';

 /// Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product.
class MedicinalProductIngredientSpecifiedSubstanceStrength extends BackboneElement implements FhirResource {
   /// The strength per unitary volume (or mass).
  final Ratio? concentration;
   /// A lower limit for the strength per unitary volume (or mass), for when there is a range. The concentration attribute then becomes the upper limit.
  final Ratio? concentrationLowLimit;
   /// The country or countries for which the strength range applies.
  final List<CodeableConcept>? country;
   /// For when strength is measured at a particular point or distance.
  final String? measurementPoint;
   /// The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item.
  final Ratio presentation;
   /// A lower limit for the quantity of substance in the unit of presentation. For use when there is a range of strengths, this is the lower limit, with the presentation attribute becoming the upper limit.
  final Ratio? presentationLowLimit;
   /// Strength expressed in terms of a reference substance.
  final List<MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength>? referenceStrength;
  MedicinalProductIngredientSpecifiedSubstanceStrength({
    this.concentration,
    this.concentrationLowLimit,
    this.country,
    super.fhirExtension,
    super.id,
    this.measurementPoint,
    super.modifierExtension,
    required this.presentation,
    this.presentationLowLimit,
    this.referenceStrength,
  });
  
  @override
  factory MedicinalProductIngredientSpecifiedSubstanceStrength.fromJson(Map<String, dynamic> json) {
    return MedicinalProductIngredientSpecifiedSubstanceStrength(
      concentration: json['concentration'] != null ? Ratio.fromJson(json['concentration'] as Map<String, dynamic>) : null,
      concentrationLowLimit: json['concentrationLowLimit'] != null ? Ratio.fromJson(json['concentrationLowLimit'] as Map<String, dynamic>) : null,
      country: (json['country'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      measurementPoint: json['measurementPoint'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      presentation: Ratio.fromJson(json['presentation'] as Map<String, dynamic>),
      presentationLowLimit: json['presentationLowLimit'] != null ? Ratio.fromJson(json['presentationLowLimit'] as Map<String, dynamic>) : null,
      referenceStrength: (json['referenceStrength'] as List<dynamic>?)?.map((e) => MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'concentration': concentration?.toJson(),
      'concentrationLowLimit': concentrationLowLimit?.toJson(),
      'country': country?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'measurementPoint': measurementPoint,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'presentation': presentation.toJson(),
      'presentationLowLimit': presentationLowLimit?.toJson(),
      'referenceStrength': referenceStrength?.map((e) => e.toJson()).toList(),
    };
  
  @override
  MedicinalProductIngredientSpecifiedSubstanceStrength copyWith({
    Ratio? concentration,
    Ratio? concentrationLowLimit,
    List<CodeableConcept>? country,
    List<Extension>? fhirExtension,
    String? id,
    String? measurementPoint,
    List<Extension>? modifierExtension,
    Ratio? presentation,
    Ratio? presentationLowLimit,
    List<MedicinalProductIngredientSpecifiedSubstanceStrengthReferenceStrength>? referenceStrength,
  }) {
    return MedicinalProductIngredientSpecifiedSubstanceStrength(
      concentration: concentration ?? this.concentration,
      concentrationLowLimit: concentrationLowLimit ?? this.concentrationLowLimit,
      country: country ?? this.country,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      measurementPoint: measurementPoint ?? this.measurementPoint,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      presentation: presentation ?? this.presentation,
      presentationLowLimit: presentationLowLimit ?? this.presentationLowLimit,
      referenceStrength: referenceStrength ?? this.referenceStrength,
    );
  }
}
