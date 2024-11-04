part of '../fhir_dart.dart';

 /// Computable Contract Language
 /// List of Computable Policy Rule Language Representations of this Contract.
class ContractRule extends BackboneElement implements FhirResource {
   /// Computable Contract Rules
   /// Computable Contract conveyed using a policy rule language (e.g. XACML, DKAL, SecPal).
  final Attachment? contentAttachment;
   /// Computable Contract Rules
   /// Computable Contract conveyed using a policy rule language (e.g. XACML, DKAL, SecPal).
  final Reference? contentReference;
  ContractRule({
    this.contentAttachment,
    this.contentReference,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });
  
  @override
  factory ContractRule.fromJson(Map<String, dynamic> json) {
    return ContractRule(
      contentAttachment: json['contentAttachment'] != null ? Attachment.fromJson(json['contentAttachment'] as Map<String, dynamic>) : null,
      contentReference: json['contentReference'] != null ? Reference.fromJson(json['contentReference'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'contentAttachment': contentAttachment?.toJson(),
      'contentReference': contentReference?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  ContractRule copyWith({
    Attachment? contentAttachment,
    Reference? contentReference,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return ContractRule(
      contentAttachment: contentAttachment ?? this.contentAttachment,
      contentReference: contentReference ?? this.contentReference,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
