part of '../fhir_dart.dart';

/// An ingredient of a manufactured item or pharmaceutical product.
class MedicinalProductIngredient extends DomainResource
    implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'MedicinalProductIngredient';

  /// If the ingredient is a known or suspected allergen.
  final bool? allergenicIndicator;

  /// Identifier for the ingredient
  /// The identifier(s) of this Ingredient that are assigned by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate.
  final Identifier? identifier;

  /// Manufacturer of this Ingredient.
  final List<Reference>? manufacturer;

  /// Ingredient role e.g. Active ingredient, excipient.
  final CodeableConcept role;

  /// A specified substance that comprises this ingredient.
  final List<MedicinalProductIngredientSpecifiedSubstance>? specifiedSubstance;

  /// The ingredient substance.
  final MedicinalProductIngredientSubstance? substance;
  MedicinalProductIngredient({
    this.allergenicIndicator,
    super.contained,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.manufacturer,
    super.meta,
    super.modifierExtension,
    required this.role,
    this.specifiedSubstance,
    this.substance,
    super.text,
  });

  @override
  factory MedicinalProductIngredient.fromJson(Map<String, dynamic> json) {
    return MedicinalProductIngredient(
      allergenicIndicator: json['allergenicIndicator'] as bool?,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              (json['identifier'] as Map).cast<String, dynamic>())
          : null,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      role: CodeableConcept.fromJson(
          (json['role'] as Map).cast<String, dynamic>()),
      specifiedSubstance: (json['specifiedSubstance'] as List<dynamic>?)
          ?.map((e) => MedicinalProductIngredientSpecifiedSubstance.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      substance: json['substance'] != null
          ? MedicinalProductIngredientSubstance.fromJson(
              (json['substance'] as Map).cast<String, dynamic>())
          : null,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'allergenicIndicator': allergenicIndicator,
        'contained': contained?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.toJson(),
        'implicitRules': implicitRules,
        'language': language,
        'manufacturer': manufacturer?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'role': role.toJson(),
        'specifiedSubstance':
            specifiedSubstance?.map((e) => e.toJson()).toList(),
        'substance': substance?.toJson(),
        'text': text?.toJson(),
      };

  @override
  MedicinalProductIngredient copyWith({
    bool? allergenicIndicator,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    String? implicitRules,
    String? language,
    List<Reference>? manufacturer,
    Meta? meta,
    List<Extension>? modifierExtension,
    CodeableConcept? role,
    List<MedicinalProductIngredientSpecifiedSubstance>? specifiedSubstance,
    MedicinalProductIngredientSubstance? substance,
    Narrative? text,
  }) {
    return MedicinalProductIngredient(
      allergenicIndicator: allergenicIndicator ?? this.allergenicIndicator,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      manufacturer: manufacturer ?? this.manufacturer,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      specifiedSubstance: specifiedSubstance ?? this.specifiedSubstance,
      substance: substance ?? this.substance,
      text: text ?? this.text,
    );
  }
}
