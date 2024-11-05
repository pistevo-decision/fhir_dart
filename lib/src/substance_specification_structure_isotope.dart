part of '../fhir_dart.dart';

/// Applicable for single substances that contain a radionuclide or a non-natural isotopic ratio.
class SubstanceSpecificationStructureIsotope extends BackboneElement
    implements FhirResource {
  /// Half life - for a non-natural nuclide.
  final Quantity? halfLife;

  /// Substance identifier for each non-natural or radioisotope.
  final Identifier? identifier;

  /// The molecular weight or weight range (for proteins, polymers or nucleic acids).
  final SubstanceSpecificationStructureIsotopeMolecularWeight? molecularWeight;

  /// Substance name for each non-natural or radioisotope.
  final CodeableConcept? name;

  /// The type of isotopic substitution present in a single substance.
  final CodeableConcept? substitution;
  SubstanceSpecificationStructureIsotope({
    super.fhirExtension,
    this.halfLife,
    super.id,
    this.identifier,
    super.modifierExtension,
    this.molecularWeight,
    this.name,
    this.substitution,
  });

  @override
  factory SubstanceSpecificationStructureIsotope.fromJson(
      Map<String, dynamic> json) {
    return SubstanceSpecificationStructureIsotope(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      halfLife: json['halfLife'] != null
          ? Quantity.fromJson((json['halfLife'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              (json['identifier'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      molecularWeight: json['molecularWeight'] != null
          ? SubstanceSpecificationStructureIsotopeMolecularWeight.fromJson(
              (json['molecularWeight'] as Map).cast<String, dynamic>())
          : null,
      name: json['name'] != null
          ? CodeableConcept.fromJson(
              (json['name'] as Map).cast<String, dynamic>())
          : null,
      substitution: json['substitution'] != null
          ? CodeableConcept.fromJson(
              (json['substitution'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'halfLife': halfLife?.toJson(),
        'id': id,
        'identifier': identifier?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'molecularWeight': molecularWeight?.toJson(),
        'name': name?.toJson(),
        'substitution': substitution?.toJson(),
      };

  @override
  SubstanceSpecificationStructureIsotope copyWith({
    List<Extension>? fhirExtension,
    Quantity? halfLife,
    String? id,
    Identifier? identifier,
    List<Extension>? modifierExtension,
    SubstanceSpecificationStructureIsotopeMolecularWeight? molecularWeight,
    CodeableConcept? name,
    CodeableConcept? substitution,
  }) {
    return SubstanceSpecificationStructureIsotope(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      halfLife: halfLife ?? this.halfLife,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      molecularWeight: molecularWeight ?? this.molecularWeight,
      name: name ?? this.name,
      substitution: substitution ?? this.substitution,
    );
  }
}
