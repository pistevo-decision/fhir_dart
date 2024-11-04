part of '../fhir_dart.dart';

 /// Contract Friendly Language
 /// The "patient friendly language" versionof the Contract in whole or in parts. "Patient friendly language" means the representation of the Contract and Contract Provisions in a manner that is readily accessible and understandable by a layperson in accordance with best practices for communication styles that ensure that those agreeing to or signing the Contract understand the roles, actions, obligations, responsibilities, and implication of the agreement.
class ContractFriendly extends BackboneElement implements FhirResource {
   /// Easily comprehended representation of this Contract
   /// Human readable rendering of this Contract in a format and representation intended to enhance comprehension and ensure understandability.
  final Attachment? contentAttachment;
   /// Easily comprehended representation of this Contract
   /// Human readable rendering of this Contract in a format and representation intended to enhance comprehension and ensure understandability.
  final Reference? contentReference;
  ContractFriendly({
    this.contentAttachment,
    this.contentReference,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });
  
  @override
  factory ContractFriendly.fromJson(Map<String, dynamic> json) {
    return ContractFriendly(
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
  ContractFriendly copyWith({
    Attachment? contentAttachment,
    Reference? contentReference,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return ContractFriendly(
      contentAttachment: contentAttachment ?? this.contentAttachment,
      contentReference: contentReference ?? this.contentReference,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
