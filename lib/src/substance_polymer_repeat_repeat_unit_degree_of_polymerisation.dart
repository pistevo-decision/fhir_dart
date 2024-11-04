part of '../fhir_dart.dart';

 /// Todo.
class SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation extends BackboneElement implements FhirResource {
   /// Todo.
  final SubstanceAmount? amount;
   /// Todo.
  final CodeableConcept? degree;
  SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation({
    this.amount,
    this.degree,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });
  
  @override
  factory SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation.fromJson(Map<String, dynamic> json) {
    return SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation(
      amount: json['amount'] != null ? SubstanceAmount.fromJson(json['amount'] as Map<String, dynamic>) : null,
      degree: json['degree'] != null ? CodeableConcept.fromJson(json['degree'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'amount': amount?.toJson(),
      'degree': degree?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation copyWith({
    SubstanceAmount? amount,
    CodeableConcept? degree,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return SubstancePolymerRepeatRepeatUnitDegreeOfPolymerisation(
      amount: amount ?? this.amount,
      degree: degree ?? this.degree,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
