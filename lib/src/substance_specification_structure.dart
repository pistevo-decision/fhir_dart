part of '../fhir_dart.dart';

/// Structural information.
class SubstanceSpecificationStructure extends BackboneElement
    implements FhirResource {
  /// Applicable for single substances that contain a radionuclide or a non-natural isotopic ratio.
  final List<SubstanceSpecificationStructureIsotope>? isotope;

  /// Molecular formula.
  final String? molecularFormula;

  /// Specified per moiety according to the Hill system, i.e. first C, then H, then alphabetical, each moiety separated by a dot.
  final String? molecularFormulaByMoiety;

  /// The molecular weight or weight range (for proteins, polymers or nucleic acids).
  final SubstanceSpecificationStructureIsotopeMolecularWeight? molecularWeight;

  /// Optical activity type.
  final CodeableConcept? opticalActivity;

  /// Molecular structural representation.
  final List<SubstanceSpecificationStructureRepresentation>? representation;

  /// Supporting literature.
  final List<Reference>? source;

  /// Stereochemistry type.
  final CodeableConcept? stereochemistry;
  SubstanceSpecificationStructure({
    super.fhirExtension,
    super.id,
    this.isotope,
    super.modifierExtension,
    this.molecularFormula,
    this.molecularFormulaByMoiety,
    this.molecularWeight,
    this.opticalActivity,
    this.representation,
    this.source,
    this.stereochemistry,
  });

  @override
  factory SubstanceSpecificationStructure.fromJson(Map<String, dynamic> json) {
    return SubstanceSpecificationStructure(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      isotope: (json['isotope'] as List<dynamic>?)
          ?.map((e) => SubstanceSpecificationStructureIsotope.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      molecularFormula: json['molecularFormula'] as String?,
      molecularFormulaByMoiety: json['molecularFormulaByMoiety'] as String?,
      molecularWeight: json['molecularWeight'] != null
          ? SubstanceSpecificationStructureIsotopeMolecularWeight.fromJson(
              json['molecularWeight'] as Map<String, dynamic>)
          : null,
      opticalActivity: json['opticalActivity'] != null
          ? CodeableConcept.fromJson(
              json['opticalActivity'] as Map<String, dynamic>)
          : null,
      representation: (json['representation'] as List<dynamic>?)
          ?.map((e) => SubstanceSpecificationStructureRepresentation.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      stereochemistry: json['stereochemistry'] != null
          ? CodeableConcept.fromJson(
              json['stereochemistry'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'isotope': isotope?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'molecularFormula': molecularFormula,
        'molecularFormulaByMoiety': molecularFormulaByMoiety,
        'molecularWeight': molecularWeight?.toJson(),
        'opticalActivity': opticalActivity?.toJson(),
        'representation': representation?.map((e) => e.toJson()).toList(),
        'source': source?.map((e) => e.toJson()).toList(),
        'stereochemistry': stereochemistry?.toJson(),
      };

  @override
  SubstanceSpecificationStructure copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<SubstanceSpecificationStructureIsotope>? isotope,
    List<Extension>? modifierExtension,
    String? molecularFormula,
    String? molecularFormulaByMoiety,
    SubstanceSpecificationStructureIsotopeMolecularWeight? molecularWeight,
    CodeableConcept? opticalActivity,
    List<SubstanceSpecificationStructureRepresentation>? representation,
    List<Reference>? source,
    CodeableConcept? stereochemistry,
  }) {
    return SubstanceSpecificationStructure(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      isotope: isotope ?? this.isotope,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      molecularFormula: molecularFormula ?? this.molecularFormula,
      molecularFormulaByMoiety:
          molecularFormulaByMoiety ?? this.molecularFormulaByMoiety,
      molecularWeight: molecularWeight ?? this.molecularWeight,
      opticalActivity: opticalActivity ?? this.opticalActivity,
      representation: representation ?? this.representation,
      source: source ?? this.source,
      stereochemistry: stereochemistry ?? this.stereochemistry,
    );
  }
}
