part of '../fhir_dart.dart';

 /// Molecular structural representation.
class SubstanceSpecificationStructureRepresentation extends BackboneElement implements FhirResource {
   /// An attached file with the structural representation.
  final Attachment? attachment;
   /// The structural representation as text string in a format e.g. InChI, SMILES, MOLFILE, CDX.
  final String? representation;
   /// The type of structure (e.g. Full, Partial, Representative).
  final CodeableConcept? type;
  SubstanceSpecificationStructureRepresentation({
    this.attachment,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.representation,
    this.type,
  });
  
  @override
  factory SubstanceSpecificationStructureRepresentation.fromJson(Map<String, dynamic> json) {
    return SubstanceSpecificationStructureRepresentation(
      attachment: json['attachment'] != null ? Attachment.fromJson(json['attachment'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      representation: json['representation'] as String?,
      type: json['type'] != null ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'attachment': attachment?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'representation': representation,
      'type': type?.toJson(),
    };
  
  @override
  SubstanceSpecificationStructureRepresentation copyWith({
    Attachment? attachment,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? representation,
    CodeableConcept? type,
  }) {
    return SubstanceSpecificationStructureRepresentation(
      attachment: attachment ?? this.attachment,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      representation: representation ?? this.representation,
      type: type ?? this.type,
    );
  }
}
