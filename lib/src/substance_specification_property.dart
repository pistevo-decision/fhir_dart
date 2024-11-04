part of '../fhir_dart.dart';

 /// General specifications for this substance, including how it is related to other substances.
class SubstanceSpecificationProperty extends BackboneElement implements FhirResource {
   /// Quantitative value for this property.
  final Quantity? amountQuantity;
   /// Quantitative value for this property.
  final String? amountString;
   /// A category for this property, e.g. Physical, Chemical, Enzymatic.
  final CodeableConcept? category;
   /// Property type e.g. viscosity, pH, isoelectric point.
  final CodeableConcept? code;
   /// A substance upon which a defining property depends (e.g. for solubility: in water, in alcohol).
  final CodeableConcept? definingSubstanceCodeableConcept;
   /// A substance upon which a defining property depends (e.g. for solubility: in water, in alcohol).
  final Reference? definingSubstanceReference;
   /// Parameters that were used in the measurement of a property (e.g. for viscosity: measured at 20C with a pH of 7.1).
  final String? parameters;
  SubstanceSpecificationProperty({
    this.amountQuantity,
    this.amountString,
    this.category,
    this.code,
    this.definingSubstanceCodeableConcept,
    this.definingSubstanceReference,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.parameters,
  });
  
  @override
  factory SubstanceSpecificationProperty.fromJson(Map<String, dynamic> json) {
    return SubstanceSpecificationProperty(
      amountQuantity: json['amountQuantity'] != null ? Quantity.fromJson(json['amountQuantity'] as Map<String, dynamic>) : null,
      amountString: json['amountString'] as String?,
      category: json['category'] != null ? CodeableConcept.fromJson(json['category'] as Map<String, dynamic>) : null,
      code: json['code'] != null ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>) : null,
      definingSubstanceCodeableConcept: json['definingSubstanceCodeableConcept'] != null ? CodeableConcept.fromJson(json['definingSubstanceCodeableConcept'] as Map<String, dynamic>) : null,
      definingSubstanceReference: json['definingSubstanceReference'] != null ? Reference.fromJson(json['definingSubstanceReference'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      parameters: json['parameters'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'amountQuantity': amountQuantity?.toJson(),
      'amountString': amountString,
      'category': category?.toJson(),
      'code': code?.toJson(),
      'definingSubstanceCodeableConcept': definingSubstanceCodeableConcept?.toJson(),
      'definingSubstanceReference': definingSubstanceReference?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'parameters': parameters,
    };
  
  @override
  SubstanceSpecificationProperty copyWith({
    Quantity? amountQuantity,
    String? amountString,
    CodeableConcept? category,
    CodeableConcept? code,
    CodeableConcept? definingSubstanceCodeableConcept,
    Reference? definingSubstanceReference,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? parameters,
  }) {
    return SubstanceSpecificationProperty(
      amountQuantity: amountQuantity ?? this.amountQuantity,
      amountString: amountString ?? this.amountString,
      category: category ?? this.category,
      code: code ?? this.code,
      definingSubstanceCodeableConcept: definingSubstanceCodeableConcept ?? this.definingSubstanceCodeableConcept,
      definingSubstanceReference: definingSubstanceReference ?? this.definingSubstanceReference,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      parameters: parameters ?? this.parameters,
    );
  }
}
