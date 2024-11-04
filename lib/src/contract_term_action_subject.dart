part of '../fhir_dart.dart';

 /// Entity of the action.
class ContractTermActionSubject extends BackboneElement implements FhirResource {
   /// Entity of the action
   /// The entity the action is performed or not performed on or for.
  final List<Reference> reference;
   /// Role type of the agent
   /// Role type of agent assigned roles in this Contract.
  final CodeableConcept? role;
  ContractTermActionSubject({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.reference,
    this.role,
  });
  
  @override
  factory ContractTermActionSubject.fromJson(Map<String, dynamic> json) {
    return ContractTermActionSubject(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      reference: (json['reference'] as List<dynamic>).map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      role: json['role'] != null ? CodeableConcept.fromJson(json['role'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'reference': reference.map((e) => e.toJson()).toList(),
      'role': role?.toJson(),
    };
  
  @override
  ContractTermActionSubject copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<Reference>? reference,
    CodeableConcept? role,
  }) {
    return ContractTermActionSubject(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      role: role ?? this.role,
    );
  }
}
