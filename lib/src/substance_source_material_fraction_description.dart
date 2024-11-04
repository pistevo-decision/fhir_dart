part of '../fhir_dart.dart';

/// Many complex materials are fractions of parts of plants, animals, or minerals. Fraction elements are often necessary to define both Substances and Specified Group 1 Substances. For substances derived from Plants, fraction information will be captured at the Substance information level ( . Oils, Juices and Exudates). Additional information for Extracts, such as extraction solvent composition, will be captured at the Specified Substance Group 1 information level. For plasma-derived products fraction information will be captured at the Substance and the Specified Substance Group 1 levels.
class SubstanceSourceMaterialFractionDescription extends BackboneElement
    implements FhirResource {
  /// This element is capturing information about the fraction of a plant part, or human plasma for fractionation.
  final String? fraction;

  /// The specific type of the material constituting the component. For Herbal preparations the particulars of the extracts (liquid/dry) is described in Specified Substance Group 1.
  final CodeableConcept? materialType;
  SubstanceSourceMaterialFractionDescription({
    super.fhirExtension,
    this.fraction,
    super.id,
    this.materialType,
    super.modifierExtension,
  });

  @override
  factory SubstanceSourceMaterialFractionDescription.fromJson(
      Map<String, dynamic> json) {
    return SubstanceSourceMaterialFractionDescription(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      fraction: json['fraction'] as String?,
      id: json['id'] as String?,
      materialType: json['materialType'] != null
          ? CodeableConcept.fromJson(
              json['materialType'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'fraction': fraction,
        'id': id,
        'materialType': materialType?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  SubstanceSourceMaterialFractionDescription copyWith({
    List<Extension>? fhirExtension,
    String? fraction,
    String? id,
    CodeableConcept? materialType,
    List<Extension>? modifierExtension,
  }) {
    return SubstanceSourceMaterialFractionDescription(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      fraction: fraction ?? this.fraction,
      id: id ?? this.id,
      materialType: materialType ?? this.materialType,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
