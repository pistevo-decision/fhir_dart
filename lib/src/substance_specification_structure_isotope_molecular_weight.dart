part of '../fhir_dart.dart';

 /// The molecular weight or weight range (for proteins, polymers or nucleic acids).
class SubstanceSpecificationStructureIsotopeMolecularWeight extends BackboneElement implements FhirResource {
   /// Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean would be the average. If only a single definite value for a given element is given, it would be captured in this field.
  final Quantity? amount;
   /// The method by which the molecular weight was determined.
  final CodeableConcept? method;
   /// Type of molecular weight such as exact, average (also known as. number average), weight average.
  final CodeableConcept? type;
  SubstanceSpecificationStructureIsotopeMolecularWeight({
    this.amount,
    super.fhirExtension,
    super.id,
    this.method,
    super.modifierExtension,
    this.type,
  });
  
  @override
  factory SubstanceSpecificationStructureIsotopeMolecularWeight.fromJson(Map<String, dynamic> json) {
    return SubstanceSpecificationStructureIsotopeMolecularWeight(
      amount: json['amount'] != null ? Quantity.fromJson(json['amount'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      method: json['method'] != null ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      type: json['type'] != null ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'amount': amount?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'method': method?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'type': type?.toJson(),
    };
  
  @override
  SubstanceSpecificationStructureIsotopeMolecularWeight copyWith({
    Quantity? amount,
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? method,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
  }) {
    return SubstanceSpecificationStructureIsotopeMolecularWeight(
      amount: amount ?? this.amount,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      method: method ?? this.method,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
    );
  }
}
