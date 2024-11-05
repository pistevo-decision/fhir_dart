part of '../fhir_dart.dart';

/// Enteral formula components
/// Feeding provided through the gastrointestinal tract via a tube, catheter, or stoma that delivers nutrition distal to the oral cavity.
class NutritionOrderEnteralFormula extends BackboneElement
    implements FhirResource {
  /// Product or brand name of the modular additive
  /// The product or brand name of the type of modular component to be added to the formula.
  final String? additiveProductName;

  /// Type of modular component to add to the feeding
  /// Indicates the type of modular component such as protein, carbohydrate, fat or fiber to be provided in addition to or mixed with the base formula.
  final CodeableConcept? additiveType;

  /// Formula feeding instruction as structured data
  /// Formula administration instructions as structured data.  This repeating structure allows for changing the administration rate or volume over time for both bolus and continuous feeding.  An example of this would be an instruction to increase the rate of continuous feeding every 2 hours.
  /// See implementation notes below for further discussion on how to order continuous vs bolus enteral feeding using this resource.
  final List<NutritionOrderEnteralFormulaAdministration>? administration;

  /// Formula feeding instructions expressed as text
  /// Free text formula administration, feeding instructions or additional instructions or information.
  /// Free text dosage instructions can be used for cases where the instructions are too complex to code.
  final String? administrationInstruction;

  /// Product or brand name of the enteral or infant formula
  /// The product or brand name of the enteral or infant formula product such as "ACME Adult Standard Formula".
  final String? baseFormulaProductName;

  /// Type of enteral or infant formula
  /// The type of enteral or infant formula such as an adult standard formula with fiber or a soy-based infant formula.
  final CodeableConcept? baseFormulaType;

  /// Amount of energy per specified volume that is required
  /// The amount of energy (calories) that the formula should provide per specified volume, typically per mL or fluid oz.  For example, an infant may require a formula that provides 24 calories per fluid ounce or an adult may require an enteral formula that provides 1.5 calorie/mL.
  final Quantity? caloricDensity;

  /// Upper limit on formula volume per unit of time
  /// The maximum total quantity of formula that may be administered to a subject over the period of time, e.g. 1440 mL over 24 hours.
  final Quantity? maxVolumeToDeliver;

  /// How the formula should enter the patient's gastrointestinal tract
  /// The route or physiological path of administration into the patient's gastrointestinal  tract for purposes of providing the formula feeding, e.g. nasogastric tube.
  final CodeableConcept? routeofAdministration;
  NutritionOrderEnteralFormula({
    this.additiveProductName,
    this.additiveType,
    this.administration,
    this.administrationInstruction,
    this.baseFormulaProductName,
    this.baseFormulaType,
    this.caloricDensity,
    super.fhirExtension,
    super.id,
    this.maxVolumeToDeliver,
    super.modifierExtension,
    this.routeofAdministration,
  });

  @override
  factory NutritionOrderEnteralFormula.fromJson(Map<String, dynamic> json) {
    return NutritionOrderEnteralFormula(
      additiveProductName: json['additiveProductName'] as String?,
      additiveType: json['additiveType'] != null
          ? CodeableConcept.fromJson(
              (json['additiveType'] as Map).cast<String, dynamic>())
          : null,
      administration: (json['administration'] as List<dynamic>?)
          ?.map((e) => NutritionOrderEnteralFormulaAdministration.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      administrationInstruction: json['administrationInstruction'] as String?,
      baseFormulaProductName: json['baseFormulaProductName'] as String?,
      baseFormulaType: json['baseFormulaType'] != null
          ? CodeableConcept.fromJson(
              (json['baseFormulaType'] as Map).cast<String, dynamic>())
          : null,
      caloricDensity: json['caloricDensity'] != null
          ? Quantity.fromJson(
              (json['caloricDensity'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      maxVolumeToDeliver: json['maxVolumeToDeliver'] != null
          ? Quantity.fromJson(
              (json['maxVolumeToDeliver'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      routeofAdministration: json['routeofAdministration'] != null
          ? CodeableConcept.fromJson(
              (json['routeofAdministration'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'additiveProductName': additiveProductName,
        'additiveType': additiveType?.toJson(),
        'administration': administration?.map((e) => e.toJson()).toList(),
        'administrationInstruction': administrationInstruction,
        'baseFormulaProductName': baseFormulaProductName,
        'baseFormulaType': baseFormulaType?.toJson(),
        'caloricDensity': caloricDensity?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'maxVolumeToDeliver': maxVolumeToDeliver?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'routeofAdministration': routeofAdministration?.toJson(),
      };

  @override
  NutritionOrderEnteralFormula copyWith({
    String? additiveProductName,
    CodeableConcept? additiveType,
    List<NutritionOrderEnteralFormulaAdministration>? administration,
    String? administrationInstruction,
    String? baseFormulaProductName,
    CodeableConcept? baseFormulaType,
    Quantity? caloricDensity,
    List<Extension>? fhirExtension,
    String? id,
    Quantity? maxVolumeToDeliver,
    List<Extension>? modifierExtension,
    CodeableConcept? routeofAdministration,
  }) {
    return NutritionOrderEnteralFormula(
      additiveProductName: additiveProductName ?? this.additiveProductName,
      additiveType: additiveType ?? this.additiveType,
      administration: administration ?? this.administration,
      administrationInstruction:
          administrationInstruction ?? this.administrationInstruction,
      baseFormulaProductName:
          baseFormulaProductName ?? this.baseFormulaProductName,
      baseFormulaType: baseFormulaType ?? this.baseFormulaType,
      caloricDensity: caloricDensity ?? this.caloricDensity,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      maxVolumeToDeliver: maxVolumeToDeliver ?? this.maxVolumeToDeliver,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      routeofAdministration:
          routeofAdministration ?? this.routeofAdministration,
    );
  }
}
