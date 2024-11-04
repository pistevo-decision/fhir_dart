﻿part of '../fhir_dart.dart';

 /// Prior or corollary claims
 /// Other claims which are related to this claim such as prior submissions or claims for related services or for the same event.
 /// For example,  for the original treatment and follow-up exams.
class ExplanationOfBenefitRelated extends BackboneElement implements FhirResource {
   /// Reference to the related claim
   /// Reference to a related claim.
  final Reference? claim;
   /// File or case reference
   /// An alternate organizational reference to the case or file to which this particular claim pertains.
   /// For example, Property/Casualty insurer claim number or Workers Compensation case number.
  final Identifier? reference;
   /// How the reference claim is related
   /// A code to convey how the claims are related.
   /// For example, prior claim or umbrella.
  final CodeableConcept? relationship;
  ExplanationOfBenefitRelated({
    this.claim,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.reference,
    this.relationship,
  });
  
  @override
  factory ExplanationOfBenefitRelated.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitRelated(
      claim: json['claim'] != null ? Reference.fromJson(json['claim'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      reference: json['reference'] != null ? Identifier.fromJson(json['reference'] as Map<String, dynamic>) : null,
      relationship: json['relationship'] != null ? CodeableConcept.fromJson(json['relationship'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'claim': claim?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'reference': reference?.toJson(),
      'relationship': relationship?.toJson(),
    };
  
  @override
  ExplanationOfBenefitRelated copyWith({
    Reference? claim,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Identifier? reference,
    CodeableConcept? relationship,
  }) {
    return ExplanationOfBenefitRelated(
      claim: claim ?? this.claim,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      relationship: relationship ?? this.relationship,
    );
  }
}