part of '../fhir_dart.dart';

 /// Care Team members
 /// The members of the team who provided the products and services.
class ExplanationOfBenefitCareTeam extends BackboneElement implements FhirResource {
   /// Practitioner or organization
   /// Member of the team who provided the product or service.
  final Reference provider;
   /// Practitioner credential or specialization
   /// The qualification of the practitioner which is applicable for this service.
  final CodeableConcept? qualification;
   /// Indicator of the lead practitioner
   /// The party who is billing and/or responsible for the claimed products or services.
   /// Responsible might not be required when there is only a single provider listed.
  final bool? responsible;
   /// Function within the team
   /// The lead, assisting or supervising practitioner and their discipline if a multidisciplinary team.
   /// Role might not be required when there is only a single provider listed.
  final CodeableConcept? role;
   /// Order of care team
   /// A number to uniquely identify care team entries.
  final int sequence;
  ExplanationOfBenefitCareTeam({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.provider,
    this.qualification,
    this.responsible,
    this.role,
    required this.sequence,
  });
  
  @override
  factory ExplanationOfBenefitCareTeam.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitCareTeam(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      provider: Reference.fromJson(json['provider'] as Map<String, dynamic>),
      qualification: json['qualification'] != null ? CodeableConcept.fromJson(json['qualification'] as Map<String, dynamic>) : null,
      responsible: json['responsible'] as bool?,
      role: json['role'] != null ? CodeableConcept.fromJson(json['role'] as Map<String, dynamic>) : null,
      sequence: json['sequence'] as int,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'provider': provider.toJson(),
      'qualification': qualification?.toJson(),
      'responsible': responsible,
      'role': role?.toJson(),
      'sequence': sequence,
    };
  
  @override
  ExplanationOfBenefitCareTeam copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? provider,
    CodeableConcept? qualification,
    bool? responsible,
    CodeableConcept? role,
    int? sequence,
  }) {
    return ExplanationOfBenefitCareTeam(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      provider: provider ?? this.provider,
      qualification: qualification ?? this.qualification,
      responsible: responsible ?? this.responsible,
      role: role ?? this.role,
      sequence: sequence ?? this.sequence,
    );
  }
}
