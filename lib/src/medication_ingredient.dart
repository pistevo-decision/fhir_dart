part of '../fhir_dart.dart';

/// Active or inactive ingredient
/// Identifies a particular constituent of interest in the product.
/// The ingredients need not be a complete list.  If an ingredient is not specified, this does not indicate whether an ingredient is present or absent.  If an ingredient is specified it does not mean that all ingredients are specified.  It is possible to specify both inactive and active ingredients.
class MedicationIngredient extends BackboneElement implements FhirResource {
  /// Active ingredient indicator
  /// Indication of whether this ingredient affects the therapeutic action of the drug.
  final bool? isActive;

  /// The actual ingredient or content
  /// The actual ingredient - either a substance (simple ingredient) or another medication of a medication.
  final CodeableConcept? itemCodeableConcept;

  /// The actual ingredient or content
  /// The actual ingredient - either a substance (simple ingredient) or another medication of a medication.
  final Reference? itemReference;

  /// Quantity of ingredient present
  /// Specifies how many (or how much) of the items there are in this Medication.  For example, 250 mg per tablet.  This is expressed as a ratio where the numerator is 250mg and the denominator is 1 tablet.
  final Ratio? strength;
  MedicationIngredient({
    super.fhirExtension,
    super.id,
    this.isActive,
    this.itemCodeableConcept,
    this.itemReference,
    super.modifierExtension,
    this.strength,
  });

  @override
  factory MedicationIngredient.fromJson(Map<String, dynamic> json) {
    return MedicationIngredient(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      isActive: json['isActive'] as bool?,
      itemCodeableConcept: json['itemCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['itemCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      itemReference: json['itemReference'] != null
          ? Reference.fromJson(
              (json['itemReference'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      strength: json['strength'] != null
          ? Ratio.fromJson((json['strength'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'isActive': isActive,
        'itemCodeableConcept': itemCodeableConcept?.toJson(),
        'itemReference': itemReference?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'strength': strength?.toJson(),
      };

  @override
  MedicationIngredient copyWith({
    List<Extension>? fhirExtension,
    String? id,
    bool? isActive,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    List<Extension>? modifierExtension,
    Ratio? strength,
  }) {
    return MedicationIngredient(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      isActive: isActive ?? this.isActive,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      strength: strength ?? this.strength,
    );
  }
}
