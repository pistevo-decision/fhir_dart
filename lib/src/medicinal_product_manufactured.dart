part of '../fhir_dart.dart';

/// The manufactured item as contained in the packaged medicinal product.
class MedicinalProductManufactured extends DomainResource
    implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'MedicinalProductManufactured';

  /// Ingredient.
  final List<Reference>? ingredient;

  /// Dose form as manufactured and before any transformation into the pharmaceutical product.
  final CodeableConcept manufacturedDoseForm;

  /// Manufacturer of the item (Note that this should be named "manufacturer" but it currently causes technical issues).
  final List<Reference>? manufacturer;

  /// Other codeable characteristics.
  final List<CodeableConcept>? otherCharacteristics;

  /// Dimensions, color etc.
  final ProdCharacteristic? physicalCharacteristics;

  /// The quantity or "count number" of the manufactured item.
  final Quantity quantity;

  /// The “real world” units in which the quantity of the manufactured item is described.
  final CodeableConcept? unitOfPresentation;
  MedicinalProductManufactured({
    super.contained,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    this.ingredient,
    super.language,
    required this.manufacturedDoseForm,
    this.manufacturer,
    super.meta,
    super.modifierExtension,
    this.otherCharacteristics,
    this.physicalCharacteristics,
    required this.quantity,
    super.text,
    this.unitOfPresentation,
  });

  @override
  factory MedicinalProductManufactured.fromJson(Map<String, dynamic> json) {
    return MedicinalProductManufactured(
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      language: json['language'] as String?,
      manufacturedDoseForm: CodeableConcept.fromJson(
          json['manufacturedDoseForm'] as Map<String, dynamic>),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      otherCharacteristics: (json['otherCharacteristics'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      physicalCharacteristics: json['physicalCharacteristics'] != null
          ? ProdCharacteristic.fromJson(
              json['physicalCharacteristics'] as Map<String, dynamic>)
          : null,
      quantity: Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      unitOfPresentation: json['unitOfPresentation'] != null
          ? CodeableConcept.fromJson(
              json['unitOfPresentation'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'contained': contained?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'implicitRules': implicitRules,
        'ingredient': ingredient?.map((e) => e.toJson()).toList(),
        'language': language,
        'manufacturedDoseForm': manufacturedDoseForm.toJson(),
        'manufacturer': manufacturer?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'otherCharacteristics':
            otherCharacteristics?.map((e) => e.toJson()).toList(),
        'physicalCharacteristics': physicalCharacteristics?.toJson(),
        'quantity': quantity.toJson(),
        'text': text?.toJson(),
        'unitOfPresentation': unitOfPresentation?.toJson(),
      };

  @override
  MedicinalProductManufactured copyWith({
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    List<Reference>? ingredient,
    String? language,
    CodeableConcept? manufacturedDoseForm,
    List<Reference>? manufacturer,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<CodeableConcept>? otherCharacteristics,
    ProdCharacteristic? physicalCharacteristics,
    Quantity? quantity,
    Narrative? text,
    CodeableConcept? unitOfPresentation,
  }) {
    return MedicinalProductManufactured(
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      ingredient: ingredient ?? this.ingredient,
      language: language ?? this.language,
      manufacturedDoseForm: manufacturedDoseForm ?? this.manufacturedDoseForm,
      manufacturer: manufacturer ?? this.manufacturer,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      otherCharacteristics: otherCharacteristics ?? this.otherCharacteristics,
      physicalCharacteristics:
          physicalCharacteristics ?? this.physicalCharacteristics,
      quantity: quantity ?? this.quantity,
      text: text ?? this.text,
      unitOfPresentation: unitOfPresentation ?? this.unitOfPresentation,
    );
  }
}
