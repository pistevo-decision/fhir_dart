part of '../fhir_dart.dart';

 /// Required  nutrient modifications
 /// Class that defines the quantity and type of nutrient modifications (for example carbohydrate, fiber or sodium) required for the oral diet.
class NutritionOrderOralDietNutrient extends BackboneElement implements FhirResource {
   /// Quantity of the specified nutrient
   /// The quantity of the specified nutrient to include in diet.
  final Quantity? amount;
   /// Type of nutrient that is being modified
   /// The nutrient that is being modified such as carbohydrate or sodium.
  final CodeableConcept? modifier;
  NutritionOrderOralDietNutrient({
    this.amount,
    super.fhirExtension,
    super.id,
    this.modifier,
    super.modifierExtension,
  });
  
  @override
  factory NutritionOrderOralDietNutrient.fromJson(Map<String, dynamic> json) {
    return NutritionOrderOralDietNutrient(
      amount: json['amount'] != null ? Quantity.fromJson(json['amount'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifier: json['modifier'] != null ? CodeableConcept.fromJson(json['modifier'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'amount': amount?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifier': modifier?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  NutritionOrderOralDietNutrient copyWith({
    Quantity? amount,
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? modifier,
    List<Extension>? modifierExtension,
  }) {
    return NutritionOrderOralDietNutrient(
      amount: amount ?? this.amount,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifier: modifier ?? this.modifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
