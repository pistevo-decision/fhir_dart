part of '../fhir_dart.dart';

 /// Circumstance of the asset.
class ContractTermAssetContext extends BackboneElement implements FhirResource {
   /// Codeable asset context
   /// Coded representation of the context generally or of the Referenced entity, such as the asset holder type or location.
  final List<CodeableConcept>? code;
   /// Creator,custodian or owner
   /// Asset context reference may include the creator, custodian, or owning Person or Organization (e.g., bank, repository),  location held, e.g., building,  jurisdiction.
  final Reference? reference;
   /// Context description.
  final String? text;
  ContractTermAssetContext({
    this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.reference,
    this.text,
  });
  
  @override
  factory ContractTermAssetContext.fromJson(Map<String, dynamic> json) {
    return ContractTermAssetContext(
      code: (json['code'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      reference: json['reference'] != null ? Reference.fromJson(json['reference'] as Map<String, dynamic>) : null,
      text: json['text'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'reference': reference?.toJson(),
      'text': text,
    };
  
  @override
  ContractTermAssetContext copyWith({
    List<CodeableConcept>? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? reference,
    String? text,
  }) {
    return ContractTermAssetContext(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reference: reference ?? this.reference,
      text: text ?? this.text,
    );
  }
}
