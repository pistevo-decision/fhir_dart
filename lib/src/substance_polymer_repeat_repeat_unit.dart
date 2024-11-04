part of '../fhir_dart.dart';

 /// Todo.
class SubstancePolymerRepeatRepeatUnit extends BackboneElement implements FhirResource {
   /// Todo.
  final SubstanceAmount? amount;
   /// Todo.
  final List<SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation>? degreeOfPolymerisation;
   /// Todo.
  final CodeableConcept? orientationOfPolymerisation;
   /// Todo.
  final String? repeatUnit;
   /// Todo.
  final List<SubstancePolymerRepeatRepeatUnitStructuralRepresentation>? structuralRepresentation;
  SubstancePolymerRepeatRepeatUnit({
    this.amount,
    this.degreeOfPolymerisation,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.orientationOfPolymerisation,
    this.repeatUnit,
    this.structuralRepresentation,
  });
  
  @override
  factory SubstancePolymerRepeatRepeatUnit.fromJson(Map<String, dynamic> json) {
    return SubstancePolymerRepeatRepeatUnit(
      amount: json['amount'] != null ? SubstanceAmount.fromJson(json['amount'] as Map<String, dynamic>) : null,
      degreeOfPolymerisation: (json['degreeOfPolymerisation'] as List<dynamic>?)?.map((e) => SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      orientationOfPolymerisation: json['orientationOfPolymerisation'] != null ? CodeableConcept.fromJson(json['orientationOfPolymerisation'] as Map<String, dynamic>) : null,
      repeatUnit: json['repeatUnit'] as String?,
      structuralRepresentation: (json['structuralRepresentation'] as List<dynamic>?)?.map((e) => SubstancePolymerRepeatRepeatUnitStructuralRepresentation.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'amount': amount?.toJson(),
      'degreeOfPolymerisation': degreeOfPolymerisation?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'orientationOfPolymerisation': orientationOfPolymerisation?.toJson(),
      'repeatUnit': repeatUnit,
      'structuralRepresentation': structuralRepresentation?.map((e) => e.toJson()).toList(),
    };
  
  @override
  SubstancePolymerRepeatRepeatUnit copyWith({
    SubstanceAmount? amount,
    List<SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation>? degreeOfPolymerisation,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? orientationOfPolymerisation,
    String? repeatUnit,
    List<SubstancePolymerRepeatRepeatUnitStructuralRepresentation>? structuralRepresentation,
  }) {
    return SubstancePolymerRepeatRepeatUnit(
      amount: amount ?? this.amount,
      degreeOfPolymerisation: degreeOfPolymerisation ?? this.degreeOfPolymerisation,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      orientationOfPolymerisation: orientationOfPolymerisation ?? this.orientationOfPolymerisation,
      repeatUnit: repeatUnit ?? this.repeatUnit,
      structuralRepresentation: structuralRepresentation ?? this.structuralRepresentation,
    );
  }
}
