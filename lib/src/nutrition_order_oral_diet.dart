part of '../fhir_dart.dart';

/// Oral diet components
/// Diet given orally in contrast to enteral (tube) feeding.
class NutritionOrderOralDiet extends BackboneElement implements FhirResource {
  /// The required consistency of fluids and liquids provided to the patient
  /// The required consistency (e.g. honey-thick, nectar-thick, thin, thickened.) of liquids or fluids served to the patient.
  final List<CodeableConcept>? fluidConsistencyType;

  /// Instructions or additional information about the oral diet
  /// Free text or additional instructions or information pertaining to the oral diet.
  /// Free text dosage instructions can be used for cases where the instructions are too complex to code.
  final String? instruction;

  /// Required  nutrient modifications
  /// Class that defines the quantity and type of nutrient modifications (for example carbohydrate, fiber or sodium) required for the oral diet.
  final List<NutritionOrderOralDietNutrient>? nutrient;

  /// Scheduled frequency of diet
  /// The time period and frequency at which the diet should be given.  The diet should be given for the combination of all schedules if more than one schedule is present.
  final List<Timing>? schedule;

  /// Required  texture modifications
  /// Class that describes any texture modifications required for the patient to safely consume various types of solid foods.
  final List<NutritionOrderOralDietTexture>? texture;

  /// Type of oral diet or diet restrictions that describe what can be consumed orally
  /// The kind of diet or dietary restriction such as fiber restricted diet or diabetic diet.
  final List<CodeableConcept>? type;
  NutritionOrderOralDiet({
    super.fhirExtension,
    this.fluidConsistencyType,
    super.id,
    this.instruction,
    super.modifierExtension,
    this.nutrient,
    this.schedule,
    this.texture,
    this.type,
  });

  @override
  factory NutritionOrderOralDiet.fromJson(Map<String, dynamic> json) {
    return NutritionOrderOralDiet(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fluidConsistencyType: (json['fluidConsistencyType'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      instruction: json['instruction'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      nutrient: (json['nutrient'] as List<dynamic>?)
          ?.map((e) => NutritionOrderOralDietNutrient.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map((e) => Timing.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      texture: (json['texture'] as List<dynamic>?)
          ?.map((e) => NutritionOrderOralDietTexture.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'fluidConsistencyType':
            fluidConsistencyType?.map((e) => e.toJson()).toList(),
        'id': id,
        'instruction': instruction,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'nutrient': nutrient?.map((e) => e.toJson()).toList(),
        'schedule': schedule?.map((e) => e.toJson()).toList(),
        'texture': texture?.map((e) => e.toJson()).toList(),
        'type': type?.map((e) => e.toJson()).toList(),
      };

  @override
  NutritionOrderOralDiet copyWith({
    List<Extension>? fhirExtension,
    List<CodeableConcept>? fluidConsistencyType,
    String? id,
    String? instruction,
    List<Extension>? modifierExtension,
    List<NutritionOrderOralDietNutrient>? nutrient,
    List<Timing>? schedule,
    List<NutritionOrderOralDietTexture>? texture,
    List<CodeableConcept>? type,
  }) {
    return NutritionOrderOralDiet(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      fluidConsistencyType: fluidConsistencyType ?? this.fluidConsistencyType,
      id: id ?? this.id,
      instruction: instruction ?? this.instruction,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      nutrient: nutrient ?? this.nutrient,
      schedule: schedule ?? this.schedule,
      texture: texture ?? this.texture,
      type: type ?? this.type,
    );
  }
}
