part of '../fhir_dart.dart';

 /// The ingredient substance.
class MedicinalProductIngredientSubstance extends BackboneElement implements FhirResource {
   /// The ingredient substance.
  final CodeableConcept code;
   /// Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product.
  final List<MedicinalProductIngredientSpecifiedSubstanceStrength>? strength;
  MedicinalProductIngredientSubstance({
    required this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.strength,
  });
  
  @override
  factory MedicinalProductIngredientSubstance.fromJson(Map<String, dynamic> json) {
    return MedicinalProductIngredientSubstance(
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      strength: (json['strength'] as List<dynamic>?)?.map((e) => MedicinalProductIngredientSpecifiedSubstanceStrength.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'strength': strength?.map((e) => e.toJson()).toList(),
    };
  
  @override
  MedicinalProductIngredientSubstance copyWith({
    CodeableConcept? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<MedicinalProductIngredientSpecifiedSubstanceStrength>? strength,
  }) {
    return MedicinalProductIngredientSubstance(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      strength: strength ?? this.strength,
    );
  }
}
