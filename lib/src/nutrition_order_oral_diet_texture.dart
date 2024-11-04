part of '../fhir_dart.dart';

/// Required  texture modifications
/// Class that describes any texture modifications required for the patient to safely consume various types of solid foods.
class NutritionOrderOralDietTexture extends BackboneElement
    implements FhirResource {
  /// Concepts that are used to identify an entity that is ingested for nutritional purposes
  /// The food type(s) (e.g. meats, all foods)  that the texture modification applies to.  This could be all foods types.
  /// Coupled with the `texture.modifier`; could be (All Foods).
  final CodeableConcept? foodType;

  /// Code to indicate how to alter the texture of the foods, e.g. pureed
  /// Any texture modifications (for solid foods) that should be made, e.g. easy to chew, chopped, ground, and pureed.
  /// Coupled with the foodType (Meat).
  final CodeableConcept? modifier;
  NutritionOrderOralDietTexture({
    super.fhirExtension,
    this.foodType,
    super.id,
    this.modifier,
    super.modifierExtension,
  });

  @override
  factory NutritionOrderOralDietTexture.fromJson(Map<String, dynamic> json) {
    return NutritionOrderOralDietTexture(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      foodType: json['foodType'] != null
          ? CodeableConcept.fromJson(json['foodType'] as Map<String, dynamic>)
          : null,
      id: json['id'] as String?,
      modifier: json['modifier'] != null
          ? CodeableConcept.fromJson(json['modifier'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'foodType': foodType?.toJson(),
        'id': id,
        'modifier': modifier?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  NutritionOrderOralDietTexture copyWith({
    List<Extension>? fhirExtension,
    CodeableConcept? foodType,
    String? id,
    CodeableConcept? modifier,
    List<Extension>? modifierExtension,
  }) {
    return NutritionOrderOralDietTexture(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      foodType: foodType ?? this.foodType,
      id: id ?? this.id,
      modifier: modifier ?? this.modifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
