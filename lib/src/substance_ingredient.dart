part of '../fhir_dart.dart';

/// Composition information about the substance
/// A substance can be composed of other substances.
class SubstanceIngredient extends BackboneElement implements FhirResource {
  /// Optional amount (concentration)
  /// The amount of the ingredient in the substance - a concentration ratio.
  final Ratio? quantity;

  /// A component of the substance
  /// Another substance that is a component of this substance.
  final CodeableConcept? substanceCodeableConcept;

  /// A component of the substance
  /// Another substance that is a component of this substance.
  final Reference? substanceReference;
  SubstanceIngredient({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.quantity,
    this.substanceCodeableConcept,
    this.substanceReference,
  });

  @override
  factory SubstanceIngredient.fromJson(Map<String, dynamic> json) {
    return SubstanceIngredient(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] != null
          ? Ratio.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      substanceCodeableConcept: json['substanceCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['substanceCodeableConcept'] as Map<String, dynamic>)
          : null,
      substanceReference: json['substanceReference'] != null
          ? Reference.fromJson(
              json['substanceReference'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'quantity': quantity?.toJson(),
        'substanceCodeableConcept': substanceCodeableConcept?.toJson(),
        'substanceReference': substanceReference?.toJson(),
      };

  @override
  SubstanceIngredient copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Ratio? quantity,
    CodeableConcept? substanceCodeableConcept,
    Reference? substanceReference,
  }) {
    return SubstanceIngredient(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      substanceCodeableConcept:
          substanceCodeableConcept ?? this.substanceCodeableConcept,
      substanceReference: substanceReference ?? this.substanceReference,
    );
  }
}
