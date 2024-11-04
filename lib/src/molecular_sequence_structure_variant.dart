part of '../fhir_dart.dart';

 /// Structural variant
 /// Information about chromosome structure variation.
class MolecularSequenceStructureVariant extends BackboneElement implements FhirResource {
   /// Does the structural variant have base pair resolution breakpoints?
   /// Used to indicate if the outer and inner start-end values have the same meaning.
  final bool? exact;
   /// Structural variant inner.
  final MolecularSequenceStructureVariantInner? inner;
   /// Structural variant length
   /// Length of the variant chromosome.
  final int? length;
   /// Structural variant outer.
  final MolecularSequenceStructureVariantOuter? outer;
   /// Structural variant change type
   /// Information about chromosome structure variation DNA change type.
  final CodeableConcept? variantType;
  MolecularSequenceStructureVariant({
    this.exact,
    super.fhirExtension,
    super.id,
    this.inner,
    this.length,
    super.modifierExtension,
    this.outer,
    this.variantType,
  });
  
  @override
  factory MolecularSequenceStructureVariant.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceStructureVariant(
      exact: json['exact'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      inner: json['inner'] != null ? MolecularSequenceStructureVariantInner.fromJson(json['inner'] as Map<String, dynamic>) : null,
      length: json['length'] as int?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      outer: json['outer'] != null ? MolecularSequenceStructureVariantOuter.fromJson(json['outer'] as Map<String, dynamic>) : null,
      variantType: json['variantType'] != null ? CodeableConcept.fromJson(json['variantType'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'exact': exact,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'inner': inner?.toJson(),
      'length': length,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'outer': outer?.toJson(),
      'variantType': variantType?.toJson(),
    };
  
  @override
  MolecularSequenceStructureVariant copyWith({
    bool? exact,
    List<Extension>? fhirExtension,
    String? id,
    MolecularSequenceStructureVariantInner? inner,
    int? length,
    List<Extension>? modifierExtension,
    MolecularSequenceStructureVariantOuter? outer,
    CodeableConcept? variantType,
  }) {
    return MolecularSequenceStructureVariant(
      exact: exact ?? this.exact,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      inner: inner ?? this.inner,
      length: length ?? this.length,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      outer: outer ?? this.outer,
      variantType: variantType ?? this.variantType,
    );
  }
}
