part of '../fhir_dart.dart';

 /// A specified substance that comprises this ingredient.
class MedicinalProductIngredientSpecifiedSubstance extends BackboneElement implements FhirResource {
   /// The specified substance.
  final CodeableConcept code;
   /// Confidentiality level of the specified substance as the ingredient.
  final CodeableConcept? confidentiality;
   /// The group of specified substance, e.g. group 1 to 4.
  final CodeableConcept group;
   /// Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product.
  final List<MedicinalProductIngredientSpecifiedSubstanceStrength>? strength;
  MedicinalProductIngredientSpecifiedSubstance({
    required this.code,
    this.confidentiality,
    super.fhirExtension,
    required this.group,
    super.id,
    super.modifierExtension,
    this.strength,
  });
  
  @override
  factory MedicinalProductIngredientSpecifiedSubstance.fromJson(Map<String, dynamic> json) {
    return MedicinalProductIngredientSpecifiedSubstance(
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      confidentiality: json['confidentiality'] != null ? CodeableConcept.fromJson(json['confidentiality'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      group: CodeableConcept.fromJson(json['group'] as Map<String, dynamic>),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      strength: (json['strength'] as List<dynamic>?)?.map((e) => MedicinalProductIngredientSpecifiedSubstanceStrength.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code.toJson(),
      'confidentiality': confidentiality?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'group': group.toJson(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'strength': strength?.map((e) => e.toJson()).toList(),
    };
  
  @override
  MedicinalProductIngredientSpecifiedSubstance copyWith({
    CodeableConcept? code,
    CodeableConcept? confidentiality,
    List<Extension>? fhirExtension,
    CodeableConcept? group,
    String? id,
    List<Extension>? modifierExtension,
    List<MedicinalProductIngredientSpecifiedSubstanceStrength>? strength,
  }) {
    return MedicinalProductIngredientSpecifiedSubstance(
      code: code ?? this.code,
      confidentiality: confidentiality ?? this.confidentiality,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      group: group ?? this.group,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      strength: strength ?? this.strength,
    );
  }
}
