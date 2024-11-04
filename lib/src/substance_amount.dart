part of '../fhir_dart.dart';

 /// Base StructureDefinition for SubstanceAmount Type: Chemical substances are a single substance type whose primary defining element is the molecular structure. Chemical substances shall be defined on the basis of their complete covalent molecular structure; the presence of a salt (counter-ion) and/or solvates (water, alcohols) is also captured. Purity, grade, physical form or particle size are not taken into account in the definition of a chemical substance or in the assignment of a Substance ID.
class SubstanceAmount extends BackboneElement implements FhirResource {
   /// Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean would be the average. If only a single definite value for a given element is given, it would be captured in this field.
  final Quantity? amountQuantity;
   /// Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean would be the average. If only a single definite value for a given element is given, it would be captured in this field.
  final Range? amountRange;
   /// Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean would be the average. If only a single definite value for a given element is given, it would be captured in this field.
  final String? amountString;
   /// A textual comment on a numeric value.
  final String? amountText;
   /// Most elements that require a quantitative value will also have a field called amount type. Amount type should always be specified because the actual value of the amount is often dependent on it. EXAMPLE: In capturing the actual relative amounts of substances or molecular fragments it is essential to indicate whether the amount refers to a mole ratio or weight ratio. For any given element an effort should be made to use same the amount type for all related definitional elements.
  final CodeableConcept? amountType;
   /// Reference range of possible or expected values.
  final SubstanceAmountReferenceRange? referenceRange;
  SubstanceAmount({
    this.amountQuantity,
    this.amountRange,
    this.amountString,
    this.amountText,
    this.amountType,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.referenceRange,
  });
  
  @override
  factory SubstanceAmount.fromJson(Map<String, dynamic> json) {
    return SubstanceAmount(
      amountQuantity: json['amountQuantity'] != null ? Quantity.fromJson(json['amountQuantity'] as Map<String, dynamic>) : null,
      amountRange: json['amountRange'] != null ? Range.fromJson(json['amountRange'] as Map<String, dynamic>) : null,
      amountString: json['amountString'] as String?,
      amountText: json['amountText'] as String?,
      amountType: json['amountType'] != null ? CodeableConcept.fromJson(json['amountType'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      referenceRange: json['referenceRange'] != null ? SubstanceAmountReferenceRange.fromJson(json['referenceRange'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'amountQuantity': amountQuantity?.toJson(),
      'amountRange': amountRange?.toJson(),
      'amountString': amountString,
      'amountText': amountText,
      'amountType': amountType?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'referenceRange': referenceRange?.toJson(),
    };
  
  @override
  SubstanceAmount copyWith({
    Quantity? amountQuantity,
    Range? amountRange,
    String? amountString,
    String? amountText,
    CodeableConcept? amountType,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    SubstanceAmountReferenceRange? referenceRange,
  }) {
    return SubstanceAmount(
      amountQuantity: amountQuantity ?? this.amountQuantity,
      amountRange: amountRange ?? this.amountRange,
      amountString: amountString ?? this.amountString,
      amountText: amountText ?? this.amountText,
      amountType: amountType ?? this.amountType,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      referenceRange: referenceRange ?? this.referenceRange,
    );
  }
}
