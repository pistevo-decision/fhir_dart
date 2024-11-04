part of '../fhir_dart.dart';

 /// Active or inactive ingredient
 /// Identifies a particular constituent of interest in the product.
class MedicationKnowledgeIngredient extends BackboneElement implements FhirResource {
   /// Active ingredient indicator
   /// Indication of whether this ingredient affects the therapeutic action of the drug.
  final bool? isActive;
   /// Medication(s) or substance(s) contained in the medication
   /// The actual ingredient - either a substance (simple ingredient) or another medication.
  final CodeableConcept? itemCodeableConcept;
   /// Medication(s) or substance(s) contained in the medication
   /// The actual ingredient - either a substance (simple ingredient) or another medication.
  final Reference? itemReference;
   /// Quantity of ingredient present
   /// Specifies how many (or how much) of the items there are in this Medication.  For example, 250 mg per tablet.  This is expressed as a ratio where the numerator is 250mg and the denominator is 1 tablet.
  final Ratio? strength;
  MedicationKnowledgeIngredient({
    super.fhirExtension,
    super.id,
    this.isActive,
    this.itemCodeableConcept,
    this.itemReference,
    super.modifierExtension,
    this.strength,
  });
  
  @override
  factory MedicationKnowledgeIngredient.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgeIngredient(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      isActive: json['isActive'] as bool?,
      itemCodeableConcept: json['itemCodeableConcept'] != null ? CodeableConcept.fromJson(json['itemCodeableConcept'] as Map<String, dynamic>) : null,
      itemReference: json['itemReference'] != null ? Reference.fromJson(json['itemReference'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      strength: json['strength'] != null ? Ratio.fromJson(json['strength'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'isActive': isActive,
      'itemCodeableConcept': itemCodeableConcept?.toJson(),
      'itemReference': itemReference?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'strength': strength?.toJson(),
    };
  
  @override
  MedicationKnowledgeIngredient copyWith({
    List<Extension>? fhirExtension,
    String? id,
    bool? isActive,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    List<Extension>? modifierExtension,
    Ratio? strength,
  }) {
    return MedicationKnowledgeIngredient(
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
