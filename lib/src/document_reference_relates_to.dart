part of '../fhir_dart.dart';

 /// Relationships to other documents
 /// Relationships that this document has with other document references that already exist.
 /// This element is labeled as a modifier because documents that append to other documents are incomplete on their own.
class DocumentReferenceRelatesTo extends BackboneElement implements FhirResource {
   /// The type of relationship that this document has with anther document.
   /// If this document appends another document, then the document cannot be fully understood without also accessing the referenced document.
  final String code; // Possible values: 'replaces', 'transforms', 'signs', 'appends'
   /// Target of the relationship
   /// The target document of this relationship.
  final Reference target;
  DocumentReferenceRelatesTo({
    required this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.target,
  });
  
  @override
  factory DocumentReferenceRelatesTo.fromJson(Map<String, dynamic> json) {
    return DocumentReferenceRelatesTo(
      code: json['code'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      target: Reference.fromJson(json['target'] as Map<String, dynamic>),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'target': target.toJson(),
    };
  
  @override
  DocumentReferenceRelatesTo copyWith({
    String? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? target,
  }) {
    return DocumentReferenceRelatesTo(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      target: target ?? this.target,
    );
  }
}
