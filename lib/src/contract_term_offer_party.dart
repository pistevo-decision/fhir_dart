part of '../fhir_dart.dart';

 /// Offer Recipient.
class ContractTermOfferParty extends BackboneElement implements FhirResource {
   /// Referenced entity
   /// Participant in the offer.
  final List<Reference> reference;
   /// Participant engagement type
   /// How the party participates in the offer.
  final CodeableConcept role;
  ContractTermOfferParty({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.reference,
    required this.role,
  });
  
  @override
  factory ContractTermOfferParty.fromJson(Map<String, dynamic> json) {
    return ContractTermOfferParty(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      reference: (json['reference'] as List<dynamic>).map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      role: CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'reference': reference.map((e) => e.toJson()).toList(),
      'role': role.toJson(),
    };
  
  @override
  ContractTermOfferParty copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<Reference>? reference,
    CodeableConcept? role,
  }) {
    return ContractTermOfferParty(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      role: role ?? this.role,
    );
  }
}
